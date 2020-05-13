version 1.0

task WorkflowToTools {
  input {
    Array[String]+ workflowWorkflow
    String outputOutputFile
    String panelPanelLabel
  }
  command <<<
    workflow-to-tools \
      ~{if defined(workflowWorkflow) then ("--workflow " +  '"' + workflowWorkflow + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""} \
      ~{if defined(panelPanelLabel) then ("--panel_label " +  '"' + panelPanelLabel + '"') else ""}
  >>>
}