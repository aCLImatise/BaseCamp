version 1.0

task SrapathOrig {
  input {
    Boolean? function
    Boolean? location
    Boolean? timeout
    Boolean? protocol
    Boolean? vers
    Boolean? url
    Boolean? param
    Boolean? raw
    Boolean? json
    Boolean? project
    Boolean? cache
    Boolean? path
    File? perm
    File? ngc
    String? log_level
    Boolean? verbose
    Boolean? quiet
    File? option_file
    String summary
  }
  command <<<
    srapath-orig \
      ~{summary} \
      ~{true="--function" false="" function} \
      ~{true="--location" false="" location} \
      ~{true="--timeout" false="" timeout} \
      ~{true="--protocol" false="" protocol} \
      ~{true="--vers" false="" vers} \
      ~{true="--url" false="" url} \
      ~{true="--param" false="" param} \
      ~{true="--raw" false="" raw} \
      ~{true="--json" false="" json} \
      ~{true="--project" false="" project} \
      ~{true="--cache" false="" cache} \
      ~{true="--path" false="" path} \
      ~{if defined(perm) then ("--perm " +  '"' + perm + '"') else ""} \
      ~{if defined(ngc) then ("--ngc " +  '"' + ngc + '"') else ""} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(option_file) then ("--option-file " +  '"' + option_file + '"') else ""}
  >>>
  parameter_meta {
    function: "function to perform (resolve, names,  search) default=resolve or names if  protocol is specified "
    location: "location of data "
    timeout: "timeout-value for request "
    protocol: "protocol (fasp; http; https; fasp,http;  ...) default=https "
    vers: "version-string for cgi-calls "
    url: "url to be used for cgi-calls "
    param: "param to be added to cgi-call (tic=XXXXX):  raw-only "
    raw: "print the raw reply (instead of parsing it) "
    json: "print the reply in JSON "
    project: "use numeric [dbGaP] project-id in  names-cgi-call "
    cache: "resolve cache location along with remote  when performing names function "
    path: "print path of object: names function-only "
    perm: "PATH to jwt cart file "
    ngc: "PATH to ngc file "
    log_level: "Logging level as number or enum string. One  of (fatal|sys|int|err|warn|info|debug) or  (0-6) Current/default is warn "
    verbose: "Increase the verbosity of the program  status messages. Use multiple times for more  verbosity. Negates quiet. "
    quiet: "Turn off all status messages for the  program. Negated by verbose. "
    option_file: "Read more options and parameters from the  file. "
    summary: ""
  }
}