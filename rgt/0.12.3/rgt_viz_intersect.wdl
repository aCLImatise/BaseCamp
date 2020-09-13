version 1.0

task RgtvizIntersect {
  input {
    Boolean? file_name_reference
    Boolean? file_name_query
    Directory? directory_name_output
    Boolean? title_shown_top
    Boolean? group_data_matrix
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
    rgt_viz intersect \
      ~{if (file_name_reference) then "-r" else ""} \
      ~{if (file_name_query) then "-q" else ""} \
      ~{if defined(directory_name_output) then ("-o " +  '"' + directory_name_output + '"') else ""} \
      ~{if (title_shown_top) then "-t" else ""} \
      ~{if (group_data_matrix) then "-g" else ""} \
      ~{if (color_data_optional) then "-c" else ""} \
      ~{if (organism) then "-organism" else ""} \
      ~{if (bg) then "-bg" else ""} \
      ~{if (define_mode_outputs) then "-m" else ""} \
      ~{if (tc) then "-tc" else ""} \
      ~{if (ex) then "-ex" else ""} \
      ~{if (log) then "-log" else ""} \
      ~{if (color) then "-color" else ""} \
      ~{if (show) then "-show" else ""} \
      ~{if (s_test) then "-stest" else ""} \
      ~{if (mp) then "-mp" else ""} \
      ~{if (pw) then "-pw" else ""} \
      ~{if (ph) then "-ph" else ""}
  >>>
  parameter_meta {
    file_name_reference: "The file name of the reference Experimental Matrix. Multiple\\nreferences are acceptable. (default: None)"
    file_name_query: "The file name of the query Experimental Matrix. Multiple\\nqueries are acceptable. (default: None)"
    directory_name_output: "The directory name for the output files. For example, project\\nname. (default: None)"
    title_shown_top: "The title shown on the top of the plot and also the folder\\nname. (default: intersection_test)"
    group_data_matrix: "Group the data by any optional column (for example, 'cell') of\\nexperimental matrix, or None. (default: None)"
    color_data_optional: "Color the data by any optional column (for example, 'cell') of\\nexperimental matrix, or None. (default: regions)"
    organism: "Define the organism. (default: hg19)"
    bg: "Define a BED file as background. If not defined, the\\nbackground is whole genome according to the given organism.\\n(default: None)"
    define_mode_outputs: "Define the mode of calculating intersection. 'count' outputs\\nthe number of overlapped regions.'bp' outputs the\\ncoverage(basepair) of intersection. (default: count)"
    tc: "Define the threshold(in percentage) of reference length for\\nintersection counting. For example, '20' means that the query\\nwhich overlaps more than 20% of reference is counted as\\nintersection. (default: False)"
    ex: "Define the extension(in bp) of reference length for\\nintersection counting. For example, '20' means that each\\nregion of reference is extended by 20 bp in order to include\\nproximal queries. (default: 0)"
    log: "Set y axis of the plot in log scale."
    color: "Define the specific colors with the given column \\\"color\\\" in\\nexperimental matrix. The color should be in the format of\\nmatplotlib.colors. For example, \\\"r\\\" for red, \\\"b\\\" for blue, or\\n\\\"(100, 35, 138)\\\" for RGB. (default: False)"
    show: "Show the figure in the screen. (default: False)"
    s_test: "Define the repetition time of random subregion test between\\nreference and query. (default: 0)"
    mp: "Define the number of cores for parallel computation. (default:\\n4)"
    pw: "Define the width of single panel. (default: 3)"
    ph: "Define the height of single panel. (default: 3)"
  }
  output {
    File out_stdout = stdout()
    Directory out_directory_name_output = "${in_directory_name_output}"
  }
}