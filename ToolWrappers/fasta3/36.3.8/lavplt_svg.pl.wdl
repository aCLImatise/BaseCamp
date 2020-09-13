version 1.0

task LavpltSvgpl {
  command <<<
    lavplt_svg_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}