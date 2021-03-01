version 1.0

task CopyAccesionpy {
  command <<<
    copy_accesion_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}