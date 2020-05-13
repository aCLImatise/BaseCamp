version 1.0

task Shigatyper {
  input {
    String nN
    Boolean verboseVerbose
    String? readRead1
    String? readRead2
  }
  command <<<
    shigatyper \
      ~{readRead1} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{readRead2}
  >>>
}