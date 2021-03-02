version 1.0

task Backtranseq {
  input {
    Boolean? c_file
  }
  command <<<
    _backtranseq \
      ~{if (c_file) then "-cfile" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    c_file: "codon      [Ehuman.cut] Codon usage table name"
  }
  output {
    File out_stdout = stdout()
  }
}