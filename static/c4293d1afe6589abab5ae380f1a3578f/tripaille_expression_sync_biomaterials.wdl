version 1.0

task TripailleExpressionSyncBiomaterials {
  input {
    String? ids
    Int? max_sync
    String? job_name
    Boolean? no_wait
    String status
  }
  command <<<
    tripaille expression sync_biomaterials \
      ~{status} \
      ~{if defined(ids) then ("--ids " +  '"' + ids + '"') else ""} \
      ~{if defined(max_sync) then ("--max_sync " +  '"' + max_sync + '"') else ""} \
      ~{if defined(job_name) then ("--job_name " +  '"' + job_name + '"') else ""} \
      ~{if (no_wait) then "--no_wait" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ids: "JSON list of ids of biomaterials to be synced (default:\\nall)  [default: []]"
    max_sync: "Maximum number of features to sync (default: all)"
    job_name: "Name of the job"
    no_wait: "Return immediately without waiting for job completion"
    status: "Options:"
  }
  output {
    File out_stdout = stdout()
  }
}