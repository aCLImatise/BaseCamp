version 1.0

task RgtVizHeatmap {
  input {
    Boolean? directory_name_output
    Boolean? ga
    Boolean? title_shown_heatmap
    Boolean? center
    Boolean? sort
    Boolean? col
    Boolean? color_data_reads
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
    String file_name_input
  }
  command <<<
    rgt-viz heatmap \
      ~{file_name_input} \
      ~{true="-o" false="" directory_name_output} \
      ~{true="-ga" false="" ga} \
      ~{true="-t" false="" title_shown_heatmap} \
      ~{true="-center" false="" center} \
      ~{true="-sort" false="" sort} \
      ~{true="-col" false="" col} \
      ~{true="-c" false="" color_data_reads} \
      ~{true="-row" false="" row} \
      ~{true="-e" false="" define_extend_length} \
      ~{true="-rs" false="" rs} \
      ~{true="-ss" false="" ss} \
      ~{true="-bs" false="" bs} \
      ~{true="-organism" false="" organism} \
      ~{true="-color" false="" color} \
      ~{true="-log" false="" log} \
      ~{true="-mp" false="" mp} \
      ~{true="-show" false="" show} \
      ~{true="-table" false="" table}
  >>>
  parameter_meta {
    directory_name_output: "The directory name for the output files. For example, project name. (default: None)"
    ga: "Use genetic annotation data as input regions (e.g. TSS, TTS, exons and introns) instead of the BED files in the input matrix. (default: False)"
    title_shown_heatmap: "The title shown on the top of the plot and also the folder name. (default: heatmap)"
    center: "Define the center to calculate coverage on the regions. Options are: midpoint, bothends, upstream, downstream.(Default:midpoint) The bothend mode will flap the right end region for calculation. (default: midpoint)"
    sort: "Define the way to sort the signals.Default is no sorting at all, the signals arrange in the order of their position; \"0\" is sorting by the average ranking of all signals; \"1\" is sorting by the ranking of 1st column; \"2\" is 2nd and so on... (default: None)"
    col: "Group the data in columns by reads(needs 'factor' column), regions(needs 'factor' column), another name of column (for example, 'cell')in the header of experimental matrix, or None. (default: regions)"
    color_data_reads: "Color the data by reads(needs 'factor' column), regions(needs 'factor' column), another name of column (for example, 'cell')in the header of experimental matrix, or None. (default: reads)"
    row: "Group the data in rows by reads(needs 'factor' column), regions(needs 'factor' column), another name of column (for example, 'cell')in the header of experimental matrix, or None. (default: None)"
    define_extend_length: "Define the extend length of interested region for plotting. (default: 2000)"
    rs: "Define the readsize for calculating coverage. (default: 200)"
    ss: "Define the stepsize for calculating coverage. (default: 50)"
    bs: "Define the binsize for calculating coverage. (default: 100)"
    organism: "Define the organism. (default: hg19)"
    color: "Define the specific colors with the given column \"color\" in experimental matrix. The color should be in the format of matplotlib.colors. For example, \"r\" for red, \"b\" for blue, or \"(100, 35, 138)\" for RGB. (default: False)"
    log: "Set colorbar in log scale. (default: False)"
    mp: "Perform multiprocessing for faster computation. (default: False)"
    show: "Show the figure in the screen. (default: False)"
    table: "Store the tables of the figure in text format. (default: False)"
    file_name_input: "The file name of the input Experimental Matrix file. Recommended to add more columns for more information for ploting. For example, cell type or factors. (default: None)"
  }
}