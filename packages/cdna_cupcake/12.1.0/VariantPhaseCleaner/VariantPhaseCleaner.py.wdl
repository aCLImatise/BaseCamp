version 1.0

task VariantPhaseCleanerpy {
  command <<<
    VariantPhaseCleaner_py
  >>>
  output {
    File out_stdout = stdout()
  }
}