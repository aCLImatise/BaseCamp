version 1.0

task Cai {
  input {
    Boolean? c_file
  }
  command <<<
    cai \
      ~{if (c_file) then "-cfile" else ""}
  >>>
  parameter_meta {
    c_file: "codon      [Eyeast_cai.cut] Codon usage table name"
  }
  output {
    File out_stdout = stdout()
  }
}