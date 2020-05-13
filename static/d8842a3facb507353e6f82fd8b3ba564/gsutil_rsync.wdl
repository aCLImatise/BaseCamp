version 1.0

task GsutilRsync {
  input {
    Boolean aA
    Boolean cC
    Boolean cC
    Boolean dD
    Boolean eE
    Boolean nN
    Boolean pP
    Boolean rR
    Boolean uU
    Boolean xX
    String? srcSrcUrl
    String? dstDstUrl
  }
  command <<<
    gsutil rsync \
      ~{srcSrcUrl} \
      ~{true="-a" false="" aA} \
      ~{true="-c" false="" cC} \
      ~{true="-C" false="" cC} \
      ~{true="-d" false="" dD} \
      ~{true="-e" false="" eE} \
      ~{true="-n" false="" nN} \
      ~{true="-p" false="" pP} \
      ~{true="-r" false="" rR} \
      ~{true="-U" false="" uU} \
      ~{true="-x" false="" xX} \
      ~{dstDstUrl}
  >>>
}