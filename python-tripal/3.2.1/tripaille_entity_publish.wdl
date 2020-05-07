version 1.0

task TripailleEntityPublish {
  input {
    String typesTypes
    String jobJobName
    Boolean noNoWait
  }
  command <<<
    tripaille entity publish \
      ~{if defined(typesTypes) then ("--types " +  '"' + typesTypes + '"') else ""} \
      ~{if defined(jobJobName) then ("--job_name " +  '"' + jobJobName + '"') else ""} \
      ~{true="--no_wait" false="" noNoWait}
  >>>
}