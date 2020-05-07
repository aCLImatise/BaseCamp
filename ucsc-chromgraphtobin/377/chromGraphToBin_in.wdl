version 1.0

task ChromGraphToBinIn.tab {
  input {
    String? outOutChromGraph
  }
  command <<<
    chromGraphToBin in.tab \
      ~{outOutChromGraph}
  >>>
}