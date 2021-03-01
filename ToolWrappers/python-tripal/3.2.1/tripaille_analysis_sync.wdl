version 1.0

task TripailleAnalysisSync {
  input {
    String? analysis
    String? analysis_id
    String? job_name
    Boolean? no_wait
    String status
  }
  command <<<
    tripaille analysis sync \
      ~{status} \
      ~{if defined(analysis) then ("--analysis " +  '"' + analysis + '"') else ""} \
      ~{if defined(analysis_id) then ("--analysis_id " +  '"' + analysis_id + '"') else ""} \
      ~{if defined(job_name) then ("--job_name " +  '"' + job_name + '"') else ""} \
      ~{if (no_wait) then "--no_wait" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    analysis: "Analysis name"
    analysis_id: "ID of the analysis to sync"
    job_name: "Name of the job"
    no_wait: "Return immediately without waiting for job completion"
    status: "Options:"
  }
  output {
    File out_stdout = stdout()
  }
}