version 1.0

task RgtVizLineplot {
  input {
    String? directory_name_output
    Boolean? ga
    Boolean? title_shown_lineplot
    Boolean? center
    Boolean? group_data_default
    Boolean? row
    Boolean? col
    Boolean? color_data_reads
    Boolean? define_extend_length
    Boolean? rs
    Boolean? ss
    Boolean? bs
    Boolean? log
    Boolean? scol
    Boolean? s_row
    Boolean? organism
    Boolean? color
    Boolean? pw
    Boolean? ph
    Boolean? test
    Boolean? mp
    Boolean? df
    Boolean? dft
    Boolean? show
    Boolean? table
    Boolean? sense
    Boolean? strand
    Boolean? average
    Boolean? flip_negative
    Boolean? extend_outside
    Boolean? add_region_number
    String file_name_input
  }
  command <<<
    rgt-viz lineplot \
      ~{file_name_input} \
      ~{if defined(directory_name_output) then ("-o " +  '"' + directory_name_output + '"') else ""} \
      ~{true="-ga" false="" ga} \
      ~{true="-t" false="" title_shown_lineplot} \
      ~{true="-center" false="" center} \
      ~{true="-g" false="" group_data_default} \
      ~{true="-row" false="" row} \
      ~{true="-col" false="" col} \
      ~{true="-c" false="" color_data_reads} \
      ~{true="-e" false="" define_extend_length} \
      ~{true="-rs" false="" rs} \
      ~{true="-ss" false="" ss} \
      ~{true="-bs" false="" bs} \
      ~{true="-log" false="" log} \
      ~{true="-scol" false="" scol} \
      ~{true="-srow" false="" s_row} \
      ~{true="-organism" false="" organism} \
      ~{true="-color" false="" color} \
      ~{true="-pw" false="" pw} \
      ~{true="-ph" false="" ph} \
      ~{true="-test" false="" test} \
      ~{true="-mp" false="" mp} \
      ~{true="-df" false="" df} \
      ~{true="-dft" false="" dft} \
      ~{true="-show" false="" show} \
      ~{true="-table" false="" table} \
      ~{true="-sense" false="" sense} \
      ~{true="-strand" false="" strand} \
      ~{true="-average" false="" average} \
      ~{true="-flip_negative" false="" flip_negative} \
      ~{true="-extend_outside" false="" extend_outside} \
      ~{true="-add_region_number" false="" add_region_number}
  >>>
  parameter_meta {
    directory_name_output: "The directory name for the output files. For example, project name. (default: None)"
    ga: "Use genetic annotation data as input regions (e.g. TSS, TTS, exons and introns) instead of the BED files in the input matrix."
    title_shown_lineplot: "The title shown on the top of the plot and also the folder name. (default: lineplot)"
    center: "Define the center to calculate coverage on the regions. Options are: midpoint, bothends, upstream, downstream. (default: midpoint) The bothend mode will flap the right end region for calculation."
    group_data_default: "Group the data by reads(needs 'factor' column), regions(needs 'factor' column), another name of column (for example, 'cell')in the header of experimental matrix, or None. (default: None)"
    row: "Group the data in rows by reads(needs 'factor' column), regions(needs 'factor' column), another name of column (for example, 'cell')in the header of experimental matrix, or None. (default: None)"
    col: "Group the data in columns by reads(needs 'factor' column), regions(needs 'factor' column), another name of column (for example, 'cell')in the header of experimental matrix, or None. (default: regions)"
    color_data_reads: "Color the data by reads(needs 'factor' column), regions(needs 'factor' column), another name of column (for example, 'cell')in the header of experimental matrix, or None. (default: reads)"
    define_extend_length: "Define the extend length of interested region for plotting. (default: 2000)"
    rs: "Define the readsize for calculating coverage. (default: 200)"
    ss: "Define the stepsize for calculating coverage. (default: 50)"
    bs: "Define the binsize for calculating coverage. (default: 100)"
    log: "Take log for the value before calculating average. (default: False)"
    scol: "Share y axis among columns. (default: False)"
    s_row: "Share y axis among rows. (default: False)"
    organism: "Define the organism. (default: None)"
    color: "Define the specific colors with the given column \"color\" in experimental matrix. The color should be in the format of matplotlib.colors. For example, \"r\" for red, \"b\" for blue, or \"(100, 35, 138)\" for RGB. (default: False)"
    pw: "Define the width of single panel. (default: 3)"
    ph: "Define the height of single panel. (default: 3)"
    test: "Sample only the first 10 regions in all BED files for testing. (default: False)"
    mp: "Perform multiprocessing for faster computation. (default: 0)"
    df: "Show the difference of the two signals which share the same labels.The result is the subtraction of the first to the second. (default: False)"
    dft: "Add one more tag for calculating difference. (default: None)"
    show: "Show the figure in the screen. (default: False)"
    table: "Store the tables of the figure in text format. (default: False)"
    sense: "Set the plot sense-specific. (default: False)"
    strand: "Set the plot strand-specific. (default: False)"
    average: "Show only the average of the replicates. (default: False)"
    flip_negative: "Flip the negative strand (default: False)"
    extend_outside: "Extend the window outside of the given regions and compress the given region into fixed internal. (default: False)"
    add_region_number: "Add the number of regions in the axis label. (default: False)"
    file_name_input: "The file name of the input Experimental Matrix file. Recommended to add more columns for more information for ploting. For example, cell type or factors. (default: None)"
  }
}