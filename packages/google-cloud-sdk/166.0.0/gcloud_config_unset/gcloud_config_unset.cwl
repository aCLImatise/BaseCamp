class: CommandLineTool
id: gcloud_config_unset.cwl
inputs:
- id: in_section_slash_property
  doc: "The property to be unset. Note that SECTION/ is optional while\nreferring\
    \ to properties in the core section."
  type: string
  inputBinding:
    position: 0
- id: in_core
  doc: "account\nThe account gcloud should use for authentication. You can run\ngcloud\
    \ auth list to see the accounts you currently have available."
  type: string
  inputBinding:
    position: 0
- id: in_custom_ca_certs_file
  doc: Absolute path to a custom CA cert file.
  type: string
  inputBinding:
    position: 1
- id: in_default_regional_backend_service
  doc: "If True, backend services in gcloud compute backend-services will\nbe regional\
    \ by default. The --global flag will be required for\nglobal backend services."
  type: string
  inputBinding:
    position: 2
- id: in_disable_color
  doc: If True, color will not be used when printing messages in the
  type: string
  inputBinding:
    position: 3
- id: in_terminal_dot
  doc: disable_prompts
  type: string
  inputBinding:
    position: 4
- id: in_one_dot
  doc: disable_usage_reporting
  type: long
  inputBinding:
    position: 0
- id: in_log_http
  doc: "If True, log HTTP requests and responses to the logs. You may need\nto adjust\
    \ your verbosity setting if you want to see in the\nterminal, otherwise it is\
    \ available in the log files."
  type: string
  inputBinding:
    position: 0
- id: in_max_log_days
  doc: "Maximum number of days to retain log files before deleting. If set\nto 0,\
    \ turns off log garbage collection and does not delete log\nfiles. If unset, defaults\
    \ to 30."
  type: string
  inputBinding:
    position: 1
- id: in_pass_credentials_to_gs_util
  doc: If True, pass the configured Cloud SDK authentication to gsutil.
  type: string
  inputBinding:
    position: 2
- id: in_project
  doc: "The project id of the Cloud Platform project to operate on by\ndefault. This\
    \ can be overridden by using the global --project flag."
  type: string
  inputBinding:
    position: 3
- id: in_show_structured_logs
  doc: "Controls when JSON structured log messages for the current\nverbosity and\
    \ above will be written to standard error. The default\nis text format when disabled.\
    \ Valid values are: never - Log\nmessages as text, always - Always log messages\
    \ as JSON, log - Only\nlog messages as JSON if stderr is a file, terminal - Only\
    \ log\nmessages as JSON if stderr is a terminal. If unset default is\nnever."
  type: string
  inputBinding:
    position: 4
- id: in_trace_token
  doc: "Token used to route traces of service requests for investigation of\nissues.\
    \ This token will be provided by Google support."
  type: string
  inputBinding:
    position: 5
- id: in_user_output_enabled
  doc: "If False, messages to the user and command output on both standard\noutput\
    \ and standard error will be suppressed."
  type: string
  inputBinding:
    position: 6
- id: in_verbosity
  doc: "The default logging verbosity for gcloud commands. This is the\nequivalent\
    \ of using the global --verbosity flag."
  type: string
  inputBinding:
    position: 7
- id: in_app
  doc: "cloud_build_timeout\nThe timeout, in seconds, to wait for Docker builds to\
    \ complete\nduring deployments. All Docker builds now use the Container Builder\n\
    API."
  type: string
  inputBinding:
    position: 8
- id: in_promote_by_default
  doc: "If True, when deploying a new version of a service, that version\nwill be\
    \ promoted to receive all traffic for the service. The flag\ncan be overridden\
    \ via the --promote-by-default or\n--no-promote-by-default flags."
  type: string
  inputBinding:
    position: 9
- id: in_stop_previous_version
  doc: "If True, when deploying a new version of a service, the previously\ndeployed\
    \ version is stopped. If False, older versions must be\nstopped manually."
  type: string
  inputBinding:
    position: 10
- id: in_use_runtime_builders
  doc: "If set, opt in/out to a new code path for building applications\nusing pre-fabricated\
    \ runtimes that can be updated independently of\nclient tooling. (If not set,\
    \ will use the default path for each\nruntime.)"
  type: string
  inputBinding:
    position: 11
- id: in_auth
  doc: "disable_credentials\nIf true, gcloud will not attempt to load any credentials\
    \ or\nauthenticate any requests. This is useful if you are behind a proxy\nthat\
    \ adds authentication to your requests."
  type: string
  inputBinding:
    position: 12
- id: in_component_manager
  doc: "additional_repositories\nA comma separated list of additional repositories\
    \ to check for\ncomponents. This property is automatically managed by the gcloud\n\
    components repositories commands."
  type: string
  inputBinding:
    position: 13
- id: in_disable_update_check
  doc: If True, the Cloud SDK will not automatically check for updates.
  type: string
  inputBinding:
    position: 14
- id: in_compute
  doc: "region\nThe default region to use when working with regional Compute Engine\n\
    resources. When a --region flag is required but not provided, the\ncommand will\
    \ fall back to this value, if set. To see valid choices,\nrun gcloud compute regions\
    \ list."
  type: string
  inputBinding:
    position: 15
- id: in_zone
  doc: "The default zone to use when working with zonal Compute Engine\nresources.\
    \ When a --zone flag is required but not provided, the\ncommand will fall back\
    \ to this value, if set. To see valid choices,\nrun gcloud compute zones list."
  type: string
  inputBinding:
    position: 16
- id: in_container
  doc: "build_timeout\nThe timeout, in seconds, to wait for container builds to complete."
  type: string
  inputBinding:
    position: 17
- id: in_cluster
  doc: "The name of the cluster to use by default when working with\nContainer Engine."
  type: string
  inputBinding:
    position: 18
- id: in_use_application_default_credentials
  doc: "Use application default credentials to authenticate to the cluster\nAPI server."
  type: string
  inputBinding:
    position: 19
- id: in_use_client_certificate
  doc: "Use the cluster's client certificate to authenticate to the cluster\nAPI server."
  type: string
  inputBinding:
    position: 20
- id: in_data_proc
  doc: "region\nSpecifies the Cloud Dataproc region to use. Each Cloud Dataproc\n\
    region constitutes an independent resource namespace constrained to\ndeploying\
    \ instances into Google Compute Engine zones inside the\nregion. The default value\
    \ of \"global\" is a special multi-region\nnamespace which is capable of deploying\
    \ instances into all Google\nCompute Engine zones globally, and is disjoint from\
    \ other Cloud\nDataproc regions."
  type: string
  inputBinding:
    position: 21
- id: in_functions
  doc: "region\nThe default region to use when working with Google Compute\nfunctions\
    \ resources. When a --region flag is required but not\nprovided, the command will\
    \ fall back to this value, if set. To see\nvalid choices, run gcloud functions\
    \ regions list."
  type: string
  inputBinding:
    position: 22
- id: in_ml_engine
  doc: "polling_interval\nThe interval (in seconds) at which to poll logs from your\
    \ Cloud ML\nEngine jobs. Note that making it much faster than the default (60)\n\
    will quickly use all of your quota."
  type: string
  inputBinding:
    position: 23
- id: in_proxy
  doc: "address\nThe hostname or IP address of your proxy server."
  type: string
  inputBinding:
    position: 24
- id: in_password
  doc: If your proxy requires authentication, the password to use when
  type: string
  inputBinding:
    position: 25
- id: in_port
  doc: port
  type: string
  inputBinding:
    position: 26
- id: in_type
  doc: "The type of proxy you are using. Supported proxy types are: [http,\nhttp_no_tunnel,\
    \ socks4, socks5]."
  type: string
  inputBinding:
    position: 0
- id: in_username
  doc: If your proxy requires authentication, the username to use when
  type: string
  inputBinding:
    position: 1
- id: in_spanner
  doc: spanner
  type: string
  inputBinding:
    position: 2
- id: in_instance
  doc: "The default instance to use when working with Cloud Spanner\nresources. When\
    \ an instance is required but not provided by a flag,\nthe command will fall back\
    \ to this value, if set."
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gcloud
- config
- unset
