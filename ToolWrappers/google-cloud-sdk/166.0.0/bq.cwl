class: CommandLineTool
id: bq.cwl
inputs:
- id: in_api
  doc: ": API endpoint to talk to.\n(default: 'https://www.googleapis.com')"
  type: boolean?
  inputBinding:
    prefix: --api
- id: in_api_version
  doc: ": API version to use.\n(default: 'v2')"
  type: boolean?
  inputBinding:
    prefix: --api_version
- id: in_api_log
  doc: ": Turn on logging of all server requests and responses. If no string\nis provided,\
    \ log to stdout; if a string is provided, instead log to that\nfile."
  type: boolean?
  inputBinding:
    prefix: --apilog
- id: in_application_default_credential_file
  doc: ": See https://developers.google.com/ident\nity/protocols/application-default-credentials\
    \ for more info.\n(default: '')"
  type: boolean?
  inputBinding:
    prefix: --application_default_credential_file
- id: in_big_query_rc
  doc: ": Path to configuration file. The configuration file specifies new\ndefaults\
    \ for any flags, and can be overrridden by specifying the flag on the\ncommand\
    \ line. If the --bigqueryrc flag is not specified, the BIGQUERYRC\nenvironment\
    \ variable is used. If that is not specified, the path\n\"~/.bigqueryrc\" is used.\n\
    (default: '/root/.bigqueryrc')"
  type: boolean?
  inputBinding:
    prefix: --bigqueryrc
- id: in_ca_certificates_file
  doc: ": Location of CA certificates file.\n(default: '')"
  type: boolean?
  inputBinding:
    prefix: --ca_certificates_file
- id: in_credential_file
  doc: ": Filename used for storing the BigQuery OAuth token.\n(default: '/root/.bigquery.v2.token')"
  type: boolean?
  inputBinding:
    prefix: --credential_file
- id: in_dataset_id
  doc: ": Default dataset to use for requests. (Ignored when not\napplicable.)\n(default:\
    \ '')"
  type: boolean?
  inputBinding:
    prefix: --dataset_id
- id: in_discovery_file
  doc: ": Filename for JSON document to read for discovery.\n(default: '')"
  type: boolean?
  inputBinding:
    prefix: --discovery_file
- id: in_format
  doc: ": <none|json|prettyjson|csv|sparse|pretty>: Format for command output.\nOptions\
    \ include:\npretty: formatted table output\nsparse: simpler table output\nprettyjson:\
    \ easy-to-read JSON format\njson: maximally compact JSON\ncsv: csv format with\
    \ header\nThe first three are intended to be human-readable, and the latter three\
    \ are\nfor passing to another program. If no format is selected, one will be chosen\n\
    based on the command run."
  type: boolean?
  inputBinding:
    prefix: --format
- id: in_job_id
  doc: ": A unique job_id to use for the request. If not specified, this\nclient will\
    \ generate a job_id. Applies only to commands that launch jobs,\nsuch as cp, extract,\
    \ load, and query."
  type: boolean?
  inputBinding:
    prefix: --job_id
- id: in_job_property
  doc: ": Additional key-value pairs to include in the properties field\nof the job\
    \ configuration;\nrepeat this option to specify a list of values"
  type: boolean?
  inputBinding:
    prefix: --job_property
- id: in_max_rows_per_request
  doc: ": Specifies the max number of rows to return per read.\n(an integer)"
  type: boolean?
  inputBinding:
    prefix: --max_rows_per_request
- id: in_project_id
  doc: ": Default project to use for requests.\n(default: '')"
  type: boolean?
  inputBinding:
    prefix: --project_id
- id: in_proxy_address
  doc: ": The name or IP address of the proxy host to use for\nconnecting to GCP.\n\
    (default: '')"
  type: boolean?
  inputBinding:
    prefix: --proxy_address
- id: in_proxy_password
  doc: ": The password to use when authenticating with proxy host.\n(default: '')"
  type: boolean?
  inputBinding:
    prefix: --proxy_password
- id: in_proxy_port
  doc: ": The port number to use to connect to the proxy host.\n(default: '')"
  type: boolean?
  inputBinding:
    prefix: --proxy_port
- id: in_proxy_username
  doc: ": The user name to use when authenticating with proxy host.\n(default: '')"
  type: boolean?
  inputBinding:
    prefix: --proxy_username
- id: in__quiet_true
  doc: ",--[no]quiet: If True, ignore status updates while jobs are running.\n(default:\
    \ 'false')"
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_service_account
  doc: ": Use this service account email address for authorization.\nFor example,\
    \ 1234567890@developer.gserviceaccount.com.\n(default: '')"
  type: boolean?
  inputBinding:
    prefix: --service_account
- id: in_service_account_credential_file
  doc: ": File to be used as a credential store for\nservice accounts. Must be set\
    \ if using a service account."
  type: boolean?
  inputBinding:
    prefix: --service_account_credential_file
- id: in_service_account_private_key_file
  doc: ": Filename that contains the service account\nprivate key. Required if --service_account\
    \ is specified.\n(default: '')"
  type: boolean?
  inputBinding:
    prefix: --service_account_private_key_file
- id: in_service_account_private_key_password
  doc: ": Password for private key. This\npassword must match the password you set\
    \ on the key when you created it in\nthe Google APIs Console. Defaults to the\
    \ default Google APIs Console private\nkey password.\n(default: 'notasecret')"
  type: boolean?
  inputBinding:
    prefix: --service_account_private_key_password
- id: in_sync
  doc: ",--[no]synchronous_mode: If True, wait for command completion before\nreturning,\
    \ and use the job completion status for error codes. If False,\nsimply create\
    \ the job, and use the success of job creation as the error\ncode.\n(default:\
    \ 'true')"
  type: boolean?
  inputBinding:
    prefix: -sync
- id: in_trace
  doc: ': A tracing token of the form "token:<token>" to include in api'
  type: boolean?
  inputBinding:
    prefix: --trace
- id: in_auth_host_name
  doc: ": Host name to use when running a local web server to handle\nredirects during\
    \ OAuth authorization.\n(default: 'localhost')"
  type: boolean?
  inputBinding:
    prefix: --auth_host_name
- id: in_auth_host_port
  doc: ": Port to use when running a local web server to handle\nredirects during\
    \ OAuth authorization.;\nrepeat this option to specify a list of values\n(default:\
    \ '[8080, 8090]')\n(an integer)"
  type: boolean?
  inputBinding:
    prefix: --auth_host_port
- id: in_flag_file
  doc: ": Insert flag definitions from the given file into the command line.\n(default:\
    \ '')"
  type: boolean?
  inputBinding:
    prefix: --flagfile
- id: in_undef_ok
  doc: ": comma-separated list of flag names that it is okay to specify on\nthe command\
    \ line even if the program does not define a flag with that name.\nIMPORTANT:\
    \ flags in this list that have arguments MUST use the --flag=value\nformat.\n\
    (default: '')"
  type: boolean?
  inputBinding:
    prefix: --undefok
- id: in_command_flags
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --command_flags
- id: in_global_flags
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --global_flags
- id: in_printing_dot
  doc: "(default: 'false')"
  type: string
  inputBinding:
    position: 0
- id: in_requests_dot
  doc: '--[no]use_gce_service_account: Use this when running on a Google Compute'
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bq
