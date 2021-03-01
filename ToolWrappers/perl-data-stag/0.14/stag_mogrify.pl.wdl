version 1.0

task Stagmogrifypl {
  input {
    String stag_mogrify
  }
  command <<<
    stag_mogrify_pl \
      ~{stag_mogrify}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    stag_mogrify: "-w itext file1.xml file2.xml"
  }
  output {
    File out_stdout = stdout()
  }
}