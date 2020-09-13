version 1.0

task Srapath {
  input {
    String? function
    String? timeout
    String? protocol
    String? vers
    String? url
    String? param
    Boolean? json
    Boolean? project
    Boolean? path
    File? ngc
    File? perm
    String? location
    File? cart
    Boolean? disable_multithreading
    Int? log_level
    File? option_file
    String raw_only
    String names_cgi_call
    File file_dot
  }
  command <<<
    srapath \
      ~{raw_only} \
      ~{names_cgi_call} \
      ~{file_dot} \
      ~{if defined(function) then ("--function " +  '"' + function + '"') else ""} \
      ~{if defined(timeout) then ("--timeout " +  '"' + timeout + '"') else ""} \
      ~{if defined(protocol) then ("--protocol " +  '"' + protocol + '"') else ""} \
      ~{if defined(vers) then ("--vers " +  '"' + vers + '"') else ""} \
      ~{if defined(url) then ("--url " +  '"' + url + '"') else ""} \
      ~{if defined(param) then ("--param " +  '"' + param + '"') else ""} \
      ~{if (json) then "--json" else ""} \
      ~{if (project) then "--project" else ""} \
      ~{if (path) then "--path" else ""} \
      ~{if defined(ngc) then ("--ngc " +  '"' + ngc + '"') else ""} \
      ~{if defined(perm) then ("--perm " +  '"' + perm + '"') else ""} \
      ~{if defined(location) then ("--location " +  '"' + location + '"') else ""} \
      ~{if defined(cart) then ("--cart " +  '"' + cart + '"') else ""} \
      ~{if (disable_multithreading) then "--disable-multithreading" else ""} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{if defined(option_file) then ("--option-file " +  '"' + option_file + '"') else ""}
  >>>
  parameter_meta {
    function: "function to perform (resolve, names,\\nsearch) default=resolve or names if\\nprotocol is specified"
    timeout: "timeout-value for request"
    protocol: "protocol (fasp; http; https; fasp,http;\\n..) default=https"
    vers: "version-string for cgi-calls"
    url: "url to be used for cgi-calls"
    param: "param to be added to cgi-call (tic=XXXXX):"
    json: "print the reply in JSON"
    project: "> <project-id>       use numeric [dbGaP] project-id in"
    path: "print path of object: names function-only"
    ngc: "<path> to ngc file"
    perm: "<path> to permission file"
    location: "location in cloud"
    cart: "<path> to cart file"
    disable_multithreading: "disable multithreading"
    log_level: "Logging level as number or enum string.\\nOne of\\n(fatal|sys|int|err|warn|info|debug) or\\n(0-6) Current/default is warn"
    option_file: "Read more options and parameters from the"
    raw_only: "-r|--raw                         print the raw reply (instead of parsing it)"
    names_cgi_call: "-c|--cache                       resolve cache location along with remote"
    file_dot: "-h|--help                        print this message"
  }
  output {
    File out_stdout = stdout()
  }
}