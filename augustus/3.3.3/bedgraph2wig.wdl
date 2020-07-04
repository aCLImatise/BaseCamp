version 1.0

task Bedgraph2wig.pl {
  input {
    Boolean? bed_graph_file
    Boolean? output_file
    Boolean? span
    String? var_output
    String? is
    String? stdout
  }
  command <<<
    bedgraph2wig.pl \
      ~{var_output} \
      ~{is} \
      ~{stdout} \
      ~{true="--bedgraphfile" false="" bed_graph_file} \
      ~{true="--outputfile" false="" output_file} \
      ~{true="--span" false="" span}
  >>>
  parameter_meta {
    bed_graph_file: ": The path to the bedgraphffile"
    output_file: ": The file where the output should be saved. If not supplied, the output is printed to STDOUT"
    span: ": Use span notation (see http://genome.ucsc.edu/goldenPath/help/wiggle.html"
    var_output: ""
    is: ""
    stdout: ""
  }
}