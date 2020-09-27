version 1.0

task RawN50 {
  input {
    String contigs_dot_fa
  }
  command <<<
    raw_n50 \
      ~{contigs_dot_fa}
  >>>
  parameter_meta {
    contigs_dot_fa: ""
  }
  output {
    File out_stdout = stdout()
  }
}