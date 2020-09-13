version 1.0

task FastaCheck {
  input {
    Boolean? hyphen
    Boolean? aa
    String in
  }
  command <<<
    fasta_check \
      ~{in} \
      ~{if (hyphen) then "-hyphen" else ""} \
      ~{if (aa) then "-aa" else ""}
  >>>
  parameter_meta {
    hyphen: ""
    aa: ""
    in: ""
  }
  output {
    File out_stdout = stdout()
  }
}