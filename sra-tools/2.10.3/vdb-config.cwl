#!/usr/bin/env cwl-runner

baseCommand:
- vdb-config.2
class: CommandLineTool
cwlVersion: v1.0
id: vdb-config.2
inputs:
- doc: 'print all information [default] '
  id: all
  inputBinding:
    prefix: --all
  type: boolean
- doc: 'print current configuration '
  id: cfg
  inputBinding:
    prefix: --cfg
  type: boolean
- doc: 'print loaded files '
  id: files
  inputBinding:
    prefix: --files
  type: boolean
- doc: 'print load path '
  id: load_path
  inputBinding:
    prefix: --load-path
  type: boolean
- doc: 'print shell variables '
  id: env
  inputBinding:
    prefix: --env
  type: boolean
- doc: 'print external modules '
  id: modules
  inputBinding:
    prefix: --modules
  type: boolean
- doc: '<name=value>            set configuration node value '
  id: set
  inputBinding:
    prefix: --set
  type: boolean
- doc: 'create/update configuration '
  id: interactive
  inputBinding:
    prefix: --interactive
  type: boolean
- doc: "interactive mode: 'textual' or 'graphical'  (default) "
  id: interactive_mode
  inputBinding:
    prefix: --interactive-mode
  type: string
- doc: 'create default or update existing user  configuration '
  id: restore_defaults
  inputBinding:
    prefix: --restore-defaults
  type: boolean
- doc: "<x | n>              output type: one of (x n), where 'x' is xml  (default),\
    \ 'n' is native "
  id: output
  inputBinding:
    prefix: --output
  type: boolean
- doc: 'display cloud-releated information '
  id: cloud_info
  inputBinding:
    prefix: --cloud-info
  type: boolean
- doc: '<yes | no>  give permission to report cloud instance  identity '
  id: report_cloud_identity
  inputBinding:
    prefix: --report-cloud-identity
  type: boolean
- doc: '<yes | no>  agree to accept charges for AWS usage '
  id: accept_aws_charges
  inputBinding:
    prefix: --accept-aws-charges
  type: boolean
- doc: 'select file with AWS credentials '
  id: set_aws_credentials
  inputBinding:
    prefix: --set-aws-credentials
  type: File
- doc: 'set AWS profile '
  id: set_aws_profile
  inputBinding:
    prefix: --set-aws-profile
  type: string
- doc: '<yes | no>  agree to accept charges for GCP usage '
  id: accept_gcp_charges
  inputBinding:
    prefix: --accept-gcp-charges
  type: boolean
- doc: 'select file with GCP credentials '
  id: set_gcp_credentials
  inputBinding:
    prefix: --set-gcp-credentials
  type: File
- doc: 'prefetch downloads to current directory  when public user repository is set  (default:
    false) '
  id: prefetch_to_cwd
  inputBinding:
    prefix: --prefetch-to-cwd
  type: boolean
- doc: 'prefetch downloads to public user  repository when it is set (default) '
  id: prefetch_to_user_repo
  inputBinding:
    prefix: --prefetch-to-user-repo
  type: boolean
- doc: '<uri[:port]>             set HTTP proxy server configuration '
  id: proxy
  inputBinding:
    prefix: --proxy
  type: boolean
- doc: '<yes | no>       enable/disable using HTTP proxy '
  id: proxy_disable
  inputBinding:
    prefix: --proxy-disable
  type: boolean
- doc: 'set directory to load configuration '
  id: cfg_dir
  inputBinding:
    prefix: --cfg-dir
  type: File
- doc: 'enforce configuration update while being  run by superuser '
  id: root
  inputBinding:
    prefix: --root
  type: boolean
- doc: 'Logging level as number or enum string. One  of (fatal|sys|int|err|warn|info|debug)
    or  (0-6) Current/default is warn '
  id: log_level
  inputBinding:
    prefix: --log-level
  type: string
- doc: 'Increase the verbosity of the program  status messages. Use multiple times
    for more  verbosity. Negates quiet. '
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: 'Turn off all status messages for the  program. Negated by verbose. '
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: 'Read more options and parameters from the  file. '
  id: option_file
  inputBinding:
    prefix: --option-file
  type: File
