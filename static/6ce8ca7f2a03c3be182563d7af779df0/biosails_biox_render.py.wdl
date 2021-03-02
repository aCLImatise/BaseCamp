version 1.0

task Biosailsbioxrenderpy {
  command <<<
    biosails_biox_render_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}