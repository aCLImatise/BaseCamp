version 1.0

task Bedgraph2wigpl {
  input {
    Boolean? bed_graph_file
    File? output_file
    Boolean? span
    String? var_output
    String? is
  }
  command <<<
    bedgraph2wig_pl \
      ~{var_output} \
      ~{is} \
      ~{if (bed_graph_file) then "--bedgraphfile" else ""} \
      ~{if (output_file) then "--outputfile" else ""} \
      ~{if (span) then "--span" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bed_graph_file: ": The path to the bedgraphffile"
    output_file: ": The file where the output should be saved. If not supplied, the output is printed to STDOUT"
    span: ": Use span notation (see http://genome.ucsc.edu/goldenPath/help/wiggle.html"
    var_output: ""
    is: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}