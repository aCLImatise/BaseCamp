version 1.0

task ChakinExpressionDeleteAllBiomaterials {
  input {
    Boolean confirmConfirm
  }
  command <<<
    chakin expression delete_all_biomaterials \
      ~{true="--confirm" false="" confirmConfirm}
  >>>
}