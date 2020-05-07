version 1.0

task TripailleOrganismSync {
  input {
    String organismOrganism
    String organismOrganismId
    String jobJobName
    Boolean noNoWait
  }
  command <<<
    tripaille organism sync \
      ~{if defined(organismOrganism) then ("--organism " +  '"' + organismOrganism + '"') else ""} \
      ~{if defined(organismOrganismId) then ("--organism_id " +  '"' + organismOrganismId + '"') else ""} \
      ~{if defined(jobJobName) then ("--job_name " +  '"' + jobJobName + '"') else ""} \
      ~{true="--no_wait" false="" noNoWait}
  >>>
}