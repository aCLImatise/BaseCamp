version 1.0

task Installpl {
  input {
    String make
  }
  command <<<
    install_pl \
      ~{make}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    make: "make install"
  }
  output {
    File out_stdout = stdout()
  }
}