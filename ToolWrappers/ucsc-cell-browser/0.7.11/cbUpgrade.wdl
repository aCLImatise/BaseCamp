version 1.0

task CbUpgrade {
  input {
    Boolean? debug
    Directory? output_directory_default
    String? port
    Boolean? code
    Boolean? dev
    String var_5
  }
  command <<<
    cbUpgrade \
      ~{var_5} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(output_directory_default) then ("--outDir " +  '"' + output_directory_default + '"') else ""} \
      ~{if defined(port) then ("--port " +  '"' + port + '"') else ""} \
      ~{if (code) then "--code" else ""} \
      ~{if (dev) then "--dev" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    debug: "show debug messages"
    output_directory_default: "output directory, default can be set through the env.\\nvariable CBOUT, current value: none"
    port: "after upgrade, start HTTP server bound to port and\\nserve <outDir>"
    code: "also update the javascript code"
    dev: "only for developers: do not add version to js/css\\nlinks\\n"
    var_5: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory_default = "${in_output_directory_default}"
  }
}