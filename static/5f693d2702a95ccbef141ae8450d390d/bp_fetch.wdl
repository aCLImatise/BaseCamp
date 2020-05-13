version 1.0

task BpFetch.pl {
  input {
    Boolean fmtFmt
    Boolean accAcc
    Boolean dirDir
    String typeType
    String? netNet
    String? aceAce
  }
  command <<<
    bp_fetch.pl \
      ~{netNet} \
      ~{true="-fmt" false="" fmtFmt} \
      ~{true="-acc" false="" accAcc} \
      ~{true="-dir" false="" dirDir} \
      ~{if defined(typeType) then ("-type " +  '"' + typeType + '"') else ""} \
      ~{aceAce}
  >>>
}