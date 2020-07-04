version 1.0

task Srapath.2.10.7 {
  input {
    String? function
    String? timeout
    String? protocol
    String? vers
    String? url
    String? param
    Boolean? raw
    Boolean? json
    Boolean? project
    Boolean? cache
    Boolean? path
    File? ngc
    File? perm
    String? location
    File? cart
    Boolean? disable_multithreading
    String? log_level
    File? option_file
  }
  command <<<
    srapath.2.10.7 \
      ~{if defined(function) then ("--function " +  '"' + function + '"') else ""} \
      ~{if defined(timeout) then ("--timeout " +  '"' + timeout + '"') else ""} \
      ~{if defined(protocol) then ("--protocol " +  '"' + protocol + '"') else ""} \
      ~{if defined(vers) then ("--vers " +  '"' + vers + '"') else ""} \
      ~{if defined(url) then ("--url " +  '"' + url + '"') else ""} \
      ~{if defined(param) then ("--param " +  '"' + param + '"') else ""} \
      ~{true="--raw" false="" raw} \
      ~{true="--json" false="" json} \
      ~{true="--project" false="" project} \
      ~{true="--cache" false="" cache} \
      ~{true="--path" false="" path} \
      ~{if defined(ngc) then ("--ngc " +  '"' + ngc + '"') else ""} \
      ~{if defined(perm) then ("--perm " +  '"' + perm + '"') else ""} \
      ~{if defined(location) then ("--location " +  '"' + location + '"') else ""} \
      ~{if defined(cart) then ("--cart " +  '"' + cart + '"') else ""} \
      ~{true="--disable-multithreading" false="" disable_multithreading} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{if defined(option_file) then ("--option-file " +  '"' + option_file + '"') else ""}
  >>>
  parameter_meta {
    function: "function to perform (resolve, names, search) default=resolve or names if protocol is specified"
    timeout: "timeout-value for request"
    protocol: "protocol (fasp; http; https; fasp,http; ..) default=https"
    vers: "version-string for cgi-calls"
    url: "url to be used for cgi-calls"
    param: "param to be added to cgi-call (tic=XXXXX): raw-only"
    raw: "print the raw reply (instead of parsing it)"
    json: "print the reply in JSON"
    project: "> <project-id>       use numeric [dbGaP] project-id in names-cgi-call"
    cache: "resolve cache location along with remote when performing names function"
    path: "print path of object: names function-only"
    ngc: "<path> to ngc file"
    perm: "<path> to permission file"
    location: "location in cloud"
    cart: "<path> to cart file"
    disable_multithreading: "disable multithreading"
    log_level: "Logging level as number or enum string. One of (fatal|sys|int|err|warn|info|debug) or (0-6) Current/default is warn"
    option_file: "Read more options and parameters from the file."
  }
}