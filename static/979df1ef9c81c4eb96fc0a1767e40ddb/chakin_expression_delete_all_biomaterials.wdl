version 1.0

task ChakinExpressionDeleteAllBiomaterials {
  input {
    Boolean? confirm
  }
  command <<<
    chakin expression delete_all_biomaterials \
      ~{true="--confirm" false="" confirm}
  >>>
  parameter_meta {
    confirm: "Confirm that you really do want to delete ALL of the biomaterials."
  }
}