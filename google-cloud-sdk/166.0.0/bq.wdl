version 1.0

task Bq {
  input {
    Boolean? api
    Boolean? api_version
    Boolean? api_log
    Boolean? application_default_credential_file
    Boolean? big_query_rc
    Boolean? ca_certificates_file
    Boolean? credential_file
    Boolean? dataset_id
    Boolean? discovery_file
    Boolean? format
    Boolean? job_id
    Boolean? job_property
    Boolean? max_rows_per_request
    Boolean? project_id
    Boolean? proxy_address
    Boolean? proxy_password
    Boolean? proxy_port
    Boolean? proxy_username
    Boolean? _quiet_true
    Boolean? service_account
    Boolean? service_account_credential_file
    Boolean? service_account_private_key_file
    Boolean? service_account_private_key_password
    Boolean? sync
    Boolean? trace
    Boolean? auth_host_name
    Boolean? auth_host_port
    Boolean? flag_file
    Boolean? undef_ok
    Boolean? command_flags
    Boolean? global_flags
    String printing_dot
    String requests_dot
  }
  command <<<
    bq \
      ~{printing_dot} \
      ~{requests_dot} \
      ~{if (api) then "--api" else ""} \
      ~{if (api_version) then "--api_version" else ""} \
      ~{if (api_log) then "--apilog" else ""} \
      ~{if (application_default_credential_file) then "--application_default_credential_file" else ""} \
      ~{if (big_query_rc) then "--bigqueryrc" else ""} \
      ~{if (ca_certificates_file) then "--ca_certificates_file" else ""} \
      ~{if (credential_file) then "--credential_file" else ""} \
      ~{if (dataset_id) then "--dataset_id" else ""} \
      ~{if (discovery_file) then "--discovery_file" else ""} \
      ~{if (format) then "--format" else ""} \
      ~{if (job_id) then "--job_id" else ""} \
      ~{if (job_property) then "--job_property" else ""} \
      ~{if (max_rows_per_request) then "--max_rows_per_request" else ""} \
      ~{if (project_id) then "--project_id" else ""} \
      ~{if (proxy_address) then "--proxy_address" else ""} \
      ~{if (proxy_password) then "--proxy_password" else ""} \
      ~{if (proxy_port) then "--proxy_port" else ""} \
      ~{if (proxy_username) then "--proxy_username" else ""} \
      ~{if (_quiet_true) then "-q" else ""} \
      ~{if (service_account) then "--service_account" else ""} \
      ~{if (service_account_credential_file) then "--service_account_credential_file" else ""} \
      ~{if (service_account_private_key_file) then "--service_account_private_key_file" else ""} \
      ~{if (service_account_private_key_password) then "--service_account_private_key_password" else ""} \
      ~{if (sync) then "-sync" else ""} \
      ~{if (trace) then "--trace" else ""} \
      ~{if (auth_host_name) then "--auth_host_name" else ""} \
      ~{if (auth_host_port) then "--auth_host_port" else ""} \
      ~{if (flag_file) then "--flagfile" else ""} \
      ~{if (undef_ok) then "--undefok" else ""} \
      ~{if (command_flags) then "--command_flags" else ""} \
      ~{if (global_flags) then "--global_flags" else ""}
  >>>
  parameter_meta {
    api: ": API endpoint to talk to.\\n(default: 'https://www.googleapis.com')"
    api_version: ": API version to use.\\n(default: 'v2')"
    api_log: ": Turn on logging of all server requests and responses. If no string\\nis provided, log to stdout; if a string is provided, instead log to that\\nfile."
    application_default_credential_file: ": See https://developers.google.com/ident\\nity/protocols/application-default-credentials for more info.\\n(default: '')"
    big_query_rc: ": Path to configuration file. The configuration file specifies new\\ndefaults for any flags, and can be overrridden by specifying the flag on the\\ncommand line. If the --bigqueryrc flag is not specified, the BIGQUERYRC\\nenvironment variable is used. If that is not specified, the path\\n\\\"~/.bigqueryrc\\\" is used.\\n(default: '/root/.bigqueryrc')"
    ca_certificates_file: ": Location of CA certificates file.\\n(default: '')"
    credential_file: ": Filename used for storing the BigQuery OAuth token.\\n(default: '/root/.bigquery.v2.token')"
    dataset_id: ": Default dataset to use for requests. (Ignored when not\\napplicable.)\\n(default: '')"
    discovery_file: ": Filename for JSON document to read for discovery.\\n(default: '')"
    format: ": <none|json|prettyjson|csv|sparse|pretty>: Format for command output.\\nOptions include:\\npretty: formatted table output\\nsparse: simpler table output\\nprettyjson: easy-to-read JSON format\\njson: maximally compact JSON\\ncsv: csv format with header\\nThe first three are intended to be human-readable, and the latter three are\\nfor passing to another program. If no format is selected, one will be chosen\\nbased on the command run."
    job_id: ": A unique job_id to use for the request. If not specified, this\\nclient will generate a job_id. Applies only to commands that launch jobs,\\nsuch as cp, extract, load, and query."
    job_property: ": Additional key-value pairs to include in the properties field\\nof the job configuration;\\nrepeat this option to specify a list of values"
    max_rows_per_request: ": Specifies the max number of rows to return per read.\\n(an integer)"
    project_id: ": Default project to use for requests.\\n(default: '')"
    proxy_address: ": The name or IP address of the proxy host to use for\\nconnecting to GCP.\\n(default: '')"
    proxy_password: ": The password to use when authenticating with proxy host.\\n(default: '')"
    proxy_port: ": The port number to use to connect to the proxy host.\\n(default: '')"
    proxy_username: ": The user name to use when authenticating with proxy host.\\n(default: '')"
    _quiet_true: ",--[no]quiet: If True, ignore status updates while jobs are running.\\n(default: 'false')"
    service_account: ": Use this service account email address for authorization.\\nFor example, 1234567890@developer.gserviceaccount.com.\\n(default: '')"
    service_account_credential_file: ": File to be used as a credential store for\\nservice accounts. Must be set if using a service account."
    service_account_private_key_file: ": Filename that contains the service account\\nprivate key. Required if --service_account is specified.\\n(default: '')"
    service_account_private_key_password: ": Password for private key. This\\npassword must match the password you set on the key when you created it in\\nthe Google APIs Console. Defaults to the default Google APIs Console private\\nkey password.\\n(default: 'notasecret')"
    sync: ",--[no]synchronous_mode: If True, wait for command completion before\\nreturning, and use the job completion status for error codes. If False,\\nsimply create the job, and use the success of job creation as the error\\ncode.\\n(default: 'true')"
    trace: ": A tracing token of the form \\\"token:<token>\\\" to include in api"
    auth_host_name: ": Host name to use when running a local web server to handle\\nredirects during OAuth authorization.\\n(default: 'localhost')"
    auth_host_port: ": Port to use when running a local web server to handle\\nredirects during OAuth authorization.;\\nrepeat this option to specify a list of values\\n(default: '[8080, 8090]')\\n(an integer)"
    flag_file: ": Insert flag definitions from the given file into the command line.\\n(default: '')"
    undef_ok: ": comma-separated list of flag names that it is okay to specify on\\nthe command line even if the program does not define a flag with that name.\\nIMPORTANT: flags in this list that have arguments MUST use the --flag=value\\nformat.\\n(default: '')"
    command_flags: ""
    global_flags: ""
    printing_dot: "(default: 'false')"
    requests_dot: "--[no]use_gce_service_account: Use this when running on a Google Compute"
  }
  output {
    File out_stdout = stdout()
  }
}