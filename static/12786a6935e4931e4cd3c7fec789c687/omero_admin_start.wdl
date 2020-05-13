version 1.0

task OmeroAdminStart {
  input {
    String waitWait
    Boolean forceForceRewrite
    Boolean foregroundForeground
    String userUser
    String passwordPassword
    File? fileFile
    String? targetsTargets
  }
  command <<<
    omero admin start \
      ~{fileFile} \
      ~{if defined(waitWait) then ("--wait " +  '"' + waitWait + '"') else ""} \
      ~{true="--force-rewrite" false="" forceForceRewrite} \
      ~{true="--foreground" false="" foregroundForeground} \
      ~{if defined(userUser) then ("--user " +  '"' + userUser + '"') else ""} \
      ~{if defined(passwordPassword) then ("--password " +  '"' + passwordPassword + '"') else ""} \
      ~{targetsTargets}
  >>>
}