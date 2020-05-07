version 1.0

task FaQCs {
  input {
    Boolean adapterAdapter
    Boolean rateRate
    Boolean polyaPolya
    Boolean artifactArtifactFile
    Boolean minMinL
    Boolean avgAvgQ
    Boolean nN
    Boolean lcLc
    Boolean phiPhiX
    Boolean asciiAscii
    Boolean outOutAscii
    Boolean prefixPrefix
    Boolean statsStats
    Boolean dD
    Boolean debugDebug
  }
  command <<<
    FaQCs \
      ~{true="--adapter" false="" adapterAdapter} \
      ~{true="--rate" false="" rateRate} \
      ~{true="--polyA" false="" polyaPolya} \
      ~{true="--artifactFile" false="" artifactArtifactFile} \
      ~{true="--min_L" false="" minMinL} \
      ~{true="--avg_q" false="" avgAvgQ} \
      ~{true="-n" false="" nN} \
      ~{true="--lc" false="" lcLc} \
      ~{true="--phiX" false="" phiPhiX} \
      ~{true="--ascii" false="" asciiAscii} \
      ~{true="--out_ascii" false="" outOutAscii} \
      ~{true="--prefix" false="" prefixPrefix} \
      ~{true="--stats" false="" statsStats} \
      ~{true="-d" false="" dD} \
      ~{true="--debug" false="" debugDebug}
  >>>
}