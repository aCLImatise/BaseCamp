version 1.0

task TripailleExpressionDeleteBiomaterials {
  input {
    String? names
    String? organism_id
    String? analysis_id
    String? job_name
    Boolean? no_wait
    String status
  }
  command <<<
    tripaille expression delete_biomaterials \
      ~{status} \
      ~{if defined(names) then ("--names " +  '"' + names + '"') else ""} \
      ~{if defined(organism_id) then ("--organism_id " +  '"' + organism_id + '"') else ""} \
      ~{if defined(analysis_id) then ("--analysis_id " +  '"' + analysis_id + '"') else ""} \
      ~{if defined(job_name) then ("--job_name " +  '"' + job_name + '"') else ""} \
      ~{if (no_wait) then "--no_wait" else ""}
  >>>
  parameter_meta {
    names: "JSON list of biomaterial names to delete. (optional)"
    organism_id: "Organism id from which to delete biomaterials (optional)"
    analysis_id: "Analysis id from which to delete biomaterials (optional)"
    job_name: "Name of the job (optional)"
    no_wait: "Return immediately without waiting for job completion"
    status: "Options:"
  }
  output {
    File out_stdout = stdout()
  }
}