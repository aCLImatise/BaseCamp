version 1.0

task DxCwlRunWorkflow {
  input {
    String tokenToken
    String projectProject
    String rootdirRootdir
    Boolean waitWait
    String? workflowWorkflow
    String? inputsInputs
  }
  command <<<
    dx-cwl run-workflow \
      ~{workflowWorkflow} \
      ~{if defined(tokenToken) then ("--token " +  '"' + tokenToken + '"') else ""} \
      ~{if defined(projectProject) then ("--project " +  '"' + projectProject + '"') else ""} \
      ~{if defined(rootdirRootdir) then ("--rootdir " +  '"' + rootdirRootdir + '"') else ""} \
      ~{true="--wait" false="" waitWait} \
      ~{inputsInputs}
  >>>
}