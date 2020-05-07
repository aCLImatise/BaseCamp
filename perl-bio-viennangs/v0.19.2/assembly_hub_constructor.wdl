version 1.0

task AssemblyHubConstructor.pl {
  input {
    Boolean faFa
    Boolean inInFolder
    Boolean outOut
    Boolean baseurlBaseurl
    Boolean bigwigsBigwigs
    Boolean manMan
  }
  command <<<
    assembly_hub_constructor.pl \
      ~{true="--fa" false="" faFa} \
      ~{true="--infolder" false="" inInFolder} \
      ~{true="--out" false="" outOut} \
      ~{true="--baseurl" false="" baseurlBaseurl} \
      ~{true="--bigwigs" false="" bigwigsBigwigs} \
      ~{true="--man" false="" manMan}
  >>>
}