version 1.0

task TripailleAnalysisSync {
  input {
    String? analysis
    String? analysis_id
    String? job_name
    Boolean? no_wait
  }
  command <<<
    tripaille analysis sync \
      ~{if defined(analysis) then ("--analysis " +  '"' + analysis + '"') else ""} \
      ~{if defined(analysis_id) then ("--analysis_id " +  '"' + analysis_id + '"') else ""} \
      ~{if defined(job_name) then ("--job_name " +  '"' + job_name + '"') else ""} \
      ~{true="--no_wait" false="" no_wait}
  >>>
  parameter_meta {
    analysis: "Analysis name"
    analysis_id: "ID of the analysis to sync"
    job_name: "Name of the job"
    no_wait: "Return immediately without waiting for job completion"
  }
}