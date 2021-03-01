version 1.0

task RgtvizProjection {
  input {
    Boolean? file_name_multiplereferences
    Boolean? file_name_query
    Directory? directory_name_output
    Boolean? title_shown_top
    Boolean? group_data_matrix
    Boolean? color_data_matrix
    Boolean? bg
    Boolean? union
    Boolean? organism
    Boolean? log
    Boolean? color
    Boolean? show
    Boolean? table
    Boolean? bed
    Boolean? pw
    Boolean? ph
    Boolean? cfp
    Boolean? load
  }
  command <<<
    rgt_viz projection \
      ~{if (file_name_multiplereferences) then "-r" else ""} \
      ~{if (file_name_query) then "-q" else ""} \
      ~{if (directory_name_output) then "-o" else ""} \
      ~{if (title_shown_top) then "-t" else ""} \
      ~{if (group_data_matrix) then "-g" else ""} \
      ~{if (color_data_matrix) then "-c" else ""} \
      ~{if (bg) then "-bg" else ""} \
      ~{if (union) then "-union" else ""} \
      ~{if (organism) then "-organism" else ""} \
      ~{if (log) then "-log" else ""} \
      ~{if (color) then "-color" else ""} \
      ~{if (show) then "-show" else ""} \
      ~{if (table) then "-table" else ""} \
      ~{if (bed) then "-bed" else ""} \
      ~{if (pw) then "-pw" else ""} \
      ~{if (ph) then "-ph" else ""} \
      ~{if (cfp) then "-cfp" else ""} \
      ~{if (load) then "-load" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    file_name_multiplereferences: "The file name of the reference Experimental Matrix. Multiple\\nreferences are acceptable. (default: None)"
    file_name_query: "The file name of the query Experimental Matrix. Multiple\\nqueries are acceptable. (default: None)"
    directory_name_output: "The directory name for the output files. For example, project\\nname. (default: None)"
    title_shown_top: "The title shown on the top of the plot and also the folder\\nname. (default: projection_test)"
    group_data_matrix: "Group the data by any optional column (for example, 'cell') of\\nexperimental matrix, or None. (default: None)"
    color_data_matrix: "Color the data by any optional column (for example, 'cell') of\\nexperimental matrix, or None. (default: regions)"
    bg: "Define a BED file as background. If not defined, the\\nbackground is whole genome according to the given organism.\\n(default: None)"
    union: "Take the union of references as background for binominal test.\\n(default: False)"
    organism: "Define the organism. (default: hg19)"
    log: "Set y axis of the plot in log scale. (default: False)"
    color: "Define the specific colors with the given column \\\"color\\\" in\\nexperimental matrix. The color should be in the format of\\nmatplotlib.colors. For example, \\\"r\\\" for red, \\\"b\\\" for blue, or\\n\\\"(100, 35, 138)\\\" for RGB. (default: False)"
    show: "Show the figure in the screen. (default: False)"
    table: "Store the tables of the figure in text format. (default:\\nFalse)"
    bed: "Output BED files for the regions of query which overlap the\\nreference. (default: False)"
    pw: "Define the width of single panel. (default: 5)"
    ph: "Define the height of single panel. (default: 3)"
    cfp: "Define the cutoff of the proportion. (default: 0)"
    load: "Load the BED files later during processing, which saves memory\\nusage when dealing with large number of BED files.\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_directory_name_output = "${in_directory_name_output}"
  }
}