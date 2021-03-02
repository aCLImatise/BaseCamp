version 1.0

task TripailleExpressionAddBiomaterial {
  input {
    Int? analysis_id
    Boolean? no_wait
    String file_type
  }
  command <<<
    tripaille expression add_biomaterial \
      ~{file_type} \
      ~{if defined(analysis_id) then ("--analysis_id " +  '"' + analysis_id + '"') else ""} \
      ~{if (no_wait) then "--no_wait" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    analysis_id: "The id of the associated analysis. Required for TripalV3"
    no_wait: "Do not wait for job to complete"
    file_type: "Add a new biomaterial file to the database"
  }
  output {
    File out_stdout = stdout()
  }
}