version 1.0

task PyLOH.pyBAFHeatmap {
  input {
    File filename_base
  }
  command <<<
    PyLOH.py BAF_heatmap \
      ~{filename_base}
  >>>
  parameter_meta {
    filename_base: "Base name of preprocessed files created."
  }
}