version 1.0

task RgtVizCombinatorial {
  input {
    String? directory_name_output
    Boolean? file_name_reference
    Boolean? file_name_query
    Boolean? title_shown_top
    String? group_data_optional
    String? color_data_optional
    String? organism
    String? bg
    String? define_mode_outputs
    String? tc
    String? ex
    Boolean? log
    Boolean? color
    Boolean? venn
    Boolean? show
    String? s_test
    Boolean? pw
    Boolean? ph
  }
  command <<<
    rgt-viz combinatorial \
      ~{if defined(directory_name_output) then ("-o " +  '"' + directory_name_output + '"') else ""} \
      ~{true="-r" false="" file_name_reference} \
      ~{true="-q" false="" file_name_query} \
      ~{true="-t" false="" title_shown_top} \
      ~{if defined(group_data_optional) then ("-g " +  '"' + group_data_optional + '"') else ""} \
      ~{if defined(color_data_optional) then ("-c " +  '"' + color_data_optional + '"') else ""} \
      ~{if defined(organism) then ("-organism " +  '"' + organism + '"') else ""} \
      ~{if defined(bg) then ("-bg " +  '"' + bg + '"') else ""} \
      ~{if defined(define_mode_outputs) then ("-m " +  '"' + define_mode_outputs + '"') else ""} \
      ~{if defined(tc) then ("-tc " +  '"' + tc + '"') else ""} \
      ~{if defined(ex) then ("-ex " +  '"' + ex + '"') else ""} \
      ~{true="-log" false="" log} \
      ~{true="-color" false="" color} \
      ~{true="-venn" false="" venn} \
      ~{true="-show" false="" show} \
      ~{if defined(s_test) then ("-stest " +  '"' + s_test + '"') else ""} \
      ~{true="-pw" false="" pw} \
      ~{true="-ph" false="" ph}
  >>>
  parameter_meta {
    directory_name_output: "The directory name for the output files. For example, project name. (default: None)"
    file_name_reference: "The file name of the reference Experimental Matrix. Multiple references are acceptable. (default: None)"
    file_name_query: "The file name of the query Experimental Matrix. Multiple queries are acceptable. (default: None)"
    title_shown_top: "The title shown on the top of the plot and also the folder name. (default: combinatorial_test)"
    group_data_optional: "Group the data by any optional column (for example, 'cell') of experimental matrix, or None. (default: None)"
    color_data_optional: "Color the data by any optional column (for example, 'cell') of experimental matrix, or None. (default: regions)"
    organism: "Define the organism. (default: hg19)"
    bg: "Define a BED file as background. If not defined, the background is whole genome according to the given organism. (default: None)"
    define_mode_outputs: "Define the mode of calculating intersection. 'count' outputs the number of overlapped regions.'bp' outputs the coverage(basepair) of intersection. (default: count)"
    tc: "Define the threshold(in percentage) of reference length for intersection counting. For example, '20' means that the query which overlaps more than 20% of reference is counted as intersection. (default: False)"
    ex: "Define the extension(in percentage) of reference length for intersection counting. For example, '20' means that each region of reference is extended by 20% in order to include proximal queries. (default: 0)"
    log: "Set y axis of the plot in log scale. (default: False)"
    color: "Define the specific colors with the given column \"color\" in experimental matrix. The color should be in the format of matplotlib.colors. For example, \"r\" for red, \"b\" for blue, or \"(100, 35, 138)\" for RGB. (default: False)"
    venn: "Show the Venn diagram of the combinatorials of references. (default: False)"
    show: "Show the figure in the screen. (default: False)"
    s_test: "Define the repetition time of random subregion test between reference and query. (default: 0)"
    pw: "Define the width of single panel. (default: 3)"
    ph: "Define the height of single panel. (default: 3)"
  }
}