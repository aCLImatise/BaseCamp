version 1.0

task TripailleAnalysisGetAnalysesTripal {
  input {
    Int? analysis_id
  }
  command <<<
    tripaille analysis get_analyses_tripal \
      ~{if defined(analysis_id) then ("--analysis_id " +  '"' + analysis_id + '"') else ""}
  >>>
  parameter_meta {
    analysis_id: "An analysis entity/node ID"
  }
  output {
    File out_stdout = stdout()
  }
}