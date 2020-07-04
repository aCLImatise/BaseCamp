version 1.0

task OmeroAdminStop {
  input {
    String? wait
    Boolean? force_rewrite
  }
  command <<<
    omero admin stop \
      ~{if defined(wait) then ("--wait " +  '"' + wait + '"') else ""} \
      ~{true="--force-rewrite" false="" force_rewrite}
  >>>
  parameter_meta {
    wait: "Seconds to wait for operation"
    force_rewrite: "Force the configuration to be rewritten before checking the server status"
  }
}