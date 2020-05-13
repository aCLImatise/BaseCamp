version 1.0

task TripailleJobAddJobOPTIONSNAMEMODULECALLBACK {
  input {
    Int priorityPriority
  }
  command <<<
    tripaille job add_job OPTIONS NAME MODULE CALLBACK \
      ~{if defined(priorityPriority) then ("--priority " +  '"' + priorityPriority + '"') else ""}
  >>>
}