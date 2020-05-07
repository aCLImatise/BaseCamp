version 1.0

task OmeroAdminDeploy {
  input {
    File? fileFile
    String? targetsTargets
  }
  command <<<
    omero admin deploy \
      ~{fileFile} \
      ~{targetsTargets}
  >>>
}