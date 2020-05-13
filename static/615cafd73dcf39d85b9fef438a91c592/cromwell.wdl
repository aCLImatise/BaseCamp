version 1.0

task Cromwell {
  input {
    String workflowWorkflowRoot
    String inputsInputs
    String optionsOptions
    String typeType
    String typeTypeVersion
    String labelsLabels
    String importsImports
    String metadataMetadataOutput
    String workflowWorkflowRoot
    String inputsInputs
    String optionsOptions
    String typeType
    String typeTypeVersion
    String labelsLabels
    String importsImports
    String hostHost
    String? workflowWorkflowSource
    String? workflowWorkflowSource
  }
  command <<<
    cromwell \
      ~{workflowWorkflowSource} \
      ~{workflowWorkflowSource} \
      ~{if defined(workflowWorkflowRoot) then ("--workflow-root " +  '"' + workflowWorkflowRoot + '"') else ""} \
      ~{if defined(inputsInputs) then ("--inputs " +  '"' + inputsInputs + '"') else ""} \
      ~{if defined(optionsOptions) then ("--options " +  '"' + optionsOptions + '"') else ""} \
      ~{if defined(typeType) then ("--type " +  '"' + typeType + '"') else ""} \
      ~{if defined(typeTypeVersion) then ("--type-version " +  '"' + typeTypeVersion + '"') else ""} \
      ~{if defined(labelsLabels) then ("--labels " +  '"' + labelsLabels + '"') else ""} \
      ~{if defined(importsImports) then ("--imports " +  '"' + importsImports + '"') else ""} \
      ~{if defined(metadataMetadataOutput) then ("--metadata-output " +  '"' + metadataMetadataOutput + '"') else ""} \
      ~{if defined(workflowWorkflowRoot) then ("--workflow-root " +  '"' + workflowWorkflowRoot + '"') else ""} \
      ~{if defined(inputsInputs) then ("--inputs " +  '"' + inputsInputs + '"') else ""} \
      ~{if defined(optionsOptions) then ("--options " +  '"' + optionsOptions + '"') else ""} \
      ~{if defined(typeType) then ("--type " +  '"' + typeType + '"') else ""} \
      ~{if defined(typeTypeVersion) then ("--type-version " +  '"' + typeTypeVersion + '"') else ""} \
      ~{if defined(labelsLabels) then ("--labels " +  '"' + labelsLabels + '"') else ""} \
      ~{if defined(importsImports) then ("--imports " +  '"' + importsImports + '"') else ""} \
      ~{if defined(hostHost) then ("--host " +  '"' + hostHost + '"') else ""}
  >>>
}