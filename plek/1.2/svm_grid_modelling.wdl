version 1.0

task SvmGridModelling.py {
  input {
    String? gridGridPy
    String? gridGridOptions
    String? svmSvmOptions
    String? datasetDataset
  }
  command <<<
    svm_grid_modelling.py \
      ~{gridGridPy} \
      ~{gridGridOptions} \
      ~{svmSvmOptions} \
      ~{datasetDataset}
  >>>
}