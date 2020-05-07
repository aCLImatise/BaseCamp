version 1.0

task SvmGridModellingSinglet.py {
  input {
    String? gridGridPy
    String? gridGridOptions
    String? svmSvmOptions
    String? datasetDataset
  }
  command <<<
    svm_grid_modelling_singlet.py \
      ~{gridGridPy} \
      ~{gridGridOptions} \
      ~{svmSvmOptions} \
      ~{datasetDataset}
  >>>
}