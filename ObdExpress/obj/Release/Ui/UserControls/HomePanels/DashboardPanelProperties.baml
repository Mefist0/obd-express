   M S B A M L   `   `   `  ����   
ObdExpressD    >ObdExpress.Ui.UserControls.HomePanels.DashboardPanelProperties   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     X TXceed.Wpf.Toolkit, Version=2.0.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  -     �Name$!  winDashboardPanelProperties�� � Title$  Dashboard Panel Properties��$	��280��$	��500�� � WindowStartupLocation$ CenterOwner=� J� SnapsToDevicePixels .  � 
ResizeMode$ NoResize=� � Icon$3 -/ObdExpress;component/Ui/Images/48x48icon.png������  �� Color# � ��.��]� ��.   � DataContext ��  �� Mode$ OneWay=�	 �� RelativeSource	 �� *FindAncestor+
 �� AncestorType"
 �.+�� -    �Name$ gHeader��$��Stretch=�$��5,5,5,0q�$	��Top=�$
��Auto��$
��Auto��$	��Top=� � ColumnDefinitions �� $��0.08* ��� $��0.92* �.+�]� $��1��$��5,0,0,0q�.+��� -    ��Name$ 	lblPanels��$��Panels��$
��Left=�$��0q�$��Center=�$��50��$��14(�$��0,0,5,0q�$
��Left=�%  Xceed.Wpf.Toolkit.IntegerUpDown  -     Name$ 
iudColumns��$
��Left=�$	��Top=�$��5,0,0,0q�$��60���  �Xceed.Wpf.Toolkit.NumericUpDown`1[[System.Nullable`1[[System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]], mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]   Maximum$ 8X�   Minimum$ 1X��  �Xceed.Wpf.Toolkit.CommonNumericUpDown`1[[System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]   ParsingNumberStyle$ Integer=�$��14(�$��Right=��  �Xceed.Wpf.Toolkit.Primitives.UpDownBase`1[[System.Nullable`1[[System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]], mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]   Value ��  �� Path$ Columns�$ TwoWay=��� -   $ 
lblColumns��$��Columns��$��Right=�$��5,0,0,0q�$��Center=�$��60��$��14(�$��0,0,5,0q�$��Right=�$��Center=�� -   $ gBody��$��Stretch=�$��5,5,5,0q�$	��Top=�$	��167��$
��Auto��$	��Top=� �� $��0.08* ��� $��0.92* �.+�]� $��Stretch=�.+��� -    ��Name$ btnUp��$��37��$	��Top=�$	��Top=�.���� $D��>pack://application:,,,/ObdExpress;component/UI/Images/up64.png��$��Stretch=��� -   $ btnDown��$��37��$��Bottom=�$��Bottom=�.���� $F��@pack://application:,,,/ObdExpress;component/UI/Images/down64.png��$��Stretch=�&   System.Windows.Controls.DataGrid  -	     Name$ dgPanels��$��1��$��Stretch=�$��5,0,0,0q�$	��Top=�$	��167��$
��Auto��   CanUserSortColumns .     CanUserReorderColumns .     CanUserAddRows .     AutoGenerateColumns .     SelectionMode$ Single=�   RowHeaderWidth$ 0Q�   HeadersVisibility$ Column=�"   VerticalScrollBarVisibility$ Visible=����� *PanelPropertyOptions+   Columns 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn   Header$ Position��    Width5  /System.Windows.Controls.DataGridLengthConverter$
  .15* !   
IsReadOnly! . 1	  +System.Windows.Controls.DataGridBoundColumn" 	  Binding" �� $ Position�  $ Measure��$
  .35* ! . " �� $ HandlerWrapper.Name�  $
 Unit��$
  .35* ! . " �� $ HandlerWrapper.Unit�4
  .System.Windows.Controls.DataGridTemplateColumn
  $ Is Shown��$
  .15* # 
  CellTemplate# �� .R��� $ d� 	IsChecked$ �� $ 	IsChecked�$ TwoWay=�% �� UpdateSourceTrigger$% PropertyChanged=�]� $��Bottom=�
�������.+��� -
   $ btnDone��$
��Done��$��60��$��Right=�$��Right=�$��0,5,10,5q��� $��Stretch=�$��1��$��Bottom=����	#FF9D9D9D