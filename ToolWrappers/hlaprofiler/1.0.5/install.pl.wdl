version 1.0

task Installpl {
  input {
    String make
  }
  command <<<
    install_pl \
      ~{make}
  >>>
  parameter_meta {
    make: "make install"
  }
  output {
    File out_stdout = stdout()
  }
}