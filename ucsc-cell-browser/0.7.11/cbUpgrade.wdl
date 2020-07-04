version 1.0

task CbUpgrade {
  input {
    Boolean? debug
    String? output_directory_default
    String? port
    Boolean? code
    Boolean? dev
    String var_5
  }
  command <<<
    cbUpgrade \
      ~{var_5} \
      ~{true="--debug" false="" debug} \
      ~{if defined(output_directory_default) then ("--outDir " +  '"' + output_directory_default + '"') else ""} \
      ~{if defined(port) then ("--port " +  '"' + port + '"') else ""} \
      ~{true="--code" false="" code} \
      ~{true="--dev" false="" dev}
  >>>
  parameter_meta {
    debug: "show debug messages"
    output_directory_default: "output directory, default can be set through the env. variable CBOUT, current value: none"
    port: "after upgrade, start HTTP server bound to port and serve <outDir>"
    code: "also update the javascript code"
    dev: "only for developers: do not add version to js/css links"
    var_5: ""
  }
}