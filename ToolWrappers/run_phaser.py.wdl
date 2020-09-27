version 1.0

task RunPhaserpy {
  command <<<
    run_phaser_py
  >>>
  output {
    File out_stdout = stdout()
  }
}