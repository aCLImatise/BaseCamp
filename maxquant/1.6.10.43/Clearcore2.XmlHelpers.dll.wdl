version 1.0

task Clearcore2XmlHelpersdll {
  command <<<
    Clearcore2_XmlHelpers_dll
  >>>
  output {
    File out_stdout = stdout()
  }
}