class: CommandLineTool
id: vdb_config.2.cwl
inputs:
- id: all
  doc: 'print all information [default] '
  type: boolean
  inputBinding:
    prefix: --all
- id: cfg
  doc: 'print current configuration '
  type: boolean
  inputBinding:
    prefix: --cfg
- id: files
  doc: 'print loaded files '
  type: boolean
  inputBinding:
    prefix: --files
- id: load_path
  doc: 'print load path '
  type: boolean
  inputBinding:
    prefix: --load-path
- id: env
  doc: 'print shell variables '
  type: boolean
  inputBinding:
    prefix: --env
- id: modules
  doc: 'print external modules '
  type: boolean
  inputBinding:
    prefix: --modules
- id: set
  doc: '<name=value>            set configuration node value '
  type: boolean
  inputBinding:
    prefix: --set
- id: interactive
  doc: 'create/update configuration '
  type: boolean
  inputBinding:
    prefix: --interactive
- id: interactive_mode
  doc: "interactive mode: 'textual' or 'graphical'  (default) "
  type: string
  inputBinding:
    prefix: --interactive-mode
- id: restore_defaults
  doc: 'create default or update existing user  configuration '
  type: boolean
  inputBinding:
    prefix: --restore-defaults
- id: output
  doc: "<x | n>              output type: one of (x n), where 'x' is xml  (default),\
    \ 'n' is native "
  type: boolean
  inputBinding:
    prefix: --output
- id: cloud_info
  doc: 'display cloud-releated information '
  type: boolean
  inputBinding:
    prefix: --cloud-info
- id: report_cloud_identity
  doc: '<yes | no>  give permission to report cloud instance  identity '
  type: boolean
  inputBinding:
    prefix: --report-cloud-identity
- id: accept_aws_charges
  doc: '<yes | no>  agree to accept charges for AWS usage '
  type: boolean
  inputBinding:
    prefix: --accept-aws-charges
- id: set_aws_credentials
  doc: 'select file with AWS credentials '
  type: File
  inputBinding:
    prefix: --set-aws-credentials
- id: set_aws_profile
  doc: 'set AWS profile '
  type: string
  inputBinding:
    prefix: --set-aws-profile
- id: accept_gcp_charges
  doc: '<yes | no>  agree to accept charges for GCP usage '
  type: boolean
  inputBinding:
    prefix: --accept-gcp-charges
- id: set_gcp_credentials
  doc: 'select file with GCP credentials '
  type: File
  inputBinding:
    prefix: --set-gcp-credentials
- id: prefetch_to_cwd
  doc: 'prefetch downloads to current directory  when public user repository is set  (default:
    false) '
  type: boolean
  inputBinding:
    prefix: --prefetch-to-cwd
- id: prefetch_to_user_repo
  doc: 'prefetch downloads to public user  repository when it is set (default) '
  type: boolean
  inputBinding:
    prefix: --prefetch-to-user-repo
- id: proxy
  doc: '<uri[:port]>             set HTTP proxy server configuration '
  type: boolean
  inputBinding:
    prefix: --proxy
- id: proxy_disable
  doc: '<yes | no>       enable/disable using HTTP proxy '
  type: boolean
  inputBinding:
    prefix: --proxy-disable
- id: cfg_dir
  doc: 'set directory to load configuration '
  type: File
  inputBinding:
    prefix: --cfg-dir
- id: root
  doc: 'enforce configuration update while being  run by superuser '
  type: boolean
  inputBinding:
    prefix: --root
- id: log_level
  doc: 'Logging level as number or enum string. One  of (fatal|sys|int|err|warn|info|debug)
    or  (0-6) Current/default is warn '
  type: string
  inputBinding:
    prefix: --log-level
- id: verbose
  doc: 'Increase the verbosity of the program  status messages. Use multiple times
    for more  verbosity. Negates quiet. '
  type: boolean
  inputBinding:
    prefix: --verbose
- id: quiet
  doc: 'Turn off all status messages for the  program. Negated by verbose. '
  type: boolean
  inputBinding:
    prefix: --quiet
- id: option_file
  doc: 'Read more options and parameters from the  file. '
  type: File
  inputBinding:
    prefix: --option-file
outputs: []
cwlVersion: v1.1
baseCommand:
- vdb-config.2
