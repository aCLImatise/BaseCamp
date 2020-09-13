version 1.0

task TripailleFeatureSync {
  input {
    String? organism
    String? organism_id
    Int? max_sync
    String? types
    Int? ids
    String? job_name
    Boolean? no_wait
    String status
  }
  command <<<
    tripaille feature sync \
      ~{status} \
      ~{if defined(organism) then ("--organism " +  '"' + organism + '"') else ""} \
      ~{if defined(organism_id) then ("--organism_id " +  '"' + organism_id + '"') else ""} \
      ~{if defined(max_sync) then ("--max_sync " +  '"' + max_sync + '"') else ""} \
      ~{if defined(types) then ("--types " +  '"' + types + '"') else ""} \
      ~{if defined(ids) then ("--ids " +  '"' + ids + '"') else ""} \
      ~{if defined(job_name) then ("--job_name " +  '"' + job_name + '"') else ""} \
      ~{if (no_wait) then "--no_wait" else ""}
  >>>
  parameter_meta {
    organism: "Common name of the organism to sync"
    organism_id: "ID of the organism to sync"
    max_sync: "Maximum number of features to sync (default: all)"
    types: "List of types of records to be synced (e.g. gene mRNA,\\ndefault: all)"
    ids: "List of names of records to be synced (e.g. gene0001,\\ndefault: all)"
    job_name: "Name of the job"
    no_wait: "Return immediately without waiting for job completion"
    status: "Options:"
  }
  output {
    File out_stdout = stdout()
  }
}