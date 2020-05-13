version 1.0

task OmeroAdminRestartasync {
  input {
    String waitWait
    Boolean forceForceRewrite
    String userUser
    String passwordPassword
    File? fileFile
    String? targetsTargets
  }
  command <<<
    omero admin restartasync \
      ~{fileFile} \
      ~{if defined(waitWait) then ("--wait " +  '"' + waitWait + '"') else ""} \
      ~{true="--force-rewrite" false="" forceForceRewrite} \
      ~{if defined(userUser) then ("--user " +  '"' + userUser + '"') else ""} \
      ~{if defined(passwordPassword) then ("--password " +  '"' + passwordPassword + '"') else ""} \
      ~{targetsTargets}
  >>>
}