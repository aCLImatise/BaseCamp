version 1.0

task ToilWdlRunner {
  input {
    String outdirOutdir
    String devDevMode
    String dockerDockerUser
    String destDestBucket
    String? wdlWdlFile
    String? secondarySecondaryFile
  }
  command <<<
    toil-wdl-runner \
      ~{wdlWdlFile} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(devDevMode) then ("--dev_mode " +  '"' + devDevMode + '"') else ""} \
      ~{if defined(dockerDockerUser) then ("--docker_user " +  '"' + dockerDockerUser + '"') else ""} \
      ~{if defined(destDestBucket) then ("--destBucket " +  '"' + destDestBucket + '"') else ""} \
      ~{secondarySecondaryFile}
  >>>
}