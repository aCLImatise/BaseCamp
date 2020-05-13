version 1.0

task Seqmerge {
  input {
    String sS
    String? inputInput
    String? outputOutput
  }
  command <<<
    seqmerge \
      ~{inputInput} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{outputOutput}
  >>>
}