version 1.0

task SinglemPipe {
  input {
    String threadsThreads
    Boolean outputOutputExtras
    String assignmentAssignmentMethod
  }
  command <<<
    singlem pipe \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--output_extras" false="" outputOutputExtras} \
      ~{if defined(assignmentAssignmentMethod) then ("--assignment_method " +  '"' + assignmentAssignmentMethod + '"') else ""}
  >>>
}