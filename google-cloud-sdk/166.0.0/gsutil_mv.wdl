version 1.0

task GsutilMv {
  input {
    Boolean pP
    String? srcSrcUrl
    String? dstDstUrl
  }
  command <<<
    gsutil mv \
      ~{srcSrcUrl} \
      ~{true="-p" false="" pP} \
      ~{dstDstUrl}
  >>>
}