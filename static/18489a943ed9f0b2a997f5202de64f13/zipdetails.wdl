version 1.0

task Zipdetails {
  input {
    Boolean? verbose_output_stuff
  }
  command <<<
    zipdetails \
      ~{if (verbose_output_stuff) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose_output_stuff: "Verbose - output more stuff"
  }
  output {
    File out_stdout = stdout()
  }
}