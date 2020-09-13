version 1.0

task MedpyWatershedpy {
  command <<<
    medpy_watershed_py
  >>>
  output {
    File out_stdout = stdout()
  }
}