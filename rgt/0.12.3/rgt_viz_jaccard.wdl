version 1.0

task RgtVizJaccard {
  input {
    String? directory_name_output
    Boolean? file_name_reference
    Boolean? file_name_query
    Boolean? title_shown_default
    Boolean? rt
    String? group_data_optional
    String? color_data_optional
    String? organism
    Boolean? n_log
    Boolean? color
    Boolean? show
    Boolean? table
    Boolean? pw
    Boolean? ph
  }
  command <<<
    rgt-viz jaccard \
      ~{if defined(directory_name_output) then ("-o " +  '"' + directory_name_output + '"') else ""} \
      ~{true="-r" false="" file_name_reference} \
      ~{true="-q" false="" file_name_query} \
      ~{true="-t" false="" title_shown_default} \
      ~{true="-rt" false="" rt} \
      ~{if defined(group_data_optional) then ("-g " +  '"' + group_data_optional + '"') else ""} \
      ~{if defined(color_data_optional) then ("-c " +  '"' + color_data_optional + '"') else ""} \
      ~{if defined(organism) then ("-organism " +  '"' + organism + '"') else ""} \
      ~{true="-nlog" false="" n_log} \
      ~{true="-color" false="" color} \
      ~{true="-show" false="" show} \
      ~{true="-table" false="" table} \
      ~{true="-pw" false="" pw} \
      ~{true="-ph" false="" ph}
  >>>
  parameter_meta {
    directory_name_output: "The directory name for the output files. For example, project name. (default: None)"
    file_name_reference: "The file name of the reference Experimental Matrix. Multiple references are acceptable. (default: None)"
    file_name_query: "The file name of the query Experimental Matrix. Multiple queries are acceptable. (default: None)"
    title_shown_default: "The title shown on the top of the plot and also the folder name. (default: jaccard_test)"
    rt: "Define how many times to run the randomization. (default: 500)"
    group_data_optional: "Group the data by any optional column (for example, 'cell') of experimental matrix, or None. (default: None)"
    color_data_optional: "Color the data by any optional column (for example, 'cell') of experimental matrix, or None. (default: regions)"
    organism: "Define the organism. (default: hg19)"
    n_log: "Set y axis of the plot not in log scale. (default: True)"
    color: "Define the specific colors with the given column \"color\" in experimental matrix. The color should be in the format of matplotlib.colors. For example, \"r\" for red, \"b\" for blue, or \"(100, 35, 138)\" for RGB. (default: False)"
    show: "Show the figure in the screen. (default: False)"
    table: "Store the tables of the figure in text format. (default: False)"
    pw: "Define the width of single panel. (default: 3)"
    ph: "Define the height of single panel. (default: 3)"
  }
}