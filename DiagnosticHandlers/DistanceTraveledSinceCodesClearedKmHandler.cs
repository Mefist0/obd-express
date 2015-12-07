﻿using ELM327API;
using ELM327API.Processing.DataStructures;
using ELM327API.Processing.Interfaces;
using System;

namespace DiagnosticHandlers
{
    public class DistanceTraveledSinceCodesClearedKmHandler : IHandler
    {
        /// <summary>
        /// Event registered real-time listeners use.
        /// </summary>
        private event Action<ELM327ListenerEventArgs> RegisteredListeners;

        /// <summary>
        /// Event registered single listeners use.
        /// </summary>
        private event Action<ELM327ListenerEventArgs> RegisteredSingleListeners;

        public string Name
        {
            get { return Constants.NAME_DISTANCE_TRAVELED_SINCE_CODES_CLEARED_KM; }
        }

        public string Request
        {
            get { return "0131"; }
        }

        public HandlerCategory Category
        {
            get { return HandlerCategory.TROUBLE_IDENTIFICATION; }
        }

        public bool IsMutable
        {
            get { return Constants.IMMUTABLE; }
        }

        public string Unit
        {
            get { return "km"; }
        }

        public Type DataType
        {
            get { return typeof(UInt32); }
        }

        public bool IsCustomHeader
        {
            get { return Constants.DEFAULT_HEADER; }
        }

        public string Header
        {
            get { throw new NotImplementedException(); }
        }

        public bool IsOBD
        {
            get { return Constants.OBD_REQUEST; }
        }

        public byte OBDSID
        {
            get { return 0x01; }
        }

        public byte OBDPID
        {
            get { return 0x31; }
        }

        public bool ExpectsResponse
        {
            get { return Constants.RESPONSE_EXPECTED; }
        }

        public bool HasRegisteredListeners
        {
            get { return (RegisteredListeners != null); }
        }

        public bool HasRegisteredSingleListeners
        {
            get { return (RegisteredSingleListeners != null); }
        }

        public ProtocolsEnum Compatibility
        {
            get { return ProtocolsEnum.ALL; }
        }

        public void RegisterListener(Action<ELM327API.Processing.DataStructures.ELM327ListenerEventArgs> callback)
        {
            if (callback != null)
            {
                RegisteredListeners += callback;
            }
        }

        public void UnregisterListener(Action<ELM327API.Processing.DataStructures.ELM327ListenerEventArgs> callback)
        {
            if (callback != null && RegisteredListeners != null)
            {
                RegisteredListeners -= callback;
            }

            if (callback != null && RegisteredSingleListeners != null)
            {
                RegisteredSingleListeners -= callback;
            }
        }

        public void RegisterSingleListener(Action<ELM327API.Processing.DataStructures.ELM327ListenerEventArgs> callback)
        {
            if (callback != null)
            {
                RegisteredSingleListeners += callback;
            }
        }

        public void ProcessResponse(byte[] data)
        {
            ELM327ListenerEventArgs arg;
            UInt32 value = (UInt32)((uint)data[0] * 256 + (uint)data[1]);

            arg = new ELM327ListenerEventArgs(this, value);

            if (RegisteredListeners != null)
            {
                RegisteredListeners(arg);
            }

            if (RegisteredSingleListeners != null)
            {
                RegisteredSingleListeners(arg);
                RegisteredSingleListeners = null;
            }
        }
    }
}
