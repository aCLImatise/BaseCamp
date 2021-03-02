version 1.0

task GemServer {
  input {
    String? port
    String? dir
    String? bind
    Boolean? launch
    Boolean? _verbose_set
    Boolean? quiet
    File? config_file
    Boolean? backtrace
    Boolean? debug
    String machines_dot
  }
  command <<<
    gem server \
      ~{machines_dot} \
      ~{if defined(port) then ("--port " +  '"' + port + '"') else ""} \
      ~{if defined(dir) then ("--dir " +  '"' + dir + '"') else ""} \
      ~{if defined(bind) then ("--bind " +  '"' + bind + '"') else ""} \
      ~{if (launch) then "--launch" else ""} \
      ~{if (_verbose_set) then "-V" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(config_file) then ("--config-file " +  '"' + config_file + '"') else ""} \
      ~{if (backtrace) then "--backtrace" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    port: "port to listen on"
    dir: "directories from which to serve gems\\nmultiple directories may be provided\\n--[no-]daemon                run as a daemon"
    bind: ",HOST             addresses to bind"
    launch: "[=COMMAND]           launches a browser window\\nCOMMAND defaults to 'start' on Windows\\nand 'open' on all other platforms"
    _verbose_set: ", --[no-]verbose               Set the verbose level of output"
    quiet: "Silence commands"
    config_file: "Use this config file instead of default"
    backtrace: "Show stack backtrace on errors"
    debug: "Turn on Ruby debugging"
    machines_dot: "The cache files for installed gems must exist to use the server as a source"
  }
  output {
    File out_stdout = stdout()
  }
}