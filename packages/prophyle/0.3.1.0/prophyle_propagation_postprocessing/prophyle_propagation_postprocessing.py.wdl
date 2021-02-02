version 1.0

task ProphylePropagationPostprocessingpy {
  command <<<
    prophyle_propagation_postprocessing_py
  >>>
  output {
    File out_stdout = stdout()
  }
}