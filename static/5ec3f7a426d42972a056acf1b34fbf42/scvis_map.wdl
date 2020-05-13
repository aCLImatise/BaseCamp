version 1.0

task ScvisMap {
  input {
    String dataDataMatrixFile
    String configConfigFile
    String outOutDir
    String dataDataLabelFile
    String prePreTrainedModelFile
    String normalizeNormalize
  }
  command <<<
    scvis map \
      ~{if defined(dataDataMatrixFile) then ("--data_matrix_file " +  '"' + dataDataMatrixFile + '"') else ""} \
      ~{if defined(configConfigFile) then ("--config_file " +  '"' + configConfigFile + '"') else ""} \
      ~{if defined(outOutDir) then ("--out_dir " +  '"' + outOutDir + '"') else ""} \
      ~{if defined(dataDataLabelFile) then ("--data_label_file " +  '"' + dataDataLabelFile + '"') else ""} \
      ~{if defined(prePreTrainedModelFile) then ("--pretrained_model_file " +  '"' + prePreTrainedModelFile + '"') else ""} \
      ~{if defined(normalizeNormalize) then ("--normalize " +  '"' + normalizeNormalize + '"') else ""}
  >>>
}