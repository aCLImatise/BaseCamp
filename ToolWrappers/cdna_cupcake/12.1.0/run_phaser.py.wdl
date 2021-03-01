version 1.0

task RunPhaserpy {
  command <<<
    run_phaser_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}