version 1.0

task TripailleOrganismSync {
  input {
    String? organism
    String? organism_id
    String? job_name
    Boolean? no_wait
    String status
  }
  command <<<
    tripaille organism sync \
      ~{status} \
      ~{if defined(organism) then ("--organism " +  '"' + organism + '"') else ""} \
      ~{if defined(organism_id) then ("--organism_id " +  '"' + organism_id + '"') else ""} \
      ~{if defined(job_name) then ("--job_name " +  '"' + job_name + '"') else ""} \
      ~{if (no_wait) then "--no_wait" else ""}
  >>>
  parameter_meta {
    organism: "Common name of the organism to sync"
    organism_id: "ID of the organism to sync"
    job_name: "Name of the job"
    no_wait: "Return immediately without waiting for job completion"
    status: "Options:"
  }
  output {
    File out_stdout = stdout()
  }
}