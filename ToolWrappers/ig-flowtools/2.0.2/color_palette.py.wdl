version 1.0

task ColorPalettepy {
  command <<<
    color_palette_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}