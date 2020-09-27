version 1.0

task Unimodxml {
  command <<<
    unimod_xml
  >>>
  output {
    File out_stdout = stdout()
  }
}