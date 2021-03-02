version 1.0

task Srapathorig {
  input {
    Boolean? function
    Boolean? location
    Boolean? timeout
    Boolean? protocol
    Boolean? vers
    Boolean? url
    Boolean? param
    Boolean? json
    Boolean? project
    Boolean? path
    File? perm
    File? ngc
    Boolean? verbose
    Boolean? quiet
    File? option_file
    String location_dot
    String raw_only
    String names_cgi_call
    String quit_dot
    File file_dot
  }
  command <<<
    srapath_orig \
      ~{location_dot} \
      ~{raw_only} \
      ~{names_cgi_call} \
      ~{quit_dot} \
      ~{file_dot} \
      ~{if (function) then "--function" else ""} \
      ~{if (location) then "--location" else ""} \
      ~{if (timeout) then "--timeout" else ""} \
      ~{if (protocol) then "--protocol" else ""} \
      ~{if (vers) then "--vers" else ""} \
      ~{if (url) then "--url" else ""} \
      ~{if (param) then "--param" else ""} \
      ~{if (json) then "--json" else ""} \
      ~{if (project) then "--project" else ""} \
      ~{if (path) then "--path" else ""} \
      ~{if defined(perm) then ("--perm " +  '"' + perm + '"') else ""} \
      ~{if defined(ngc) then ("--ngc " +  '"' + ngc + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(option_file) then ("--option-file " +  '"' + option_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    function: "function to perform (resolve, names,\\nsearch) default=resolve or names if\\nprotocol is specified"
    location: "location of data"
    timeout: "timeout-value for request"
    protocol: "protocol (fasp; http; https; fasp,http;\\n...) default=https"
    vers: "version-string for cgi-calls"
    url: "url to be used for cgi-calls"
    param: "param to be added to cgi-call (tic=XXXXX):"
    json: "print the reply in JSON"
    project: "use numeric [dbGaP] project-id in"
    path: "print path of object: names function-only"
    perm: "PATH to jwt cart file"
    ngc: "PATH to ngc file"
    verbose: "Increase the verbosity of the program\\nstatus messages. Use multiple times for more\\nverbosity. Negates quiet."
    quiet: "Turn off all status messages for the\\nprogram. Negated by verbose."
    option_file: "Read more options and parameters from the"
    location_dot: "This tool produces a path that is 'likely' to be a run, in that"
    raw_only: "-r|--raw                         print the raw reply (instead of parsing it) "
    names_cgi_call: "-c|--cache                       resolve cache location along with remote "
    quit_dot: "-L|--log-level <level>           Logging level as number or enum string. One "
    file_dot: "srapath-orig : 2.10.8"
  }
  output {
    File out_stdout = stdout()
  }
}