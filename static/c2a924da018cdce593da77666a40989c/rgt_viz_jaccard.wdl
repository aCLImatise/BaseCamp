version 1.0

task RgtvizJaccard {
  input {
    Directory? directory_name_output
    Boolean? file_name_reference
    Boolean? file_name_query
    Boolean? title_shown_thefolder
    Boolean? rt
    String? group_data_none
    String? color_data_optional
    Int? organism
    Boolean? n_log
    Boolean? color
    Boolean? show
    Boolean? table
    Boolean? pw
    Boolean? ph
  }
  command <<<
    rgt_viz jaccard \
      ~{if defined(directory_name_output) then ("-o " +  '"' + directory_name_output + '"') else ""} \
      ~{if (file_name_reference) then "-r" else ""} \
      ~{if (file_name_query) then "-q" else ""} \
      ~{if (title_shown_thefolder) then "-t" else ""} \
      ~{if (rt) then "-rt" else ""} \
      ~{if defined(group_data_none) then ("-g " +  '"' + group_data_none + '"') else ""} \
      ~{if defined(color_data_optional) then ("-c " +  '"' + color_data_optional + '"') else ""} \
      ~{if defined(organism) then ("-organism " +  '"' + organism + '"') else ""} \
      ~{if (n_log) then "-nlog" else ""} \
      ~{if (color) then "-color" else ""} \
      ~{if (show) then "-show" else ""} \
      ~{if (table) then "-table" else ""} \
      ~{if (pw) then "-pw" else ""} \
      ~{if (ph) then "-ph" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    directory_name_output: "The directory name for the output files. For example,\\nproject name. (default: None)"
    file_name_reference: "The file name of the reference Experimental Matrix.\\nMultiple references are acceptable. (default: None)"
    file_name_query: "The file name of the query Experimental Matrix. Multiple\\nqueries are acceptable. (default: None)"
    title_shown_thefolder: "The title shown on the top of the plot and also the\\nfolder name. (default: jaccard_test)"
    rt: "Define how many times to run the randomization.\\n(default: 500)"
    group_data_none: "Group the data by any optional column (for example,\\n'cell') of experimental matrix, or None. (default: None)"
    color_data_optional: "Color the data by any optional column (for example,\\n'cell') of experimental matrix, or None. (default:\\nregions)"
    organism: "Define the organism. (default: hg19)"
    n_log: "Set y axis of the plot not in log scale. (default: True)"
    color: "Define the specific colors with the given column \\\"color\\\"\\nin experimental matrix. The color should be in the\\nformat of matplotlib.colors. For example, \\\"r\\\" for red,\\n\\\"b\\\" for blue, or \\\"(100, 35, 138)\\\" for RGB. (default:\\nFalse)"
    show: "Show the figure in the screen. (default: False)"
    table: "Store the tables of the figure in text format. (default:\\nFalse)"
    pw: "Define the width of single panel. (default: 3)"
    ph: "Define the height of single panel. (default: 3)"
  }
  output {
    File out_stdout = stdout()
    Directory out_directory_name_output = "${in_directory_name_output}"
  }
}