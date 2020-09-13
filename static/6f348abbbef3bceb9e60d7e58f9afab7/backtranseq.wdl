version 1.0

task Backtranseq {
  input {
    Boolean? c_file
  }
  command <<<
    backtranseq \
      ~{if (c_file) then "-cfile" else ""}
  >>>
  parameter_meta {
    c_file: "codon      [Ehuman.cut] Codon usage table name"
  }
  output {
    File out_stdout = stdout()
  }
}