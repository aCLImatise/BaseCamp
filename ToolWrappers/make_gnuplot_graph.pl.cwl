class: CommandLineTool
id: make_gnuplot_graph.pl.cwl
inputs:
- id: in_x_one
  doc: ':       Index of the x column (x-axis). NOTE: 1-based. NOTE: use -x2... to
    specify more indices to plot'
  type: long
  inputBinding:
    prefix: -x1
- id: in_y_one
  doc: ':       Index of the y column (y-axis). NOTE: 1-based. NOTE: use -y2... to
    specify more indices to plot'
  type: long
  inputBinding:
    prefix: -y1
- id: in_e_one
  doc: ':       Index of the error bar column (y-axis). NOTE: 1-based. NOTE: use -e2...
    to specify more indices to plot'
  type: long
  inputBinding:
    prefix: -e1
- id: in_kone
  doc: ':       Key of the plot (default: printed on the upper right-hand side). NOTE:
    use -k2... to specify more key names to plot; use "notitle" for no key'
  type: long
  inputBinding:
    prefix: -k1
- id: in_ds_one
  doc: ':      Data style for the column. NOTE: 1-based. NOTE: use -ds2... to specify
    more data styles to plot'
  type: long
  inputBinding:
    prefix: -ds1
- id: in_fs_one
  doc: ':      Fill style for the column. NOTE: 1-based. NOTE: use -fs2... to specify
    more fill styles to plot'
  type: long
  inputBinding:
    prefix: -fs1
- id: in_pos_one
  doc: ':     Position of the first plot (e.g. "screen 0.35,0.14"). NOTE: Use -org2...
    to specify more positions (default: screen 0,0)'
  type: long
  inputBinding:
    prefix: -pos1
- id: in_size_one
  doc: '<x,y>:    Size of the first plot (e.g. "0.5,0.5"). NOTE: Use -size2... to
    specify more sizes (default: 1,1).'
  type: boolean
  inputBinding:
    prefix: -size1
- id: in_psone
  doc: ':      Point size of the first plot. NOTE: Use ps2... to specify point sizes
    of other plots'
  type: long
  inputBinding:
    prefix: -ps1
- id: in_lt_one
  doc: ':      Line type of the first plot. NOTE: Use lt2... to specify line types
    of other plots. If none are specified random types will be allocated.'
  type: long
  inputBinding:
    prefix: -lt1
- id: in_lw_one
  doc: ':      Line width of the first plot. NOTE: Use lw2... to specify line widths
    of other plots (default: 1).'
  type: long
  inputBinding:
    prefix: -lw1
- id: in_smooth_one
  doc: ":  Type of smoothing to apply to plotted data. Options are: 'unique', 'frequency',\
    \ 'acsplines', 'csplines', 'bezier' or 'sbezier'."
  type: long
  inputBinding:
    prefix: -smooth1
- id: in_key
  doc: ':      Global key features: <location> [ samplen <len> ] [ [no]box] [off]'
  type: string
  inputBinding:
    prefix: -key
- id: in_key_one
  doc: ':     Features of key to the first plot. NOTE: use -key2... for more plots.'
  type: long
  inputBinding:
    prefix: -key1
- id: in_ep
  doc: ":       Extra string to plot (e.g., <str> = 'exp(-x)')"
  type: string
  inputBinding:
    prefix: -ep
- id: in_d_two
  doc: ":       Name of second data file to plot. NOTE: 1-based. NOTE: use -d3...\
    \ to specify more data files\nNOTE: if not specified, uses the same file for all\
    \ plots"
  type: long
  inputBinding:
    prefix: -d2
- id: in_name_output_produce
  doc: ':       The name of the output file to produce'
  type: File
  inputBinding:
    prefix: -o
- id: in_output_format_output
  doc: ':       Output format for the output file (default: png)'
  type: File
  inputBinding:
    prefix: -f
- id: in_ds
  doc: ':     Data style (boxes/line/point/linespoint/imp default: point)'
  type: string
  inputBinding:
    prefix: -ds
- id: in_ps
  doc: ':       Point size (default: 0.2)'
  type: long
  inputBinding:
    prefix: -ps
- id: in_lsx
  doc: Log scale for x-axis (obsolete, use -logscale)
  type: boolean
  inputBinding:
    prefix: -lsx
- id: in_ls_y
  doc: Log scale for y-axis (obsolete, use -logscale)
  type: boolean
  inputBinding:
    prefix: -lsy
- id: in_xlc
  doc: Use column <num> as labels for x-axis (one-based)
  type: long
  inputBinding:
    prefix: -xlc
- id: in_ylc
  doc: Use column <num> as labels for y-axis (one-based)
  type: long
  inputBinding:
    prefix: -ylc
- id: in_xl
  doc: Label for x-axis
  type: string
  inputBinding:
    prefix: -xl
- id: in_yl
  doc: Label for y-axis
  type: string
  inputBinding:
    prefix: -yl
- id: in_x_two_l
  doc: Label for x2-axis
  type: long
  inputBinding:
    prefix: -x2l
- id: in_y_two_l
  doc: Label for y2-axis
  type: long
  inputBinding:
    prefix: -y2l
- id: in_xz
  doc: ':       Draw an x-zero axis. Use <str> to define the line width (default:
    same as border)'
  type: string
  inputBinding:
    prefix: -xz
- id: in_y_z
  doc: ':       Draw an y-zero axis. Use <str> to define the line width (default:
    same as border)'
  type: string
  inputBinding:
    prefix: -yz
- id: in_xr
  doc: <num:num>    global x-axis range (format 'Low:High', e.g., 1:141)
  type: boolean
  inputBinding:
    prefix: -xr
- id: in_yr
  doc: <num:num>    global y-axis range (format 'Low:High')
  type: boolean
  inputBinding:
    prefix: -yr
- id: in_xr_one
  doc: '<num:num>   x-axis range of first plot. NOTE: use -xr2... to specify x-axis
    of other plots'
  type: boolean
  inputBinding:
    prefix: -xr1
- id: in_yr_one
  doc: '<num:num>   y-axis range of first plot. NOTE: use -yr2... to specify y-axis
    of other plots'
  type: boolean
  inputBinding:
    prefix: -yr1
- id: in_axone
  doc: "specify which axes to use (x1y1, x1y2, x2y1 or x2y2). use -ax2 ... to specify\
    \ axes\nfor other plots."
  type: long
  inputBinding:
    prefix: -ax1
- id: in_x_two_r
  doc: <num:num>   global x2-axis range (format 'Low:High', e.g., 1:141)
  type: boolean
  inputBinding:
    prefix: -x2r
- id: in_y_two_r
  doc: <num:num>   global y2-axis range (format 'Low:High')
  type: boolean
  inputBinding:
    prefix: -y2r
- id: in_x_two_r_one
  doc: '<num:num>  x2-axis range of first plot. NOTE: use -x2r2... to specify x2-axis
    of other plots'
  type: boolean
  inputBinding:
    prefix: -x2r1
- id: in_y_two_r_one
  doc: '<num:num>  y2-axis range of first plot. NOTE: use -y2r2... to specify y2-axis
    of other plots'
  type: boolean
  inputBinding:
    prefix: -y2r1
- id: in_x_tics
  doc: Global tics frequency on the x range (or specify autofreq)
  type: long
  inputBinding:
    prefix: -xtics
- id: in_ytics
  doc: Global tics frequency on the y range (or specify autofreq)
  type: long
  inputBinding:
    prefix: -ytics
- id: in_x_tics_one
  doc: 'xtics for the first plot. NOTE: use -xtics2... to specify xtics of more plots'
  type: long
  inputBinding:
    prefix: -xtics1
- id: in_ytics_one
  doc: 'ytics for the first plot. NOTE: use -ytics2... to specify ytics of more plots'
  type: long
  inputBinding:
    prefix: -ytics1
- id: in_x_two_tics
  doc: Global tics frequency on the x2 range (or specify autofreq)
  type: long
  inputBinding:
    prefix: -x2tics
- id: in_y_two_tics
  doc: Global tics frequency on the y2 range (or specify autofreq)
  type: long
  inputBinding:
    prefix: -y2tics
- id: in_x_two_tics_one
  doc: 'x2tics for the first plot. NOTE: use -x2tics2... to specify x2tics of more
    plots'
  type: long
  inputBinding:
    prefix: -x2tics1
- id: in_y_two_tics_one
  doc: 'y2tics for the first plot. NOTE: use -y2tics2... to specify y2tics of more
    plots'
  type: long
  inputBinding:
    prefix: -y2tics1
- id: in_log_scale
  doc: Sets the given axis to logscale. axis can be x, y ,x2 ,y2 or any combination
    (e.g. xyx2)
  type: long
  inputBinding:
    prefix: -logscale
- id: in_additional_commands_gnuplot
  doc: Additional commands for gnuplot. \n will be made into newline
  type: string
  inputBinding:
    prefix: -c
- id: in_title_graph_title
  doc: 'Title for the graph (default: no title)'
  type: string
  inputBinding:
    prefix: -t
- id: in_multiplot
  doc: Use multiplot mode (<str> can be left empty or be given layout and title commands).
  type: string
  inputBinding:
    prefix: -multiplot
- id: in_grid
  doc: ':           Sets on grid for the plot'
  type: boolean
  inputBinding:
    prefix: -grid
- id: in_grid_x
  doc: ':          Sets on grid only for x-axis'
  type: boolean
  inputBinding:
    prefix: -gridx
- id: in_grid_y
  doc: ':          Sets on grid only for y-axis'
  type: boolean
  inputBinding:
    prefix: -gridy
- id: in_no_border
  doc: ':       Create plots with no border'
  type: boolean
  inputBinding:
    prefix: -noborder
- id: in_half_border
  doc: ':    Create plots with only left and bottom borders (and tics)'
  type: boolean
  inputBinding:
    prefix: -half_border
- id: in_png
  doc: ':            Create a png as the output file and not plotting commands'
  type: File
  inputBinding:
    prefix: -png
- id: in_postscript
  doc: ':     Create a postscript as the output file'
  type: File
  inputBinding:
    prefix: -postscript
- id: in_colors
  doc: ":         (only for -png) Colors pallete to use. A list of xrrggbb format\
    \ where the elements are:\nbackground, border, x/y axis, line type 1, line type\
    \ 2 ...\nDefault pallete is: \"xffffff x000000 x404040 xff0000 xffa500 x66cdaa\
    \ xcdb5cd x1ea4ff x0000ff xdda0dd x9500d3\""
  type: boolean
  inputBinding:
    prefix: -colors
- id: in_font_size
  doc: ":       (only for -png) Fontsize for nonscalable font use tiny/small/medium/large/giant\
    \ (default small).\nFor scalable font specify a pointsize (default 10)."
  type: boolean
  inputBinding:
    prefix: -fontsize
- id: in_font
  doc: ':     (only for -png) Use a scalable ttf/pfa font (choose from /storage/appl/gnuplot-4.2.2/share/fonts/
    , default Tahoma.ttf when -font is used)'
  type: double
  inputBinding:
    prefix: -font
- id: in_image_size
  doc: ":     In png mode -- output png size in pixels (not supported on all machines).\n\
    In postscript mode -- output size of the figure. Font is not affected. Use -image_size\
    \ 0.8 to increase font by 20%"
  type: boolean
  inputBinding:
    prefix: -image_size
- id: in_ratio
  doc: ':    Set the ratio of the graph (width / height). Default is 1. Use 0.5 to
    make image wide, 2 to make it tall etc.'
  type: long
  inputBinding:
    prefix: -ratio
- id: in_skip
  doc: ':     amount of header rows to skip'
  type: long
  inputBinding:
    prefix: -skip
- id: in_all
  doc: ":            plot all columns: 1st column is x axis, other columns are various\
    \ y axis data series.\nfirst line is assumed to have keys of the y columns.\n\
    lines (other than first) that start with # will not be plotted. such lines can\
    \ give\ncolumn-specific commands in -all multiplot mode, e.g. set a different\
    \ range for each column.\na sample line should look like this: #yrange<tab>[0:3]<tab>[2:4]<tab>[0:2]"
  type: boolean
  inputBinding:
    prefix: -all
- id: in_e_all
  doc: ":          Use with -all to add errorbars to the data series. error value\
    \ columns should appear\nby respective order after all y value columns, e.g. [x]\
    \ [y1]...[y5] [e1]...[e5] ."
  type: boolean
  inputBinding:
    prefix: -e_all
- id: in_compare_to_last
  doc: "with -all and -multiplot in order to add the last column of the data file\
    \ to every plot in the multiplot\nand NOT as a seperate plot"
  type: File
  inputBinding:
    prefix: -compare_to_last
- id: in_no_key
  doc: Supress printing of keys in a -all plot
  type: boolean
  inputBinding:
    prefix: -no_key
- id: in_debug
  doc: ':          Print the resulting commands to STDOUT'
  type: boolean
  inputBinding:
    prefix: -debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_name_output_produce
  doc: ':       The name of the output file to produce'
  type: File
  outputBinding:
    glob: $(inputs.in_name_output_produce)
- id: out_output_format_output
  doc: ':       Output format for the output file (default: png)'
  type: File
  outputBinding:
    glob: $(inputs.in_output_format_output)
- id: out_png
  doc: ':            Create a png as the output file and not plotting commands'
  type: File
  outputBinding:
    glob: $(inputs.in_png)
- id: out_postscript
  doc: ':     Create a postscript as the output file'
  type: File
  outputBinding:
    glob: $(inputs.in_postscript)
cwlVersion: v1.1
baseCommand:
- make_gnuplot_graph.pl
