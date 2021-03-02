version 1.0

task SVGdll {
  command <<<
    SVG_dll
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}