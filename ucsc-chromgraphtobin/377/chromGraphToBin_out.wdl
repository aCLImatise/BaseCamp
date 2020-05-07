version 1.0

task ChromGraphToBinOut.chromGraph {
  input {
    String? inInTab
    String? outOutChromGraph
  }
  command <<<
    chromGraphToBin out.chromGraph \
      ~{inInTab} \
      ~{outOutChromGraph}
  >>>
}