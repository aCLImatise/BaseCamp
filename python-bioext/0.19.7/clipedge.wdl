version 1.0

task Clipedge {
  input {
    String rR
    String? inputInput
    String? outputOutput
  }
  command <<<
    clipedge \
      ~{inputInput} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{outputOutput}
  >>>
}