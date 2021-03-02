version 1.0

task MegagtaFilterbylen {
  input {
    String cat
    String contigs_dot_fa
  }
  command <<<
    megagta filterbylen \
      ~{cat} \
      ~{contigs_dot_fa}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    cat: ""
    contigs_dot_fa: ""
  }
  output {
    File out_stdout = stdout()
  }
}