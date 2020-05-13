version 1.0

task PlanemoCloneOPTIONSTARGET {
  input {
    Boolean forkFork
    String branchBranch
  }
  command <<<
    planemo clone OPTIONS TARGET \
      ~{true="--fork" false="" forkFork} \
      ~{if defined(branchBranch) then ("--branch " +  '"' + branchBranch + '"') else ""}
  >>>
}