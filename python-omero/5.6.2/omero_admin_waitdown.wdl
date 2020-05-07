version 1.0

task OmeroAdminWaitdown {
  input {
    String waitWait
  }
  command <<<
    omero admin waitdown \
      ~{if defined(waitWait) then ("--wait " +  '"' + waitWait + '"') else ""}
  >>>
}