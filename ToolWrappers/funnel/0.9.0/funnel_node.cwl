class: CommandLineTool
id: funnel_node.cwl
inputs:
- id: in_amazons_three_dot_disabled
  doc: Disable storage backend
  type: boolean
  inputBinding:
    prefix: --AmazonS3.Disabled
- id: in_amazons_three_dot_max_retries
  doc: Maximum number of times that a request will be retried for failures
  type: long
  inputBinding:
    prefix: --AmazonS3.MaxRetries
- id: in_bolt_db_dot_path
  doc: Path to BoltDB database
  type: File
  inputBinding:
    prefix: --BoltDB.Path
- id: in_compute
  doc: Name of compute backed to use
  type: string
  inputBinding:
    prefix: --Compute
- id: in_database
  doc: Name of database backed to use
  type: string
  inputBinding:
    prefix: --Database
- id: in_datastore_dotproject
  doc: Google project for Datastore
  type: string
  inputBinding:
    prefix: --Datastore.Project
- id: in_dynamo_db_dot_max_retries
  doc: Maximum number of times that a request will be retried for failures
  type: long
  inputBinding:
    prefix: --DynamoDB.MaxRetries
- id: in_dynamo_db_dot_region
  doc: AWS region of DynamoDB tables
  type: string
  inputBinding:
    prefix: --DynamoDB.Region
- id: in_dynamo_db_dot_table_basename
  doc: Basename of DynamoDB tables
  type: string
  inputBinding:
    prefix: --DynamoDB.TableBasename
- id: in_elastic_dot_index_prefix
  doc: Prefix to use for Elasticsearch indices
  type: string
  inputBinding:
    prefix: --Elastic.IndexPrefix
- id: in_elastic_dot_url
  doc: Elasticsearch URL
  type: string
  inputBinding:
    prefix: --Elastic.URL
- id: in_event_writers
  doc: Name of an event writer backend to use. This flag can be used multiple times
  type: string
  inputBinding:
    prefix: --EventWriters
- id: in_google_storage_dot_disabled
  doc: Disable storage backend
  type: boolean
  inputBinding:
    prefix: --GoogleStorage.Disabled
- id: in_http_storage_dot_disabled
  doc: Disable storage backend
  type: boolean
  inputBinding:
    prefix: --HTTPStorage.Disabled
- id: in_http_storage_dot_timeout
  doc: Timeout in seconds for request (default 0s)
  type: long
  inputBinding:
    prefix: --HTTPStorage.Timeout
- id: in_kafka_dot_servers
  doc: Address of a Kafka server. This flag can be used multiple times
  type: string
  inputBinding:
    prefix: --Kafka.Servers
- id: in_kafka_dot_topic
  doc: Kafka topic to write events to
  type: string
  inputBinding:
    prefix: --Kafka.Topic
- id: in_local_storage_dot_allowed_dirs
  doc: Directories Funnel is allowed to access. This flag can be used multiple times
  type: string
  inputBinding:
    prefix: --LocalStorage.AllowedDirs
- id: in_local_storage_dot_disabled
  doc: Disable storage backend
  type: boolean
  inputBinding:
    prefix: --LocalStorage.Disabled
- id: in_logger_dot_formatter
  doc: Logs formatter. One of ['text', 'json']
  type: string
  inputBinding:
    prefix: --Logger.Formatter
- id: in_logger_dot_level
  doc: Level of logging
  type: string
  inputBinding:
    prefix: --Logger.Level
- id: in_logger_dot_output_file
  doc: File path to write logs to
  type: File
  inputBinding:
    prefix: --Logger.OutputFile
- id: in_mongo_db_dot_addrs
  doc: Address of a MongoDB seed server. This flag can be used multiple times
  type: string
  inputBinding:
    prefix: --MongoDB.Addrs
- id: in_mongo_db_dot_database
  doc: Database name in MongoDB
  type: string
  inputBinding:
    prefix: --MongoDB.Database
- id: in_mongo_db_dot_timeout
  doc: Timeout in seconds for initial connection and follow up operations (default
    0s)
  type: long
  inputBinding:
    prefix: --MongoDB.Timeout
- id: in_node_dot_resources_dot_cpus
  doc: Cpus available to Node
  type: long
  inputBinding:
    prefix: --Node.Resources.Cpus
- id: in_node_dot_resources_dot_disk_gb
  doc: Free disk (GB) available to Node
  type: double
  inputBinding:
    prefix: --Node.Resources.DiskGb
- id: in_node_dot_resources_do_tram_gb
  doc: Ram (GB) available to Node
  type: double
  inputBinding:
    prefix: --Node.Resources.RamGb
- id: in_node_dot_timeout
  doc: Node timeout in seconds (default 0s)
  type: long
  inputBinding:
    prefix: --Node.Timeout
- id: in_node_dot_update_rate
  doc: Node update rate (default 0s)
  type: long
  inputBinding:
    prefix: --Node.UpdateRate
- id: in_rpcclient_dot_max_retries
  doc: Maximum number of times that a request will be retried for failures
  type: long
  inputBinding:
    prefix: --RPCClient.MaxRetries
- id: in_rpcclient_dot_server_address
  doc: RPC server address
  type: string
  inputBinding:
    prefix: --RPCClient.ServerAddress
- id: in_rpcclient_dot_timeout
  doc: Request timeout for RPC client connections (default 0s)
  type: long
  inputBinding:
    prefix: --RPCClient.Timeout
- id: in_server_dot_http_port
  doc: HTTP Port
  type: string
  inputBinding:
    prefix: --Server.HTTPPort
- id: in_server_dot_hostname
  doc: Host name or IP
  type: string
  inputBinding:
    prefix: --Server.HostName
- id: in_server_dot_rpc_port
  doc: RPC Port
  type: string
  inputBinding:
    prefix: --Server.RPCPort
- id: in_server_dot_service_name
  doc: Host name or IP
  type: string
  inputBinding:
    prefix: --Server.ServiceName
- id: in_swift_dot_chunksize_bytes
  doc: Size of chunks to use for large object creation
  type: long
  inputBinding:
    prefix: --Swift.ChunkSizeBytes
- id: in_swift_dot_disabled
  doc: Disable storage backend
  type: boolean
  inputBinding:
    prefix: --Swift.Disabled
- id: in_swift_dot_max_retries
  doc: Maximum number of times that a request will be retried for failures
  type: long
  inputBinding:
    prefix: --Swift.MaxRetries
- id: in_worker_dot_leave_workdir
  doc: Leave working directory after execution
  type: boolean
  inputBinding:
    prefix: --Worker.LeaveWorkDir
- id: in_worker_dot_log_tail_size
  doc: Max bytes to store for stdout/stderr
  type: long
  inputBinding:
    prefix: --Worker.LogTailSize
- id: in_worker_dot_log_update_rate
  doc: How often to send stdout/stderr log updates (default 0s)
  type: long
  inputBinding:
    prefix: --Worker.LogUpdateRate
- id: in_worker_dot_polling_rate
  doc: How often to poll for cancel signals (default 0s)
  type: long
  inputBinding:
    prefix: --Worker.PollingRate
- id: in_worker_dot_workdir
  doc: Working directory
  type: Directory
  inputBinding:
    prefix: --Worker.WorkDir
- id: in_config
  doc: Config File
  type: File
  inputBinding:
    prefix: --config
- id: in_run
  doc: Run a Funnel node.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- funnel
- node
