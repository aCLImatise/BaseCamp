version 1.0

task PlanemoToolInit {
  input {
    String idId
    Boolean forceForce
    File toolTool
    String nameName
    String descriptionDescription
    String commandCommand
    String exampleExampleCommand
    String exampleExampleInput
    String exampleExampleOutput
    String namedNamedOutput
    String inputInput
    String outputOutput
    String helpHelpText
    String helpHelpFromCommand
    String doiDoi
    String citeCiteUrl
    Boolean testTestCase
    Boolean macrosMacros
    String versionVersionCommand
    String requirementRequirement
    String containerContainer
    Boolean cwlCwl
  }
  command <<<
    planemo tool_init \
      ~{if defined(idId) then ("--id " +  '"' + idId + '"') else ""} \
      ~{true="--force" false="" forceForce} \
      ~{if defined(toolTool) then ("--tool " +  '"' + toolTool + '"') else ""} \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{if defined(descriptionDescription) then ("--description " +  '"' + descriptionDescription + '"') else ""} \
      ~{if defined(commandCommand) then ("--command " +  '"' + commandCommand + '"') else ""} \
      ~{if defined(exampleExampleCommand) then ("--example_command " +  '"' + exampleExampleCommand + '"') else ""} \
      ~{if defined(exampleExampleInput) then ("--example_input " +  '"' + exampleExampleInput + '"') else ""} \
      ~{if defined(exampleExampleOutput) then ("--example_output " +  '"' + exampleExampleOutput + '"') else ""} \
      ~{if defined(namedNamedOutput) then ("--named_output " +  '"' + namedNamedOutput + '"') else ""} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(helpHelpText) then ("--help_text " +  '"' + helpHelpText + '"') else ""} \
      ~{if defined(helpHelpFromCommand) then ("--help_from_command " +  '"' + helpHelpFromCommand + '"') else ""} \
      ~{if defined(doiDoi) then ("--doi " +  '"' + doiDoi + '"') else ""} \
      ~{if defined(citeCiteUrl) then ("--cite_url " +  '"' + citeCiteUrl + '"') else ""} \
      ~{true="--test_case" false="" testTestCase} \
      ~{true="--macros" false="" macrosMacros} \
      ~{if defined(versionVersionCommand) then ("--version_command " +  '"' + versionVersionCommand + '"') else ""} \
      ~{if defined(requirementRequirement) then ("--requirement " +  '"' + requirementRequirement + '"') else ""} \
      ~{if defined(containerContainer) then ("--container " +  '"' + containerContainer + '"') else ""} \
      ~{true="--cwl" false="" cwlCwl}
  >>>
}