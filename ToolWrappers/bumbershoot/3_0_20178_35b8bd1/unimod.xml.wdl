version 1.0

task Unimodxml {
  command <<<
    unimod_xml
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}