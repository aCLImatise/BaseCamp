version 1.0

task RemoveRedundantVariationsVariantsFile {
  input {
    String? referenceReferenceFastA
    String? variantsVariantsFile
  }
  command <<<
    remove-redundant-variations variants-file \
      ~{referenceReferenceFastA} \
      ~{variantsVariantsFile}
  >>>
}