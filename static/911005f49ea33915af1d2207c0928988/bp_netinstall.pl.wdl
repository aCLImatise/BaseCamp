version 1.0

task BpNetinstallpl {
  input {
    Boolean? dev
    String? build_param_str
    String? install_param_str
    Boolean? bioperl_path
    Boolean? skip_start
    Boolean? b
    String don
    String parameters
    File path
    String that
    String to
    String bioperl
    String are
    String passed
    String tarball
    String in
    String at
  }
  command <<<
    bp_netinstall_pl \
      ~{don} \
      ~{parameters} \
      ~{path} \
      ~{that} \
      ~{to} \
      ~{bioperl} \
      ~{are} \
      ~{passed} \
      ~{tarball} \
      ~{in} \
      ~{at} \
      ~{if (dev) then "--dev" else ""} \
      ~{if defined(build_param_str) then ("--build_param_str " +  '"' + build_param_str + '"') else ""} \
      ~{if defined(install_param_str) then ("--install_param_str " +  '"' + install_param_str + '"') else ""} \
      ~{if (bioperl_path) then "--bioperl_path" else ""} \
      ~{if (skip_start) then "--skip_start" else ""} \
      ~{if (b) then "-b" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    dev: "Use the development version of bioperl from git"
    build_param_str: "Parameters that are passed in at 'perl Build.PL'"
    install_param_str: "Use this string to predefine './Build install'\\nparameters such as 'install_base' for\\nbioperl installation"
    bioperl_path: "Path to BioPerl tarball (will not download BioPerl)"
    skip_start: "Don't wait for 'Enter' at program start"
    b: ""
    don: ""
    parameters: ""
    path: ""
    that: ""
    to: ""
    bioperl: ""
    are: ""
    passed: ""
    tarball: ""
    in: ""
    at: ""
  }
  output {
    File out_stdout = stdout()
  }
}