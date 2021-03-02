version 1.0

task GcloudTopicConfigurations {
  input {
    String? configuration
    String unset_dot
    String active_dot
    String core
    String custom_ca_certs_file
    String default_regional_backend_service
    String disable_color
    String terminal_dot
    Int one_dot
    String log_http
    String max_log_days
    String pass_credentials_to_gs_util
    String project
    String show_structured_logs
    String trace_token
    String user_output_enabled
    String verbosity
    String app
    String promote_by_default
    String stop_previous_version
    String use_runtime_builders
    String auth
    String component_manager
    String disable_update_check
    String compute
    String zone
    String container
    String cluster
    String use_application_default_credentials
    String use_client_certificate
    String data_proc
    String functions
    String ml_engine
    String proxy
    String password
    String port
    String type
    String username
    String spanner
    String instance
  }
  command <<<
    gcloud topic configurations \
      ~{unset_dot} \
      ~{active_dot} \
      ~{core} \
      ~{custom_ca_certs_file} \
      ~{default_regional_backend_service} \
      ~{disable_color} \
      ~{terminal_dot} \
      ~{one_dot} \
      ~{log_http} \
      ~{max_log_days} \
      ~{pass_credentials_to_gs_util} \
      ~{project} \
      ~{show_structured_logs} \
      ~{trace_token} \
      ~{user_output_enabled} \
      ~{verbosity} \
      ~{app} \
      ~{promote_by_default} \
      ~{stop_previous_version} \
      ~{use_runtime_builders} \
      ~{auth} \
      ~{component_manager} \
      ~{disable_update_check} \
      ~{compute} \
      ~{zone} \
      ~{container} \
      ~{cluster} \
      ~{use_application_default_credentials} \
      ~{use_client_certificate} \
      ~{data_proc} \
      ~{functions} \
      ~{ml_engine} \
      ~{proxy} \
      ~{password} \
      ~{port} \
      ~{type} \
      ~{username} \
      ~{spanner} \
      ~{instance} \
      ~{if defined(configuration) then ("--configuration " +  '"' + configuration + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    configuration: ", or environment variable"
    unset_dot: "Creating configurations"
    active_dot: "You can activate a configuration for a single gcloud invocation using flag,"
    core: "account\\nThe account gcloud should use for authentication. You can run\\ngcloud auth list to see the accounts you currently have available."
    custom_ca_certs_file: "Absolute path to a custom CA cert file."
    default_regional_backend_service: "If True, backend services in gcloud compute backend-services will\\nbe regional by default. The --global flag will be required for\\nglobal backend services."
    disable_color: "If True, color will not be used when printing messages in the"
    terminal_dot: "disable_prompts"
    one_dot: "disable_usage_reporting"
    log_http: "If True, log HTTP requests and responses to the logs. You may need\\nto adjust your verbosity setting if you want to see in the\\nterminal, otherwise it is available in the log files."
    max_log_days: "Maximum number of days to retain log files before deleting. If set\\nto 0, turns off log garbage collection and does not delete log\\nfiles. If unset, defaults to 30."
    pass_credentials_to_gs_util: "If True, pass the configured Cloud SDK authentication to gsutil."
    project: "The project id of the Cloud Platform project to operate on by\\ndefault. This can be overridden by using the global --project flag."
    show_structured_logs: "Controls when JSON structured log messages for the current\\nverbosity and above will be written to standard error. The default\\nis text format when disabled. Valid values are: never - Log\\nmessages as text, always - Always log messages as JSON, log - Only\\nlog messages as JSON if stderr is a file, terminal - Only log\\nmessages as JSON if stderr is a terminal. If unset default is\\nnever."
    trace_token: "Token used to route traces of service requests for investigation of\\nissues. This token will be provided by Google support."
    user_output_enabled: "If False, messages to the user and command output on both standard\\noutput and standard error will be suppressed."
    verbosity: "The default logging verbosity for gcloud commands. This is the\\nequivalent of using the global --verbosity flag."
    app: "cloud_build_timeout\\nThe timeout, in seconds, to wait for Docker builds to complete\\nduring deployments. All Docker builds now use the Container Builder\\nAPI."
    promote_by_default: "If True, when deploying a new version of a service, that version\\nwill be promoted to receive all traffic for the service. The flag\\ncan be overridden via the --promote-by-default or\\n--no-promote-by-default flags."
    stop_previous_version: "If True, when deploying a new version of a service, the previously\\ndeployed version is stopped. If False, older versions must be\\nstopped manually."
    use_runtime_builders: "If set, opt in/out to a new code path for building applications\\nusing pre-fabricated runtimes that can be updated independently of\\nclient tooling. (If not set, will use the default path for each\\nruntime.)"
    auth: "disable_credentials\\nIf true, gcloud will not attempt to load any credentials or\\nauthenticate any requests. This is useful if you are behind a proxy\\nthat adds authentication to your requests."
    component_manager: "additional_repositories\\nA comma separated list of additional repositories to check for\\ncomponents. This property is automatically managed by the gcloud\\ncomponents repositories commands."
    disable_update_check: "If True, the Cloud SDK will not automatically check for updates."
    compute: "region\\nThe default region to use when working with regional Compute Engine\\nresources. When a --region flag is required but not provided, the\\ncommand will fall back to this value, if set. To see valid choices,\\nrun gcloud compute regions list."
    zone: "The default zone to use when working with zonal Compute Engine\\nresources. When a --zone flag is required but not provided, the\\ncommand will fall back to this value, if set. To see valid choices,\\nrun gcloud compute zones list."
    container: "build_timeout\\nThe timeout, in seconds, to wait for container builds to complete."
    cluster: "The name of the cluster to use by default when working with\\nContainer Engine."
    use_application_default_credentials: "Use application default credentials to authenticate to the cluster\\nAPI server."
    use_client_certificate: "Use the cluster's client certificate to authenticate to the cluster\\nAPI server."
    data_proc: "region\\nSpecifies the Cloud Dataproc region to use. Each Cloud Dataproc\\nregion constitutes an independent resource namespace constrained to\\ndeploying instances into Google Compute Engine zones inside the\\nregion. The default value of \\\"global\\\" is a special multi-region\\nnamespace which is capable of deploying instances into all Google\\nCompute Engine zones globally, and is disjoint from other Cloud\\nDataproc regions."
    functions: "region\\nThe default region to use when working with Google Compute\\nfunctions resources. When a --region flag is required but not\\nprovided, the command will fall back to this value, if set. To see\\nvalid choices, run gcloud functions regions list."
    ml_engine: "polling_interval\\nThe interval (in seconds) at which to poll logs from your Cloud ML\\nEngine jobs. Note that making it much faster than the default (60)\\nwill quickly use all of your quota."
    proxy: "address\\nThe hostname or IP address of your proxy server."
    password: "If your proxy requires authentication, the password to use when"
    port: "port"
    type: "The type of proxy you are using. Supported proxy types are: [http,\\nhttp_no_tunnel, socks4, socks5]."
    username: "If your proxy requires authentication, the username to use when"
    spanner: "spanner"
    instance: "The default instance to use when working with Cloud Spanner\\nresources. When an instance is required but not provided by a flag,\\nthe command will fall back to this value, if set.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}