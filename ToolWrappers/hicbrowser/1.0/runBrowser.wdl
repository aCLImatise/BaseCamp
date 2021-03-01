version 1.0

task RunBrowser {
  input {
    File? config
    Int? port
    Directory? html_folder
    Int? num_processors
    Boolean? debug
  }
  command <<<
    runBrowser \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(port) then ("--port " +  '"' + port + '"') else ""} \
      ~{if defined(html_folder) then ("--htmlFolder " +  '"' + html_folder + '"') else ""} \
      ~{if defined(num_processors) then ("--numProcessors " +  '"' + num_processors + '"') else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    config: "Configuration file with genomic tracks. (default:\\nNone)"
    port: "Local browser port to use. (default: 8000)"
    html_folder: "File where the template index.html file is located.\\nThe default isfine unless the contents wants to be\\npersonalized. The full path has to be given. (default:\\nNone)"
    num_processors: "Number of processors to use. (default: 1)"
    debug: "Set to run the server in debug mode which will print\\nuseful information. (default: False)"
  }
  output {
    File out_stdout = stdout()
  }
}