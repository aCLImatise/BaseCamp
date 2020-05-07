version 1.0

task MulledBuildTool {
  input {
    String nameNameOverride
    String imageImageBuild
    String? commandCommand
    String? toolTool
  }
  command <<<
    mulled-build-tool \
      ~{commandCommand} \
      ~{if defined(nameNameOverride) then ("--name-override " +  '"' + nameNameOverride + '"') else ""} \
      ~{if defined(imageImageBuild) then ("--image-build " +  '"' + imageImageBuild + '"') else ""} \
      ~{toolTool}
  >>>
}