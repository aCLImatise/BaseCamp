class: CommandLineTool
id: funnel_worker.cwl
inputs:
- id: amazon_s3
  doc: .Disabled                  Disable storage backend
  type: boolean
  inputBinding:
    prefix: --AmazonS3
- id: amazon_s3
  doc: .MaxRetries int            Maximum number of times that a request will be retried
    for failures
  type: boolean
  inputBinding:
    prefix: --AmazonS3
- id: bolt_db
  doc: .Path string                 Path to BoltDB database
  type: boolean
  inputBinding:
    prefix: --BoltDB
- id: compute
  doc: Name of compute backed to use
  type: string
  inputBinding:
    prefix: --Compute
- id: database
  doc: Name of database backed to use
  type: string
  inputBinding:
    prefix: --Database
- id: datastore
  doc: .Project string           Google project for Datastore
  type: boolean
  inputBinding:
    prefix: --Datastore
- id: dynamo_db
  doc: .MaxRetries int            Maximum number of times that a request will be retried
    for failures
  type: boolean
  inputBinding:
    prefix: --DynamoDB
- id: dynamo_db
  doc: .Region string             AWS region of DynamoDB tables
  type: boolean
  inputBinding:
    prefix: --DynamoDB
- id: dynamo_db
  doc: .TableBasename string      Basename of DynamoDB tables
  type: boolean
  inputBinding:
    prefix: --DynamoDB
- id: elastic
  doc: .IndexPrefix string         Prefix to use for Elasticsearch indices
  type: boolean
  inputBinding:
    prefix: --Elastic
- id: elastic
  doc: .URL string                 Elasticsearch URL
  type: boolean
  inputBinding:
    prefix: --Elastic
- id: event_writers
  doc: Name of an event writer backend to use. This flag can be used multiple times
  type: string
  inputBinding:
    prefix: --EventWriters
- id: google_storage
  doc: .Disabled             Disable storage backend
  type: boolean
  inputBinding:
    prefix: --GoogleStorage
- id: http_storage
  doc: .Disabled               Disable storage backend
  type: boolean
  inputBinding:
    prefix: --HTTPStorage
- id: http_storage
  doc: .Timeout duration       Timeout in seconds for request (default 0s)
  type: boolean
  inputBinding:
    prefix: --HTTPStorage
- id: kafka
  doc: .Servers strings              Address of a Kafka server. This flag can be used
    multiple times
  type: boolean
  inputBinding:
    prefix: --Kafka
- id: kafka
  doc: .Topic string                 Kafka topic to write events to
  type: boolean
  inputBinding:
    prefix: --Kafka
- id: local_storage
  doc: .AllowedDirs strings   Directories Funnel is allowed to access. This flag can
    be used multiple times
  type: boolean
  inputBinding:
    prefix: --LocalStorage
- id: local_storage
  doc: .Disabled              Disable storage backend
  type: boolean
  inputBinding:
    prefix: --LocalStorage
- id: logger
  doc: .Formatter string            Logs formatter. One of ['text', 'json']
  type: boolean
  inputBinding:
    prefix: --Logger
- id: logger
  doc: .Level string                Level of logging
  type: boolean
  inputBinding:
    prefix: --Logger
- id: logger
  doc: .OutputFile string           File path to write logs to
  type: boolean
  inputBinding:
    prefix: --Logger
- id: mongo_db
  doc: .Addrs strings              Address of a MongoDB seed server. This flag can
    be used multiple times
  type: boolean
  inputBinding:
    prefix: --MongoDB
- id: mongo_db
  doc: .Database string            Database name in MongoDB
  type: boolean
  inputBinding:
    prefix: --MongoDB
- id: mongo_db
  doc: .Timeout duration           Timeout in seconds for initial connection and follow
    up operations (default 0s)
  type: boolean
  inputBinding:
    prefix: --MongoDB
- id: node
  doc: .Resources.Cpus uint32         Cpus available to Node
  type: boolean
  inputBinding:
    prefix: --Node
- id: node
  doc: .Resources.DiskGb float        Free disk (GB) available to Node
  type: boolean
  inputBinding:
    prefix: --Node
- id: node
  doc: .Resources.RamGb float         Ram (GB) available to Node
  type: boolean
  inputBinding:
    prefix: --Node
- id: node
  doc: .Timeout duration              Node timeout in seconds (default 0s)
  type: boolean
  inputBinding:
    prefix: --Node
- id: node
  doc: .UpdateRate duration           Node update rate (default 0s)
  type: boolean
  inputBinding:
    prefix: --Node
- id: rpcclient
  doc: .MaxRetries uint          Maximum number of times that a request will be retried
    for failures
  type: boolean
  inputBinding:
    prefix: --RPCClient
- id: rpcclient
  doc: .ServerAddress string     RPC server address
  type: boolean
  inputBinding:
    prefix: --RPCClient
- id: rpcclient
  doc: .Timeout duration         Request timeout for RPC client connections (default
    0s)
  type: boolean
  inputBinding:
    prefix: --RPCClient
- id: server
  doc: .HTTPPort string             HTTP Port
  type: boolean
  inputBinding:
    prefix: --Server
- id: server
  doc: .HostName string             Host name or IP
  type: boolean
  inputBinding:
    prefix: --Server
- id: server
  doc: .RPCPort string              RPC Port
  type: boolean
  inputBinding:
    prefix: --Server
- id: server
  doc: .ServiceName string          Host name or IP
  type: boolean
  inputBinding:
    prefix: --Server
- id: swift
  doc: .ChunkSizeBytes int           Size of chunks to use for large object creation
  type: boolean
  inputBinding:
    prefix: --Swift
- id: swift
  doc: .Disabled                     Disable storage backend
  type: boolean
  inputBinding:
    prefix: --Swift
- id: swift
  doc: .MaxRetries int               Maximum number of times that a request will be
    retried for failures
  type: boolean
  inputBinding:
    prefix: --Swift
- id: worker
  doc: .LeaveWorkDir                Leave working directory after execution
  type: boolean
  inputBinding:
    prefix: --Worker
- id: worker
  doc: .LogTailSize int             Max bytes to store for stdout/stderr
  type: boolean
  inputBinding:
    prefix: --Worker
- id: worker
  doc: .LogUpdateRate duration      How often to send stdout/stderr log updates (default
    0s)
  type: boolean
  inputBinding:
    prefix: --Worker
- id: worker
  doc: .PollingRate duration        How often to poll for cancel signals (default
    0s)
  type: boolean
  inputBinding:
    prefix: --Worker
- id: worker
  doc: .WorkDir string              Working directory
  type: boolean
  inputBinding:
    prefix: --Worker
- id: config
  doc: Config File
  type: string
  inputBinding:
    prefix: --config
outputs: []
cwlVersion: v1.1
baseCommand:
- funnel
- worker
