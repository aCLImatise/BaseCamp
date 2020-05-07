version 1.0

task TripailleJobWaitJOBID {
  input {
    String? optionsOptions
    String? jobJobId
  }
  command <<<
    tripaille job wait JOB_ID \
      ~{optionsOptions} \
      ~{jobJobId}
  >>>
}