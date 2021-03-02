version 1.0

task Ymp {
  input {
    Boolean? pdb
    Boolean? quiet
    Boolean? verbose
    File? log_file
    Boolean? install_completion
    File? profile
    String env
    String in_it
    String make
    String show
    String stage
    String submit
  }
  command <<<
    ymp \
      ~{env} \
      ~{in_it} \
      ~{make} \
      ~{show} \
      ~{stage} \
      ~{submit} \
      ~{if (pdb) then "--pdb" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""} \
      ~{if (install_completion) then "--install-completion" else ""} \
      ~{if defined(profile) then ("--profile " +  '"' + profile + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ymp:0.2.1--py_0"
  }
  parameter_meta {
    pdb: "Drop into debugger on uncaught exception"
    quiet: "Decrease log verbosity"
    verbose: "Increase log verbosity"
    log_file: "Specify a log file"
    install_completion: "Install command completion for the current shell. Make\\nsure to have psutil installed."
    profile: "Profile execution time using Yappi"
    env: "Manipulate conda software environments These commands allow..."
    in_it: "Initialize YMP workspace"
    make: "Build target(s) locally"
    show: "Show configuration properties"
    stage: "Manipulate YMP stages"
    submit: "Build target(s) on cluster The parameters for cluster execution..."
  }
  output {
    File out_stdout = stdout()
  }
}