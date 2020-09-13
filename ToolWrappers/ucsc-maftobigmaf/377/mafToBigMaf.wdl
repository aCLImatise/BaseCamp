version 1.0

task MafToBigMaf {
  input {
    String? xxx
    String referenced_b
    String input_dot_maf
  }
  command <<<
    mafToBigMaf \
      ~{referenced_b} \
      ~{input_dot_maf} \
      ~{if defined(xxx) then ("-xxx " +  '"' + xxx + '"') else ""}
  >>>
  parameter_meta {
    xxx: ""
    referenced_b: ""
    input_dot_maf: ""
  }
  output {
    File out_stdout = stdout()
  }
}