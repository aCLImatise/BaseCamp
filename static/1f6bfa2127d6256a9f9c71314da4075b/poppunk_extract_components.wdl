version 1.0

task PoppunkExtractComponents.py {
  input {
    String? extractExtractComponents
    String? graphGraph
    String? outputOutput
  }
  command <<<
    poppunk_extract_components.py \
      ~{extractExtractComponents} \
      ~{graphGraph} \
      ~{outputOutput}
  >>>
}