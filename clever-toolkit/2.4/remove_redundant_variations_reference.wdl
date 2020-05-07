version 1.0

task RemoveRedundantVariationsReference.fasta {
  input {
    String? variantsVariantsFile
  }
  command <<<
    remove-redundant-variations reference.fasta \
      ~{variantsVariantsFile}
  >>>
}