version 1.0

task VariantPhaserpy {
  command <<<
    VariantPhaser_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}