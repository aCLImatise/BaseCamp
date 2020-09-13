version 1.0

task FunnelNode {
  input {
    Boolean? amazons_three_dot_disabled
    Int? amazons_three_dot_max_retries
    File? bolt_db_dot_path
    String? compute
    String? database
    String? datastore_dotproject
    Int? dynamo_db_dot_max_retries
    String? dynamo_db_dot_region
    String? dynamo_db_dot_table_basename
    String? elastic_dot_index_prefix
    String? elastic_dot_url
    String? event_writers
    Boolean? google_storage_dot_disabled
    Boolean? http_storage_dot_disabled
    Int? http_storage_dot_timeout
    String? kafka_dot_servers
    String? kafka_dot_topic
    String? local_storage_dot_allowed_dirs
    Boolean? local_storage_dot_disabled
    String? logger_dot_formatter
    String? logger_dot_level
    File? logger_dot_output_file
    String? mongo_db_dot_addrs
    String? mongo_db_dot_database
    Int? mongo_db_dot_timeout
    Int? node_dot_resources_dot_cpus
    Float? node_dot_resources_dot_disk_gb
    Float? node_dot_resources_do_tram_gb
    Int? node_dot_timeout
    Int? node_dot_update_rate
    Int? rpcclient_dot_max_retries
    String? rpcclient_dot_server_address
    Int? rpcclient_dot_timeout
    String? server_dot_http_port
    String? server_dot_hostname
    String? server_dot_rpc_port
    String? server_dot_service_name
    Int? swift_dot_chunksize_bytes
    Boolean? swift_dot_disabled
    Int? swift_dot_max_retries
    Boolean? worker_dot_leave_workdir
    Int? worker_dot_log_tail_size
    Int? worker_dot_log_update_rate
    Int? worker_dot_polling_rate
    Directory? worker_dot_workdir
    File? config
    String run
  }
  command <<<
    funnel node \
      ~{run} \
      ~{if (amazons_three_dot_disabled) then "--AmazonS3.Disabled" else ""} \
      ~{if defined(amazons_three_dot_max_retries) then ("--AmazonS3.MaxRetries " +  '"' + amazons_three_dot_max_retries + '"') else ""} \
      ~{if defined(bolt_db_dot_path) then ("--BoltDB.Path " +  '"' + bolt_db_dot_path + '"') else ""} \
      ~{if defined(compute) then ("--Compute " +  '"' + compute + '"') else ""} \
      ~{if defined(database) then ("--Database " +  '"' + database + '"') else ""} \
      ~{if defined(datastore_dotproject) then ("--Datastore.Project " +  '"' + datastore_dotproject + '"') else ""} \
      ~{if defined(dynamo_db_dot_max_retries) then ("--DynamoDB.MaxRetries " +  '"' + dynamo_db_dot_max_retries + '"') else ""} \
      ~{if defined(dynamo_db_dot_region) then ("--DynamoDB.Region " +  '"' + dynamo_db_dot_region + '"') else ""} \
      ~{if defined(dynamo_db_dot_table_basename) then ("--DynamoDB.TableBasename " +  '"' + dynamo_db_dot_table_basename + '"') else ""} \
      ~{if defined(elastic_dot_index_prefix) then ("--Elastic.IndexPrefix " +  '"' + elastic_dot_index_prefix + '"') else ""} \
      ~{if defined(elastic_dot_url) then ("--Elastic.URL " +  '"' + elastic_dot_url + '"') else ""} \
      ~{if defined(event_writers) then ("--EventWriters " +  '"' + event_writers + '"') else ""} \
      ~{if (google_storage_dot_disabled) then "--GoogleStorage.Disabled" else ""} \
      ~{if (http_storage_dot_disabled) then "--HTTPStorage.Disabled" else ""} \
      ~{if defined(http_storage_dot_timeout) then ("--HTTPStorage.Timeout " +  '"' + http_storage_dot_timeout + '"') else ""} \
      ~{if defined(kafka_dot_servers) then ("--Kafka.Servers " +  '"' + kafka_dot_servers + '"') else ""} \
      ~{if defined(kafka_dot_topic) then ("--Kafka.Topic " +  '"' + kafka_dot_topic + '"') else ""} \
      ~{if defined(local_storage_dot_allowed_dirs) then ("--LocalStorage.AllowedDirs " +  '"' + local_storage_dot_allowed_dirs + '"') else ""} \
      ~{if (local_storage_dot_disabled) then "--LocalStorage.Disabled" else ""} \
      ~{if defined(logger_dot_formatter) then ("--Logger.Formatter " +  '"' + logger_dot_formatter + '"') else ""} \
      ~{if defined(logger_dot_level) then ("--Logger.Level " +  '"' + logger_dot_level + '"') else ""} \
      ~{if defined(logger_dot_output_file) then ("--Logger.OutputFile " +  '"' + logger_dot_output_file + '"') else ""} \
      ~{if defined(mongo_db_dot_addrs) then ("--MongoDB.Addrs " +  '"' + mongo_db_dot_addrs + '"') else ""} \
      ~{if defined(mongo_db_dot_database) then ("--MongoDB.Database " +  '"' + mongo_db_dot_database + '"') else ""} \
      ~{if defined(mongo_db_dot_timeout) then ("--MongoDB.Timeout " +  '"' + mongo_db_dot_timeout + '"') else ""} \
      ~{if defined(node_dot_resources_dot_cpus) then ("--Node.Resources.Cpus " +  '"' + node_dot_resources_dot_cpus + '"') else ""} \
      ~{if defined(node_dot_resources_dot_disk_gb) then ("--Node.Resources.DiskGb " +  '"' + node_dot_resources_dot_disk_gb + '"') else ""} \
      ~{if defined(node_dot_resources_do_tram_gb) then ("--Node.Resources.RamGb " +  '"' + node_dot_resources_do_tram_gb + '"') else ""} \
      ~{if defined(node_dot_timeout) then ("--Node.Timeout " +  '"' + node_dot_timeout + '"') else ""} \
      ~{if defined(node_dot_update_rate) then ("--Node.UpdateRate " +  '"' + node_dot_update_rate + '"') else ""} \
      ~{if defined(rpcclient_dot_max_retries) then ("--RPCClient.MaxRetries " +  '"' + rpcclient_dot_max_retries + '"') else ""} \
      ~{if defined(rpcclient_dot_server_address) then ("--RPCClient.ServerAddress " +  '"' + rpcclient_dot_server_address + '"') else ""} \
      ~{if defined(rpcclient_dot_timeout) then ("--RPCClient.Timeout " +  '"' + rpcclient_dot_timeout + '"') else ""} \
      ~{if defined(server_dot_http_port) then ("--Server.HTTPPort " +  '"' + server_dot_http_port + '"') else ""} \
      ~{if defined(server_dot_hostname) then ("--Server.HostName " +  '"' + server_dot_hostname + '"') else ""} \
      ~{if defined(server_dot_rpc_port) then ("--Server.RPCPort " +  '"' + server_dot_rpc_port + '"') else ""} \
      ~{if defined(server_dot_service_name) then ("--Server.ServiceName " +  '"' + server_dot_service_name + '"') else ""} \
      ~{if defined(swift_dot_chunksize_bytes) then ("--Swift.ChunkSizeBytes " +  '"' + swift_dot_chunksize_bytes + '"') else ""} \
      ~{if (swift_dot_disabled) then "--Swift.Disabled" else ""} \
      ~{if defined(swift_dot_max_retries) then ("--Swift.MaxRetries " +  '"' + swift_dot_max_retries + '"') else ""} \
      ~{if (worker_dot_leave_workdir) then "--Worker.LeaveWorkDir" else ""} \
      ~{if defined(worker_dot_log_tail_size) then ("--Worker.LogTailSize " +  '"' + worker_dot_log_tail_size + '"') else ""} \
      ~{if defined(worker_dot_log_update_rate) then ("--Worker.LogUpdateRate " +  '"' + worker_dot_log_update_rate + '"') else ""} \
      ~{if defined(worker_dot_polling_rate) then ("--Worker.PollingRate " +  '"' + worker_dot_polling_rate + '"') else ""} \
      ~{if defined(worker_dot_workdir) then ("--Worker.WorkDir " +  '"' + worker_dot_workdir + '"') else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""}
  >>>
  parameter_meta {
    amazons_three_dot_disabled: "Disable storage backend"
    amazons_three_dot_max_retries: "Maximum number of times that a request will be retried for failures"
    bolt_db_dot_path: "Path to BoltDB database"
    compute: "Name of compute backed to use"
    database: "Name of database backed to use"
    datastore_dotproject: "Google project for Datastore"
    dynamo_db_dot_max_retries: "Maximum number of times that a request will be retried for failures"
    dynamo_db_dot_region: "AWS region of DynamoDB tables"
    dynamo_db_dot_table_basename: "Basename of DynamoDB tables"
    elastic_dot_index_prefix: "Prefix to use for Elasticsearch indices"
    elastic_dot_url: "Elasticsearch URL"
    event_writers: "Name of an event writer backend to use. This flag can be used multiple times"
    google_storage_dot_disabled: "Disable storage backend"
    http_storage_dot_disabled: "Disable storage backend"
    http_storage_dot_timeout: "Timeout in seconds for request (default 0s)"
    kafka_dot_servers: "Address of a Kafka server. This flag can be used multiple times"
    kafka_dot_topic: "Kafka topic to write events to"
    local_storage_dot_allowed_dirs: "Directories Funnel is allowed to access. This flag can be used multiple times"
    local_storage_dot_disabled: "Disable storage backend"
    logger_dot_formatter: "Logs formatter. One of ['text', 'json']"
    logger_dot_level: "Level of logging"
    logger_dot_output_file: "File path to write logs to"
    mongo_db_dot_addrs: "Address of a MongoDB seed server. This flag can be used multiple times"
    mongo_db_dot_database: "Database name in MongoDB"
    mongo_db_dot_timeout: "Timeout in seconds for initial connection and follow up operations (default 0s)"
    node_dot_resources_dot_cpus: "Cpus available to Node"
    node_dot_resources_dot_disk_gb: "Free disk (GB) available to Node"
    node_dot_resources_do_tram_gb: "Ram (GB) available to Node"
    node_dot_timeout: "Node timeout in seconds (default 0s)"
    node_dot_update_rate: "Node update rate (default 0s)"
    rpcclient_dot_max_retries: "Maximum number of times that a request will be retried for failures"
    rpcclient_dot_server_address: "RPC server address"
    rpcclient_dot_timeout: "Request timeout for RPC client connections (default 0s)"
    server_dot_http_port: "HTTP Port"
    server_dot_hostname: "Host name or IP"
    server_dot_rpc_port: "RPC Port"
    server_dot_service_name: "Host name or IP"
    swift_dot_chunksize_bytes: "Size of chunks to use for large object creation"
    swift_dot_disabled: "Disable storage backend"
    swift_dot_max_retries: "Maximum number of times that a request will be retried for failures"
    worker_dot_leave_workdir: "Leave working directory after execution"
    worker_dot_log_tail_size: "Max bytes to store for stdout/stderr"
    worker_dot_log_update_rate: "How often to send stdout/stderr log updates (default 0s)"
    worker_dot_polling_rate: "How often to poll for cancel signals (default 0s)"
    worker_dot_workdir: "Working directory"
    config: "Config File"
    run: "Run a Funnel node."
  }
  output {
    File out_stdout = stdout()
  }
}