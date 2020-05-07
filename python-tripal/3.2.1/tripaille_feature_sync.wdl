version 1.0

task TripailleFeatureSync {
  input {
    String organismOrganism
    String organismOrganismId
    String maxMaxSync
    String typesTypes
    String idsIds
    String jobJobName
    Boolean noNoWait
  }
  command <<<
    tripaille feature sync \
      ~{if defined(organismOrganism) then ("--organism " +  '"' + organismOrganism + '"') else ""} \
      ~{if defined(organismOrganismId) then ("--organism_id " +  '"' + organismOrganismId + '"') else ""} \
      ~{if defined(maxMaxSync) then ("--max_sync " +  '"' + maxMaxSync + '"') else ""} \
      ~{if defined(typesTypes) then ("--types " +  '"' + typesTypes + '"') else ""} \
      ~{if defined(idsIds) then ("--ids " +  '"' + idsIds + '"') else ""} \
      ~{if defined(jobJobName) then ("--job_name " +  '"' + jobJobName + '"') else ""} \
      ~{true="--no_wait" false="" noNoWait}
  >>>
}