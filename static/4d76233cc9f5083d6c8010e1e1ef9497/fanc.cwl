class: CommandLineTool
id: fanc.cwl
inputs:
- id: in_verbose
  doc: "Set verbosity level: Can be chained like \"-vvv\" to\nincrease verbosity.\
    \ Default is to show errors,\nwarnings, and info messages (same as \"-vv\"). \"\
    -v\"\nshows only errors and warnings, \"-vvv\" shows errors,\nwarnings, info,\
    \ and debug messages."
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_silent
  doc: Do not print log messages to command line.
  type: boolean?
  inputBinding:
    prefix: --silent
- id: in_log_file
  doc: Path to file in which to save log.
  type: File?
  inputBinding:
    prefix: --log-file
- id: in_email
  doc: Email address for fanc command summary.
  type: string?
  inputBinding:
    prefix: --email
- id: in_smtp_server
  doc: SMTP server in the form smtp.server.com[:port].
  type: string?
  inputBinding:
    prefix: --smtp-server
- id: in_smtp_username
  doc: SMTP username.
  type: string?
  inputBinding:
    prefix: --smtp-username
- id: in_smtp_password
  doc: SMTP password.
  type: string?
  inputBinding:
    prefix: --smtp-password
- id: in_smtp_sender_address
  doc: "SMTP sender email address.\n"
  type: string?
  inputBinding:
    prefix: --smtp-sender-address
- id: in_command
  doc: Subcommand to run
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/fanc:0.9.0--py37hf01694f_0
cwlVersion: v1.1
baseCommand:
- fanc
