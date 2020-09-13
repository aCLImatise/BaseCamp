version 1.0

task PyLOHpyBAFHeatmap {
  input {
    String filename_base
  }
  command <<<
    PyLOH_py BAF_heatmap \
      ~{filename_base}
  >>>
  parameter_meta {
    filename_base: "Base name of preprocessed files created."
  }
  output {
    File out_stdout = stdout()
  }
}