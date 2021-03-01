version 1.0

task Openslidewritepng {
  command <<<
    openslide_write_png
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}