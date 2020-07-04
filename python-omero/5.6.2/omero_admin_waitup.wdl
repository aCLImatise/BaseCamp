version 1.0

task OmeroAdminWaitup {
  input {
    String? wait
  }
  command <<<
    omero admin waitup \
      ~{if defined(wait) then ("--wait " +  '"' + wait + '"') else ""}
  >>>
  parameter_meta {
    wait: "Seconds to wait for operation"
  }
}