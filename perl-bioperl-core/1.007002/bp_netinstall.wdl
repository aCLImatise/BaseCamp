version 1.0

task BpNetinstall.pl {
  input {
    Boolean? dev
    String? build_param_str
    String? install_param_str
    Boolean? bioperl_path
    Boolean? skip_start
    Boolean? b
  }
  command <<<
    bp_netinstall.pl \
      ~{true="--dev" false="" dev} \
      ~{if defined(build_param_str) then ("--build_param_str " +  '"' + build_param_str + '"') else ""} \
      ~{if defined(install_param_str) then ("--install_param_str " +  '"' + install_param_str + '"') else ""} \
      ~{true="--bioperl_path" false="" bioperl_path} \
      ~{true="--skip_start" false="" skip_start} \
      ~{true="-b" false="" b}
  >>>
  parameter_meta {
    dev: "Use the development version of bioperl from git"
    build_param_str: "Parameters that are passed in at 'perl Build.PL'"
    install_param_str: "Use this string to predefine './Build install' parameters such as 'install_base' for bioperl installation"
    bioperl_path: "Path to BioPerl tarball (will not download BioPerl)"
    skip_start: "Don't wait for 'Enter' at program start"
    b: ""
  }
}