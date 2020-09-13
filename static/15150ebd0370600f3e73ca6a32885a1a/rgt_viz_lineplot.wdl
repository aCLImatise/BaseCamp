version 1.0

task RgtvizLineplot {
  input {
    Directory? directory_name_output
    Boolean? ga
    Boolean? title_shown_thefolder
    Boolean? center
    Boolean? group_data_readsneeds
    Boolean? row
    Boolean? col
    Boolean? color_data_readsneeds
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
  }
  command <<<
    rgt_viz lineplot \
      ~{if defined(directory_name_output) then ("-o " +  '"' + directory_name_output + '"') else ""} \
      ~{if (ga) then "-ga" else ""} \
      ~{if (title_shown_thefolder) then "-t" else ""} \
      ~{if (center) then "-center" else ""} \
      ~{if (group_data_readsneeds) then "-g" else ""} \
      ~{if (row) then "-row" else ""} \
      ~{if (col) then "-col" else ""} \
      ~{if (color_data_readsneeds) then "-c" else ""} \
      ~{if (define_extend_length) then "-e" else ""} \
      ~{if (rs) then "-rs" else ""} \
      ~{if (ss) then "-ss" else ""} \
      ~{if (bs) then "-bs" else ""} \
      ~{if (log) then "-log" else ""} \
      ~{if (scol) then "-scol" else ""} \
      ~{if (s_row) then "-srow" else ""} \
      ~{if (organism) then "-organism" else ""} \
      ~{if (color) then "-color" else ""} \
      ~{if (pw) then "-pw" else ""} \
      ~{if (ph) then "-ph" else ""} \
      ~{if (test) then "-test" else ""} \
      ~{if (mp) then "-mp" else ""} \
      ~{if (df) then "-df" else ""} \
      ~{if (dft) then "-dft" else ""} \
      ~{if (show) then "-show" else ""} \
      ~{if (table) then "-table" else ""} \
      ~{if (sense) then "-sense" else ""} \
      ~{if (strand) then "-strand" else ""} \
      ~{if (average) then "-average" else ""} \
      ~{if (flip_negative) then "-flip_negative" else ""} \
      ~{if (extend_outside) then "-extend_outside" else ""} \
      ~{if (add_region_number) then "-add_region_number" else ""}
  >>>
  parameter_meta {
    directory_name_output: "The directory name for the output files. For example,\\nproject name. (default: None)"
    ga: "Use genetic annotation data as input regions (e.g. TSS,\\nTTS, exons and introns) instead of the BED files in the\\ninput matrix."
    title_shown_thefolder: "The title shown on the top of the plot and also the\\nfolder name. (default: lineplot)"
    center: "Define the center to calculate coverage on the regions.\\nOptions are: midpoint, bothends, upstream, downstream.\\n(default: midpoint) The bothend mode will flap the right\\nend region for calculation."
    group_data_readsneeds: "Group the data by reads(needs 'factor' column),\\nregions(needs 'factor' column), another name of column\\n(for example, 'cell')in the header of experimental\\nmatrix, or None. (default: None)"
    row: "Group the data in rows by reads(needs 'factor' column),\\nregions(needs 'factor' column), another name of column\\n(for example, 'cell')in the header of experimental\\nmatrix, or None. (default: None)"
    col: "Group the data in columns by reads(needs 'factor'\\ncolumn), regions(needs 'factor' column), another name of\\ncolumn (for example, 'cell')in the header of\\nexperimental matrix, or None. (default: regions)"
    color_data_readsneeds: "Color the data by reads(needs 'factor' column),\\nregions(needs 'factor' column), another name of column\\n(for example, 'cell')in the header of experimental\\nmatrix, or None. (default: reads)"
    define_extend_length: "Define the extend length of interested region for\\nplotting. (default: 2000)"
    rs: "Define the readsize for calculating coverage. (default:\\n200)"
    ss: "Define the stepsize for calculating coverage. (default:\\n50)"
    bs: "Define the binsize for calculating coverage. (default:\\n100)"
    log: "Take log for the value before calculating average.\\n(default: False)"
    scol: "Share y axis among columns. (default: False)"
    s_row: "Share y axis among rows. (default: False)"
    organism: "Define the organism. (default: None)"
    color: "Define the specific colors with the given column \\\"color\\\"\\nin experimental matrix. The color should be in the\\nformat of matplotlib.colors. For example, \\\"r\\\" for red,\\n\\\"b\\\" for blue, or \\\"(100, 35, 138)\\\" for RGB. (default:\\nFalse)"
    pw: "Define the width of single panel. (default: 3)"
    ph: "Define the height of single panel. (default: 3)"
    test: "Sample only the first 10 regions in all BED files for\\ntesting. (default: False)"
    mp: "Perform multiprocessing for faster computation.\\n(default: 0)"
    df: "Show the difference of the two signals which share the\\nsame labels.The result is the subtraction of the first\\nto the second. (default: False)"
    dft: "Add one more tag for calculating difference. (default:\\nNone)"
    show: "Show the figure in the screen. (default: False)"
    table: "Store the tables of the figure in text format. (default:\\nFalse)"
    sense: "Set the plot sense-specific. (default: False)"
    strand: "Set the plot strand-specific. (default: False)"
    average: "Show only the average of the replicates. (default:\\nFalse)"
    flip_negative: "Flip the negative strand (default: False)"
    extend_outside: "Extend the window outside of the given regions and\\ncompress the given region into fixed internal. (default:\\nFalse)"
    add_region_number: "Add the number of regions in the axis label. (default:\\nFalse)\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_directory_name_output = "${in_directory_name_output}"
  }
}