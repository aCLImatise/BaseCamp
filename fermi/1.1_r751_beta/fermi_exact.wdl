version 1.0

task FermiExact {
  input {
    Boolean msMs
    String? idxIdxBaseBwt
    String? srcSrcFa
  }
  command <<<
    fermi exact \
      ~{idxIdxBaseBwt} \
      ~{true="-Ms" false="" msMs} \
      ~{srcSrcFa}
  >>>
}