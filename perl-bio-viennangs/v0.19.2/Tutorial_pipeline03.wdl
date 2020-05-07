version 1.0

task TutorialPipeline03.pl {
  input {
    Boolean outOut
    Boolean baseurlBaseurl
    Boolean bigBigBeds
    Boolean bigwigsBigwigs
    Boolean manMan
  }
  command <<<
    Tutorial_pipeline03.pl \
      ~{true="--out" false="" outOut} \
      ~{true="--baseurl" false="" baseurlBaseurl} \
      ~{true="--bigbeds" false="" bigBigBeds} \
      ~{true="--bigwigs" false="" bigwigsBigwigs} \
      ~{true="--man" false="" manMan}
  >>>
}