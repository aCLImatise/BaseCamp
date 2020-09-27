version 1.0

task SVGdll {
  command <<<
    SVG_dll
  >>>
  output {
    File out_stdout = stdout()
  }
}