version 1.0

task OmeroAdminStartasync {
  input {
    Boolean forceForceRewrite
    String userUser
    String passwordPassword
    File? fileFile
    String? targetsTargets
  }
  command <<<
    omero admin startasync \
      ~{fileFile} \
      ~{true="--force-rewrite" false="" forceForceRewrite} \
      ~{if defined(userUser) then ("--user " +  '"' + userUser + '"') else ""} \
      ~{if defined(passwordPassword) then ("--password " +  '"' + passwordPassword + '"') else ""} \
      ~{targetsTargets}
  >>>
}