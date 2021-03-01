class: CommandLineTool
id: vdb_config.cwl
inputs:
- id: in_all
  doc: print all information [default]
  type: boolean?
  inputBinding:
    prefix: --all
- id: in_cfg
  doc: print current configuration
  type: boolean?
  inputBinding:
    prefix: --cfg
- id: in_files
  doc: print loaded files
  type: boolean?
  inputBinding:
    prefix: --files
- id: in_load_path
  doc: print load path
  type: boolean?
  inputBinding:
    prefix: --load-path
- id: in_env
  doc: print shell variables
  type: boolean?
  inputBinding:
    prefix: --env
- id: in_modules
  doc: print external modules
  type: boolean?
  inputBinding:
    prefix: --modules
- id: in_set
  doc: <name=value>            set configuration node value
  type: boolean?
  inputBinding:
    prefix: --set
- id: in_interactive
  doc: create/update configuration
  type: boolean?
  inputBinding:
    prefix: --interactive
- id: in_interactive_mode
  doc: "interactive mode: 'textual' or 'graphical'\n(default)"
  type: string?
  inputBinding:
    prefix: --interactive-mode
- id: in_restore_defaults
  doc: create default or update existing user
  type: boolean?
  inputBinding:
    prefix: --restore-defaults
- id: in_cloud_info
  doc: display cloud-releated information
  type: boolean?
  inputBinding:
    prefix: --cloud-info
- id: in_report_cloud_identity
  doc: give permission to report cloud instance
  type: string?
  inputBinding:
    prefix: --report-cloud-identity
- id: in_set_aws_credentials
  doc: select file with AWS credentials
  type: File?
  inputBinding:
    prefix: --set-aws-credentials
- id: in_set_aws_profile
  doc: set AWS profile
  type: string?
  inputBinding:
    prefix: --set-aws-profile
- id: in_accept_gcp_charges
  doc: agree to accept charges for GCP usage
  type: string?
  inputBinding:
    prefix: --accept-gcp-charges
- id: in_set_gcp_credentials
  doc: select file with GCP credentials
  type: File?
  inputBinding:
    prefix: --set-gcp-credentials
- id: in_prefetch_to_cwd
  doc: "prefetch downloads to current directory\nwhen public user repository is set\n\
    (default: false)"
  type: boolean?
  inputBinding:
    prefix: --prefetch-to-cwd
- id: in_prefetch_to_user_repo
  doc: "prefetch downloads to public user\nrepository when it is set (default)"
  type: boolean?
  inputBinding:
    prefix: --prefetch-to-user-repo
- id: in_proxy
  doc: <uri[:port]>             set HTTP proxy server configuration
  type: boolean?
  inputBinding:
    prefix: --proxy
- id: in_proxy_disable
  doc: enable/disable using HTTP proxy
  type: string?
  inputBinding:
    prefix: --proxy-disable
- id: in_cfg_dir
  doc: set directory to load configuration
  type: File?
  inputBinding:
    prefix: --cfg-dir
- id: in_root
  doc: "enforce configuration update while being\nrun by superuser"
  type: boolean?
  inputBinding:
    prefix: --root
- id: in_verbose
  doc: "Increase the verbosity of the program\nstatus messages. Use multiple times\
    \ for more\nverbosity. Negates quiet."
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: "Turn off all status messages for the\nprogram. Negated by verbose."
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_option_file
  doc: Read more options and parameters from the
  type: File?
  inputBinding:
    prefix: --option-file
- id: in_configuration
  doc: "-o|--output <x | n>              output type: one of (x n), where 'x' is xml "
  type: string
  inputBinding:
    position: 0
- id: in_identity
  doc: '--accept-aws-charges <yes | no>  agree to accept charges for AWS usage '
  type: string
  inputBinding:
    position: 0
- id: in_quit_dot
  doc: '-L|--log-level <level>           Logging level as number or enum string. One '
  type: string
  inputBinding:
    position: 1
- id: in_file_dot
  doc: 'vdb-config : 2.10.9'
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/sra-tools:2.10.9--pl526haddd2b5_0
cwlVersion: v1.1
baseCommand:
- vdb-config
