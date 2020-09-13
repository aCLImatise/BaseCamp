version 1.0

task HomerSVGLogopm {
  command <<<
    HomerSVGLogo_pm
  >>>
  output {
    File out_stdout = stdout()
  }
}