version 1.0

task TripailleJobWaitOPTIONS {
  input {
    String? jobJobId
  }
  command <<<
    tripaille job wait OPTIONS \
      ~{jobJobId}
  >>>
}