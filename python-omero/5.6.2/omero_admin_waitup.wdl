version 1.0

task OmeroAdminWaitup {
  input {
    String waitWait
  }
  command <<<
    omero admin waitup \
      ~{if defined(waitWait) then ("--wait " +  '"' + waitWait + '"') else ""}
  >>>
}