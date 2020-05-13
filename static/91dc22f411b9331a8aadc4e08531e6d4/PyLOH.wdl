version 1.0

task PyLOH.pyBAFHeatmapFilenameBase {
  input {
    File? filenameFilenameBase
  }
  command <<<
    PyLOH.py BAF_heatmap filename_base \
      ~{filenameFilenameBase}
  >>>
}