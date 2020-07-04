version 1.0

task AnalyseSeqs {
  input {
    Boolean? x
    Boolean? q
    String? bsw_nm
  }
  command <<<
    AnalyseSeqs \
      ~{bsw_nm} \
      ~{true="-X" false="" x} \
      ~{true="-Q" false="" q}
  >>>
  parameter_meta {
    x: ""
    q: ""
    bsw_nm: ""
  }
}