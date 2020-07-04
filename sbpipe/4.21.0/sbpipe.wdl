version 1.0

task Sbpipe {
  input {
    String? create_project
    File? simulate
    File? parameter_scan_one
    File? parameter_scan_two
    File? parameter_estimation
    Boolean? license
    Boolean? no_color
    Boolean? logo
    Boolean? quiet
    String? log_level
    Boolean? verbose
  }
  command <<<
    sbpipe \
      ~{if defined(create_project) then ("--create-project " +  '"' + create_project + '"') else ""} \
      ~{if defined(simulate) then ("--simulate " +  '"' + simulate + '"') else ""} \
      ~{if defined(parameter_scan_one) then ("--parameter-scan1 " +  '"' + parameter_scan_one + '"') else ""} \
      ~{if defined(parameter_scan_two) then ("--parameter-scan2 " +  '"' + parameter_scan_two + '"') else ""} \
      ~{if defined(parameter_estimation) then ("--parameter-estimation " +  '"' + parameter_estimation + '"') else ""} \
      ~{true="--license" false="" license} \
      ~{true="--nocolor" false="" no_color} \
      ~{true="--logo" false="" logo} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    create_project: "create a project structure"
    simulate: "run time course simulations"
    parameter_scan_one: "run parameter scans for 1 model variable"
    parameter_scan_two: "run parameter scans for 2 model variables"
    parameter_estimation: "run parameter estimations"
    license: "show the license and exit"
    no_color: "print logging messages without colors"
    logo: "show the logo and exit"
    quiet: "do not print any log"
    log_level: "override the log level"
    verbose: "print debugging output"
  }
}