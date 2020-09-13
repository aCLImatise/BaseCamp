version 1.0

task FermiTrimseq {
  input {
    Boolean? n
  }
  command <<<
    fermi trimseq \
      ~{if (n) then "-N" else ""}
  >>>
  parameter_meta {
    n: ""
  }
  output {
    File out_stdout = stdout()
  }
}