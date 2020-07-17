version 1.0

task TripailleExpressionAddBiomaterial {
  input {
    String? analysis_id
    Boolean? no_wait
    String organism_id
    File file_path
  }
  command <<<
    tripaille expression add_biomaterial \
      ~{organism_id} \
      ~{file_path} \
      ~{if defined(analysis_id) then ("--analysis_id " +  '"' + analysis_id + '"') else ""} \
      ~{true="--no_wait" false="" no_wait}
  >>>
  parameter_meta {
    analysis_id: "The id of the associated analysis. Required for TripalV3"
    no_wait: "Do not wait for job to complete"
    organism_id: ""
    file_path: ""
  }
}