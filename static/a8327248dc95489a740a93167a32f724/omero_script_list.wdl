version 1.0

task OmeroScriptList {
  input {
    String? whoWho
  }
  command <<<
    omero script list \
      ~{whoWho}
  >>>
}