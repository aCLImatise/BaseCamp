version 1.0

task TrinotateGetFeatureNameEncodingAttributespl {
  command <<<
    Trinotate_get_feature_name_encoding_attributes_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}