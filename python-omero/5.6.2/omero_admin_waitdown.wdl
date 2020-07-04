version 1.0

task OmeroAdminWaitdown {
  input {
    String? wait
  }
  command <<<
    omero admin waitdown \
      ~{if defined(wait) then ("--wait " +  '"' + wait + '"') else ""}
  >>>
  parameter_meta {
    wait: "Seconds to wait for operation"
  }
}