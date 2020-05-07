version 1.0

task OmeroAdminStop {
  input {
    String waitWait
    Boolean forceForceRewrite
  }
  command <<<
    omero admin stop \
      ~{if defined(waitWait) then ("--wait " +  '"' + waitWait + '"') else ""} \
      ~{true="--force-rewrite" false="" forceForceRewrite}
  >>>
}