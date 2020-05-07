version 1.0

task TripailleExpressionSyncBiomaterials {
  input {
    String idsIds
    String maxMaxSync
    String jobJobName
    Boolean noNoWait
  }
  command <<<
    tripaille expression sync_biomaterials \
      ~{if defined(idsIds) then ("--ids " +  '"' + idsIds + '"') else ""} \
      ~{if defined(maxMaxSync) then ("--max_sync " +  '"' + maxMaxSync + '"') else ""} \
      ~{if defined(jobJobName) then ("--job_name " +  '"' + jobJobName + '"') else ""} \
      ~{true="--no_wait" false="" noNoWait}
  >>>
}