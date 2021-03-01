version 1.0

task VariantPhaseCleanerpy {
  command <<<
    VariantPhaseCleaner_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}