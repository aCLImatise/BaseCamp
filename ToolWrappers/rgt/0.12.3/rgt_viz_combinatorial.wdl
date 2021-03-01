version 1.0

task RgtvizCombinatorial {
  input {
    Directory? directory_name_output
    Boolean? file_name_reference
    Boolean? file_name_query
    Boolean? title_shown_thefolder
    String? group_data_none
    String? color_data_optional
    Int? organism
    File? bg
    String? define_mode_number
    Int? tc
    Int? ex
    Boolean? log
    Boolean? color
    Boolean? venn
    Boolean? show
    Int? s_test
    Boolean? pw
    Boolean? ph
  }
  command <<<
    rgt_viz combinatorial \
      ~{if defined(directory_name_output) then ("-o " +  '"' + directory_name_output + '"') else ""} \
      ~{if (file_name_reference) then "-r" else ""} \
      ~{if (file_name_query) then "-q" else ""} \
      ~{if (title_shown_thefolder) then "-t" else ""} \
      ~{if defined(group_data_none) then ("-g " +  '"' + group_data_none + '"') else ""} \
      ~{if defined(color_data_optional) then ("-c " +  '"' + color_data_optional + '"') else ""} \
      ~{if defined(organism) then ("-organism " +  '"' + organism + '"') else ""} \
      ~{if defined(bg) then ("-bg " +  '"' + bg + '"') else ""} \
      ~{if defined(define_mode_number) then ("-m " +  '"' + define_mode_number + '"') else ""} \
      ~{if defined(tc) then ("-tc " +  '"' + tc + '"') else ""} \
      ~{if defined(ex) then ("-ex " +  '"' + ex + '"') else ""} \
      ~{if (log) then "-log" else ""} \
      ~{if (color) then "-color" else ""} \
      ~{if (venn) then "-venn" else ""} \
      ~{if (show) then "-show" else ""} \
      ~{if defined(s_test) then ("-stest " +  '"' + s_test + '"') else ""} \
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
    title_shown_thefolder: "The title shown on the top of the plot and also the\\nfolder name. (default: combinatorial_test)"
    group_data_none: "Group the data by any optional column (for example,\\n'cell') of experimental matrix, or None. (default: None)"
    color_data_optional: "Color the data by any optional column (for example,\\n'cell') of experimental matrix, or None. (default:\\nregions)"
    organism: "Define the organism. (default: hg19)"
    bg: "Define a BED file as background. If not defined, the\\nbackground is whole genome according to the given\\norganism. (default: None)"
    define_mode_number: "Define the mode of calculating intersection. 'count'\\noutputs the number of overlapped regions.'bp' outputs\\nthe coverage(basepair) of intersection. (default: count)"
    tc: "Define the threshold(in percentage) of reference length\\nfor intersection counting. For example, '20' means that\\nthe query which overlaps more than 20% of reference is\\ncounted as intersection. (default: False)"
    ex: "Define the extension(in percentage) of reference length\\nfor intersection counting. For example, '20' means that\\neach region of reference is extended by 20% in order to\\ninclude proximal queries. (default: 0)"
    log: "Set y axis of the plot in log scale. (default: False)"
    color: "Define the specific colors with the given column \\\"color\\\"\\nin experimental matrix. The color should be in the\\nformat of matplotlib.colors. For example, \\\"r\\\" for red,\\n\\\"b\\\" for blue, or \\\"(100, 35, 138)\\\" for RGB. (default:\\nFalse)"
    venn: "Show the Venn diagram of the combinatorials of\\nreferences. (default: False)"
    show: "Show the figure in the screen. (default: False)"
    s_test: "Define the repetition time of random subregion test\\nbetween reference and query. (default: 0)"
    pw: "Define the width of single panel. (default: 3)"
    ph: "Define the height of single panel. (default: 3)"
  }
  output {
    File out_stdout = stdout()
    Directory out_directory_name_output = "${in_directory_name_output}"
  }
}