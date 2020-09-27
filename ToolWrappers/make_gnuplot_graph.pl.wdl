version 1.0

task MakeGnuplotGraphpl {
  input {
    Int? x_one
    Int? y_one
    Int? e_one
    Int? kone
    Int? ds_one
    Int? fs_one
    Int? pos_one
    Boolean? size_one
    Int? psone
    Int? lt_one
    Int? lw_one
    Int? smooth_one
    String? key
    Int? key_one
    String? ep
    Int? d_two
    File? name_output_produce
    File? output_format_output
    String? ds
    Int? ps
    Boolean? lsx
    Boolean? ls_y
    Int? xlc
    Int? ylc
    String? xl
    String? yl
    Int? x_two_l
    Int? y_two_l
    String? xz
    String? y_z
    Boolean? xr
    Boolean? yr
    Boolean? xr_one
    Boolean? yr_one
    Int? axone
    Boolean? x_two_r
    Boolean? y_two_r
    Boolean? x_two_r_one
    Boolean? y_two_r_one
    Int? x_tics
    Int? ytics
    Int? x_tics_one
    Int? ytics_one
    Int? x_two_tics
    Int? y_two_tics
    Int? x_two_tics_one
    Int? y_two_tics_one
    Int? log_scale
    String? additional_commands_gnuplot
    String? title_graph_title
    String? multiplot
    Boolean? grid
    Boolean? grid_x
    Boolean? grid_y
    Boolean? no_border
    Boolean? half_border
    File? png
    File? postscript
    Boolean? colors
    Boolean? font_size
    Float? font
    Boolean? image_size
    Int? ratio
    Int? skip
    Boolean? all
    Boolean? e_all
    File? compare_to_last
    Boolean? no_key
    Boolean? debug
  }
  command <<<
    make_gnuplot_graph_pl \
      ~{if defined(x_one) then ("-x1 " +  '"' + x_one + '"') else ""} \
      ~{if defined(y_one) then ("-y1 " +  '"' + y_one + '"') else ""} \
      ~{if defined(e_one) then ("-e1 " +  '"' + e_one + '"') else ""} \
      ~{if defined(kone) then ("-k1 " +  '"' + kone + '"') else ""} \
      ~{if defined(ds_one) then ("-ds1 " +  '"' + ds_one + '"') else ""} \
      ~{if defined(fs_one) then ("-fs1 " +  '"' + fs_one + '"') else ""} \
      ~{if defined(pos_one) then ("-pos1 " +  '"' + pos_one + '"') else ""} \
      ~{if (size_one) then "-size1" else ""} \
      ~{if defined(psone) then ("-ps1 " +  '"' + psone + '"') else ""} \
      ~{if defined(lt_one) then ("-lt1 " +  '"' + lt_one + '"') else ""} \
      ~{if defined(lw_one) then ("-lw1 " +  '"' + lw_one + '"') else ""} \
      ~{if defined(smooth_one) then ("-smooth1 " +  '"' + smooth_one + '"') else ""} \
      ~{if defined(key) then ("-key " +  '"' + key + '"') else ""} \
      ~{if defined(key_one) then ("-key1 " +  '"' + key_one + '"') else ""} \
      ~{if defined(ep) then ("-ep " +  '"' + ep + '"') else ""} \
      ~{if defined(d_two) then ("-d2 " +  '"' + d_two + '"') else ""} \
      ~{if defined(name_output_produce) then ("-o " +  '"' + name_output_produce + '"') else ""} \
      ~{if defined(output_format_output) then ("-f " +  '"' + output_format_output + '"') else ""} \
      ~{if defined(ds) then ("-ds " +  '"' + ds + '"') else ""} \
      ~{if defined(ps) then ("-ps " +  '"' + ps + '"') else ""} \
      ~{if (lsx) then "-lsx" else ""} \
      ~{if (ls_y) then "-lsy" else ""} \
      ~{if defined(xlc) then ("-xlc " +  '"' + xlc + '"') else ""} \
      ~{if defined(ylc) then ("-ylc " +  '"' + ylc + '"') else ""} \
      ~{if defined(xl) then ("-xl " +  '"' + xl + '"') else ""} \
      ~{if defined(yl) then ("-yl " +  '"' + yl + '"') else ""} \
      ~{if defined(x_two_l) then ("-x2l " +  '"' + x_two_l + '"') else ""} \
      ~{if defined(y_two_l) then ("-y2l " +  '"' + y_two_l + '"') else ""} \
      ~{if defined(xz) then ("-xz " +  '"' + xz + '"') else ""} \
      ~{if defined(y_z) then ("-yz " +  '"' + y_z + '"') else ""} \
      ~{if (xr) then "-xr" else ""} \
      ~{if (yr) then "-yr" else ""} \
      ~{if (xr_one) then "-xr1" else ""} \
      ~{if (yr_one) then "-yr1" else ""} \
      ~{if defined(axone) then ("-ax1 " +  '"' + axone + '"') else ""} \
      ~{if (x_two_r) then "-x2r" else ""} \
      ~{if (y_two_r) then "-y2r" else ""} \
      ~{if (x_two_r_one) then "-x2r1" else ""} \
      ~{if (y_two_r_one) then "-y2r1" else ""} \
      ~{if defined(x_tics) then ("-xtics " +  '"' + x_tics + '"') else ""} \
      ~{if defined(ytics) then ("-ytics " +  '"' + ytics + '"') else ""} \
      ~{if defined(x_tics_one) then ("-xtics1 " +  '"' + x_tics_one + '"') else ""} \
      ~{if defined(ytics_one) then ("-ytics1 " +  '"' + ytics_one + '"') else ""} \
      ~{if defined(x_two_tics) then ("-x2tics " +  '"' + x_two_tics + '"') else ""} \
      ~{if defined(y_two_tics) then ("-y2tics " +  '"' + y_two_tics + '"') else ""} \
      ~{if defined(x_two_tics_one) then ("-x2tics1 " +  '"' + x_two_tics_one + '"') else ""} \
      ~{if defined(y_two_tics_one) then ("-y2tics1 " +  '"' + y_two_tics_one + '"') else ""} \
      ~{if defined(log_scale) then ("-logscale " +  '"' + log_scale + '"') else ""} \
      ~{if defined(additional_commands_gnuplot) then ("-c " +  '"' + additional_commands_gnuplot + '"') else ""} \
      ~{if defined(title_graph_title) then ("-t " +  '"' + title_graph_title + '"') else ""} \
      ~{if defined(multiplot) then ("-multiplot " +  '"' + multiplot + '"') else ""} \
      ~{if (grid) then "-grid" else ""} \
      ~{if (grid_x) then "-gridx" else ""} \
      ~{if (grid_y) then "-gridy" else ""} \
      ~{if (no_border) then "-noborder" else ""} \
      ~{if (half_border) then "-half_border" else ""} \
      ~{if (png) then "-png" else ""} \
      ~{if (postscript) then "-postscript" else ""} \
      ~{if (colors) then "-colors" else ""} \
      ~{if (font_size) then "-fontsize" else ""} \
      ~{if defined(font) then ("-font " +  '"' + font + '"') else ""} \
      ~{if (image_size) then "-image_size" else ""} \
      ~{if defined(ratio) then ("-ratio " +  '"' + ratio + '"') else ""} \
      ~{if defined(skip) then ("-skip " +  '"' + skip + '"') else ""} \
      ~{if (all) then "-all" else ""} \
      ~{if (e_all) then "-e_all" else ""} \
      ~{if defined(compare_to_last) then ("-compare_to_last " +  '"' + compare_to_last + '"') else ""} \
      ~{if (no_key) then "-no_key" else ""} \
      ~{if (debug) then "-debug" else ""}
  >>>
  parameter_meta {
    x_one: ":       Index of the x column (x-axis). NOTE: 1-based. NOTE: use -x2... to specify more indices to plot"
    y_one: ":       Index of the y column (y-axis). NOTE: 1-based. NOTE: use -y2... to specify more indices to plot"
    e_one: ":       Index of the error bar column (y-axis). NOTE: 1-based. NOTE: use -e2... to specify more indices to plot"
    kone: ":       Key of the plot (default: printed on the upper right-hand side). NOTE: use -k2... to specify more key names to plot; use \\\"notitle\\\" for no key"
    ds_one: ":      Data style for the column. NOTE: 1-based. NOTE: use -ds2... to specify more data styles to plot"
    fs_one: ":      Fill style for the column. NOTE: 1-based. NOTE: use -fs2... to specify more fill styles to plot"
    pos_one: ":     Position of the first plot (e.g. \\\"screen 0.35,0.14\\\"). NOTE: Use -org2... to specify more positions (default: screen 0,0)"
    size_one: "<x,y>:    Size of the first plot (e.g. \\\"0.5,0.5\\\"). NOTE: Use -size2... to specify more sizes (default: 1,1)."
    psone: ":      Point size of the first plot. NOTE: Use ps2... to specify point sizes of other plots"
    lt_one: ":      Line type of the first plot. NOTE: Use lt2... to specify line types of other plots. If none are specified random types will be allocated."
    lw_one: ":      Line width of the first plot. NOTE: Use lw2... to specify line widths of other plots (default: 1)."
    smooth_one: ":  Type of smoothing to apply to plotted data. Options are: 'unique', 'frequency', 'acsplines', 'csplines', 'bezier' or 'sbezier'."
    key: ":      Global key features: <location> [ samplen <len> ] [ [no]box] [off]"
    key_one: ":     Features of key to the first plot. NOTE: use -key2... for more plots."
    ep: ":       Extra string to plot (e.g., <str> = 'exp(-x)')"
    d_two: ":       Name of second data file to plot. NOTE: 1-based. NOTE: use -d3... to specify more data files\\nNOTE: if not specified, uses the same file for all plots"
    name_output_produce: ":       The name of the output file to produce"
    output_format_output: ":       Output format for the output file (default: png)"
    ds: ":     Data style (boxes/line/point/linespoint/imp default: point)"
    ps: ":       Point size (default: 0.2)"
    lsx: "Log scale for x-axis (obsolete, use -logscale)"
    ls_y: "Log scale for y-axis (obsolete, use -logscale)"
    xlc: "Use column <num> as labels for x-axis (one-based)"
    ylc: "Use column <num> as labels for y-axis (one-based)"
    xl: "Label for x-axis"
    yl: "Label for y-axis"
    x_two_l: "Label for x2-axis"
    y_two_l: "Label for y2-axis"
    xz: ":       Draw an x-zero axis. Use <str> to define the line width (default: same as border)"
    y_z: ":       Draw an y-zero axis. Use <str> to define the line width (default: same as border)"
    xr: "<num:num>    global x-axis range (format 'Low:High', e.g., 1:141)"
    yr: "<num:num>    global y-axis range (format 'Low:High')"
    xr_one: "<num:num>   x-axis range of first plot. NOTE: use -xr2... to specify x-axis of other plots"
    yr_one: "<num:num>   y-axis range of first plot. NOTE: use -yr2... to specify y-axis of other plots"
    axone: "specify which axes to use (x1y1, x1y2, x2y1 or x2y2). use -ax2 ... to specify axes\\nfor other plots."
    x_two_r: "<num:num>   global x2-axis range (format 'Low:High', e.g., 1:141)"
    y_two_r: "<num:num>   global y2-axis range (format 'Low:High')"
    x_two_r_one: "<num:num>  x2-axis range of first plot. NOTE: use -x2r2... to specify x2-axis of other plots"
    y_two_r_one: "<num:num>  y2-axis range of first plot. NOTE: use -y2r2... to specify y2-axis of other plots"
    x_tics: "Global tics frequency on the x range (or specify autofreq)"
    ytics: "Global tics frequency on the y range (or specify autofreq)"
    x_tics_one: "xtics for the first plot. NOTE: use -xtics2... to specify xtics of more plots"
    ytics_one: "ytics for the first plot. NOTE: use -ytics2... to specify ytics of more plots"
    x_two_tics: "Global tics frequency on the x2 range (or specify autofreq)"
    y_two_tics: "Global tics frequency on the y2 range (or specify autofreq)"
    x_two_tics_one: "x2tics for the first plot. NOTE: use -x2tics2... to specify x2tics of more plots"
    y_two_tics_one: "y2tics for the first plot. NOTE: use -y2tics2... to specify y2tics of more plots"
    log_scale: "Sets the given axis to logscale. axis can be x, y ,x2 ,y2 or any combination (e.g. xyx2)"
    additional_commands_gnuplot: "Additional commands for gnuplot. \\n will be made into newline"
    title_graph_title: "Title for the graph (default: no title)"
    multiplot: "Use multiplot mode (<str> can be left empty or be given layout and title commands)."
    grid: ":           Sets on grid for the plot"
    grid_x: ":          Sets on grid only for x-axis"
    grid_y: ":          Sets on grid only for y-axis"
    no_border: ":       Create plots with no border"
    half_border: ":    Create plots with only left and bottom borders (and tics)"
    png: ":            Create a png as the output file and not plotting commands"
    postscript: ":     Create a postscript as the output file"
    colors: ":         (only for -png) Colors pallete to use. A list of xrrggbb format where the elements are:\\nbackground, border, x/y axis, line type 1, line type 2 ...\\nDefault pallete is: \\\"xffffff x000000 x404040 xff0000 xffa500 x66cdaa xcdb5cd x1ea4ff x0000ff xdda0dd x9500d3\\\""
    font_size: ":       (only for -png) Fontsize for nonscalable font use tiny/small/medium/large/giant (default small).\\nFor scalable font specify a pointsize (default 10)."
    font: ":     (only for -png) Use a scalable ttf/pfa font (choose from /storage/appl/gnuplot-4.2.2/share/fonts/ , default Tahoma.ttf when -font is used)"
    image_size: ":     In png mode -- output png size in pixels (not supported on all machines).\\nIn postscript mode -- output size of the figure. Font is not affected. Use -image_size 0.8 to increase font by 20%"
    ratio: ":    Set the ratio of the graph (width / height). Default is 1. Use 0.5 to make image wide, 2 to make it tall etc."
    skip: ":     amount of header rows to skip"
    all: ":            plot all columns: 1st column is x axis, other columns are various y axis data series.\\nfirst line is assumed to have keys of the y columns.\\nlines (other than first) that start with # will not be plotted. such lines can give\\ncolumn-specific commands in -all multiplot mode, e.g. set a different range for each column.\\na sample line should look like this: #yrange<tab>[0:3]<tab>[2:4]<tab>[0:2]"
    e_all: ":          Use with -all to add errorbars to the data series. error value columns should appear\\nby respective order after all y value columns, e.g. [x] [y1]...[y5] [e1]...[e5] ."
    compare_to_last: "with -all and -multiplot in order to add the last column of the data file to every plot in the multiplot\\nand NOT as a seperate plot"
    no_key: "Supress printing of keys in a -all plot"
    debug: ":          Print the resulting commands to STDOUT"
  }
  output {
    File out_stdout = stdout()
    File out_name_output_produce = "${in_name_output_produce}"
    File out_output_format_output = "${in_output_format_output}"
    File out_png = "${in_png}"
    File out_postscript = "${in_postscript}"
  }
}