version 1.0

task Bedgraph2wig.pl {
  input {
    Boolean bedBedGraphFile
    Boolean outputOutputFile
    Boolean spanSpan
    String? outputOutput
    String? isIs
    String? stdoutStdout
  }
  command <<<
    bedgraph2wig.pl \
      ~{outputOutput} \
      ~{true="--bedgraphfile" false="" bedBedGraphFile} \
      ~{true="--outputfile" false="" outputOutputFile} \
      ~{true="--span" false="" spanSpan} \
      ~{isIs} \
      ~{stdoutStdout}
  >>>
}