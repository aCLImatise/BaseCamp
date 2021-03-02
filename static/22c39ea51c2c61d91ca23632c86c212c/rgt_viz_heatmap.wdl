version 1.0

task RgtvizHeatmap {
  input {
    Directory? directory_name_output
    Boolean? ga
    Boolean? title_shown_heatmap
    Boolean? center
    Boolean? sort
    Boolean? col
    Boolean? color_data_readsneeds
    Boolean? row
    Boolean? define_extend_length
    Boolean? rs
    Boolean? ss
    Boolean? bs
    Boolean? organism
    Boolean? color
    Boolean? log
    Boolean? mp
    Boolean? show
    Boolean? table
  }
  command <<<
    rgt_viz heatmap \
      ~{if (directory_name_output) then "-o" else ""} \
      ~{if (ga) then "-ga" else ""} \
      ~{if (title_shown_heatmap) then "-t" else ""} \
      ~{if (center) then "-center" else ""} \
      ~{if (sort) then "-sort" else ""} \
      ~{if (col) then "-col" else ""} \
      ~{if (color_data_readsneeds) then "-c" else ""} \
      ~{if (row) then "-row" else ""} \
      ~{if (define_extend_length) then "-e" else ""} \
      ~{if (rs) then "-rs" else ""} \
      ~{if (ss) then "-ss" else ""} \
      ~{if (bs) then "-bs" else ""} \
      ~{if (organism) then "-organism" else ""} \
      ~{if (color) then "-color" else ""} \
      ~{if (log) then "-log" else ""} \
      ~{if (mp) then "-mp" else ""} \
      ~{if (show) then "-show" else ""} \
      ~{if (table) then "-table" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    directory_name_output: "The directory name for the output files. For example, project\\nname. (default: None)"
    ga: "Use genetic annotation data as input regions (e.g. TSS, TTS,\\nexons and introns) instead of the BED files in the input\\nmatrix. (default: False)"
    title_shown_heatmap: "The title shown on the top of the plot and also the folder\\nname. (default: heatmap)"
    center: "Define the center to calculate coverage on the regions.\\nOptions are: midpoint, bothends, upstream,\\ndownstream.(Default:midpoint) The bothend mode will flap the\\nright end region for calculation. (default: midpoint)"
    sort: "Define the way to sort the signals.Default is no sorting at\\nall, the signals arrange in the order of their position; \\\"0\\\"\\nis sorting by the average ranking of all signals; \\\"1\\\" is\\nsorting by the ranking of 1st column; \\\"2\\\" is 2nd and so on...\\n(default: None)"
    col: "Group the data in columns by reads(needs 'factor' column),\\nregions(needs 'factor' column), another name of column (for\\nexample, 'cell')in the header of experimental matrix, or None.\\n(default: regions)"
    color_data_readsneeds: "Color the data by reads(needs 'factor' column), regions(needs\\n'factor' column), another name of column (for example,\\n'cell')in the header of experimental matrix, or None.\\n(default: reads)"
    row: "Group the data in rows by reads(needs 'factor' column),\\nregions(needs 'factor' column), another name of column (for\\nexample, 'cell')in the header of experimental matrix, or None.\\n(default: None)"
    define_extend_length: "Define the extend length of interested region for plotting.\\n(default: 2000)"
    rs: "Define the readsize for calculating coverage. (default: 200)"
    ss: "Define the stepsize for calculating coverage. (default: 50)"
    bs: "Define the binsize for calculating coverage. (default: 100)"
    organism: "Define the organism. (default: hg19)"
    color: "Define the specific colors with the given column \\\"color\\\" in\\nexperimental matrix. The color should be in the format of\\nmatplotlib.colors. For example, \\\"r\\\" for red, \\\"b\\\" for blue, or\\n\\\"(100, 35, 138)\\\" for RGB. (default: False)"
    log: "Set colorbar in log scale. (default: False)"
    mp: "Perform multiprocessing for faster computation. (default:\\nFalse)"
    show: "Show the figure in the screen. (default: False)"
    table: "Store the tables of the figure in text format. (default:\\nFalse)\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_directory_name_output = "${in_directory_name_output}"
  }
}