version 1.0

task RgtVizIntersect {
  input {
    Boolean? file_name_reference
    Boolean? file_name_query
    String? directory_name_output
    Boolean? title_shown_top
    Boolean? group_data_optional
    Boolean? color_data_optional
    Boolean? organism
    Boolean? bg
    Boolean? define_mode_outputs
    Boolean? tc
    Boolean? ex
    Boolean? log
    Boolean? color
    Boolean? show
    Boolean? s_test
    Boolean? mp
    Boolean? pw
    Boolean? ph
  }
  command <<<
    rgt-viz intersect \
      ~{true="-r" false="" file_name_reference} \
      ~{true="-q" false="" file_name_query} \
      ~{if defined(directory_name_output) then ("-o " +  '"' + directory_name_output + '"') else ""} \
      ~{true="-t" false="" title_shown_top} \
      ~{true="-g" false="" group_data_optional} \
      ~{true="-c" false="" color_data_optional} \
      ~{true="-organism" false="" organism} \
      ~{true="-bg" false="" bg} \
      ~{true="-m" false="" define_mode_outputs} \
      ~{true="-tc" false="" tc} \
      ~{true="-ex" false="" ex} \
      ~{true="-log" false="" log} \
      ~{true="-color" false="" color} \
      ~{true="-show" false="" show} \
      ~{true="-stest" false="" s_test} \
      ~{true="-mp" false="" mp} \
      ~{true="-pw" false="" pw} \
      ~{true="-ph" false="" ph}
  >>>
  parameter_meta {
    file_name_reference: "The file name of the reference Experimental Matrix. Multiple references are acceptable. (default: None)"
    file_name_query: "The file name of the query Experimental Matrix. Multiple queries are acceptable. (default: None)"
    directory_name_output: "The directory name for the output files. For example, project name. (default: None)"
    title_shown_top: "The title shown on the top of the plot and also the folder name. (default: intersection_test)"
    group_data_optional: "Group the data by any optional column (for example, 'cell') of experimental matrix, or None. (default: None)"
    color_data_optional: "Color the data by any optional column (for example, 'cell') of experimental matrix, or None. (default: regions)"
    organism: "Define the organism. (default: hg19)"
    bg: "Define a BED file as background. If not defined, the background is whole genome according to the given organism. (default: None)"
    define_mode_outputs: "Define the mode of calculating intersection. 'count' outputs the number of overlapped regions.'bp' outputs the coverage(basepair) of intersection. (default: count)"
    tc: "Define the threshold(in percentage) of reference length for intersection counting. For example, '20' means that the query which overlaps more than 20% of reference is counted as intersection. (default: False)"
    ex: "Define the extension(in bp) of reference length for intersection counting. For example, '20' means that each region of reference is extended by 20 bp in order to include proximal queries. (default: 0)"
    log: "Set y axis of the plot in log scale."
    color: "Define the specific colors with the given column \"color\" in experimental matrix. The color should be in the format of matplotlib.colors. For example, \"r\" for red, \"b\" for blue, or \"(100, 35, 138)\" for RGB. (default: False)"
    show: "Show the figure in the screen. (default: False)"
    s_test: "Define the repetition time of random subregion test between reference and query. (default: 0)"
    mp: "Define the number of cores for parallel computation. (default: 4)"
    pw: "Define the width of single panel. (default: 3)"
    ph: "Define the height of single panel. (default: 3)"
  }
}