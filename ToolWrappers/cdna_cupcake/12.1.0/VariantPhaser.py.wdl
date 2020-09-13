version 1.0

task VariantPhaserpy {
  command <<<
    VariantPhaser_py
  >>>
  output {
    File out_stdout = stdout()
  }
}