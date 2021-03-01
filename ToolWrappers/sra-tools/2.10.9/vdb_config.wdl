version 1.0

task Vdbconfig {
  input {
    Boolean? all
    Boolean? cfg
    Boolean? files
    Boolean? load_path
    Boolean? env
    Boolean? modules
    Boolean? set
    Boolean? interactive
    String? interactive_mode
    Boolean? restore_defaults
    Boolean? cloud_info
    String? report_cloud_identity
    File? set_aws_credentials
    String? set_aws_profile
    String? accept_gcp_charges
    File? set_gcp_credentials
    Boolean? prefetch_to_cwd
    Boolean? prefetch_to_user_repo
    Boolean? proxy
    String? proxy_disable
    File? cfg_dir
    Boolean? root
    Boolean? verbose
    Boolean? quiet
    File? option_file
    String configuration
    String identity
    String quit_dot
    File file_dot
  }
  command <<<
    vdb_config \
      ~{configuration} \
      ~{identity} \
      ~{quit_dot} \
      ~{file_dot} \
      ~{if (all) then "--all" else ""} \
      ~{if (cfg) then "--cfg" else ""} \
      ~{if (files) then "--files" else ""} \
      ~{if (load_path) then "--load-path" else ""} \
      ~{if (env) then "--env" else ""} \
      ~{if (modules) then "--modules" else ""} \
      ~{if (set) then "--set" else ""} \
      ~{if (interactive) then "--interactive" else ""} \
      ~{if defined(interactive_mode) then ("--interactive-mode " +  '"' + interactive_mode + '"') else ""} \
      ~{if (restore_defaults) then "--restore-defaults" else ""} \
      ~{if (cloud_info) then "--cloud-info" else ""} \
      ~{if defined(report_cloud_identity) then ("--report-cloud-identity " +  '"' + report_cloud_identity + '"') else ""} \
      ~{if defined(set_aws_credentials) then ("--set-aws-credentials " +  '"' + set_aws_credentials + '"') else ""} \
      ~{if defined(set_aws_profile) then ("--set-aws-profile " +  '"' + set_aws_profile + '"') else ""} \
      ~{if defined(accept_gcp_charges) then ("--accept-gcp-charges " +  '"' + accept_gcp_charges + '"') else ""} \
      ~{if defined(set_gcp_credentials) then ("--set-gcp-credentials " +  '"' + set_gcp_credentials + '"') else ""} \
      ~{if (prefetch_to_cwd) then "--prefetch-to-cwd" else ""} \
      ~{if (prefetch_to_user_repo) then "--prefetch-to-user-repo" else ""} \
      ~{if (proxy) then "--proxy" else ""} \
      ~{if defined(proxy_disable) then ("--proxy-disable " +  '"' + proxy_disable + '"') else ""} \
      ~{if defined(cfg_dir) then ("--cfg-dir " +  '"' + cfg_dir + '"') else ""} \
      ~{if (root) then "--root" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(option_file) then ("--option-file " +  '"' + option_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/sra-tools:2.10.9--pl526haddd2b5_0"
  }
  parameter_meta {
    all: "print all information [default]"
    cfg: "print current configuration"
    files: "print loaded files"
    load_path: "print load path"
    env: "print shell variables"
    modules: "print external modules"
    set: "<name=value>            set configuration node value"
    interactive: "create/update configuration"
    interactive_mode: "interactive mode: 'textual' or 'graphical'\\n(default)"
    restore_defaults: "create default or update existing user"
    cloud_info: "display cloud-releated information"
    report_cloud_identity: "give permission to report cloud instance"
    set_aws_credentials: "select file with AWS credentials"
    set_aws_profile: "set AWS profile"
    accept_gcp_charges: "agree to accept charges for GCP usage"
    set_gcp_credentials: "select file with GCP credentials"
    prefetch_to_cwd: "prefetch downloads to current directory\\nwhen public user repository is set\\n(default: false)"
    prefetch_to_user_repo: "prefetch downloads to public user\\nrepository when it is set (default)"
    proxy: "<uri[:port]>             set HTTP proxy server configuration"
    proxy_disable: "enable/disable using HTTP proxy"
    cfg_dir: "set directory to load configuration"
    root: "enforce configuration update while being\\nrun by superuser"
    verbose: "Increase the verbosity of the program\\nstatus messages. Use multiple times for more\\nverbosity. Negates quiet."
    quiet: "Turn off all status messages for the\\nprogram. Negated by verbose."
    option_file: "Read more options and parameters from the"
    configuration: "-o|--output <x | n>              output type: one of (x n), where 'x' is xml "
    identity: "--accept-aws-charges <yes | no>  agree to accept charges for AWS usage "
    quit_dot: "-L|--log-level <level>           Logging level as number or enum string. One "
    file_dot: "vdb-config : 2.10.9"
  }
  output {
    File out_stdout = stdout()
  }
}