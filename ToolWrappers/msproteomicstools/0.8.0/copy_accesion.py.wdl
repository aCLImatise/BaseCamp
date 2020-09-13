version 1.0

task CopyAccesionpy {
  command <<<
    copy_accesion_py
  >>>
  output {
    File out_stdout = stdout()
  }
}