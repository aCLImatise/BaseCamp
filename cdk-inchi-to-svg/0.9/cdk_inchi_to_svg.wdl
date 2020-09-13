version 1.0

task Cdkinchitosvg {
  command <<<
    cdk_inchi_to_svg
  >>>
  output {
    File out_stdout = stdout()
  }
}