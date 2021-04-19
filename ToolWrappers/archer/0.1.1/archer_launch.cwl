class: CommandLineTool
id: archer_launch.cwl
inputs:
- id: in_aws_bucket_name
  doc: the AWS S3 bucket name for data upload (default "artic-archer-uploads-test")
  type: long?
  inputBinding:
    prefix: --awsBucketName
- id: in_aws_region
  doc: the AWS region to use (default "eu-west-2")
  type: long?
  inputBinding:
    prefix: --awsRegion
- id: in_db_path
  doc: location to store the Archer database (default "/root/.archer")
  type: string?
  inputBinding:
    prefix: --dbPath
- id: in_gr_pc_address
  doc: address to announce on (default "localhost")
  type: string?
  inputBinding:
    prefix: --grpcAddress
- id: in_gr_pc_port
  doc: TCP port to listen to by the gRPC server (default "9090")
  type: long?
  inputBinding:
    prefix: --grpcPort
- id: in_log_file
  doc: where to write the server log (if unset, STDERR used)
  type: string?
  inputBinding:
    prefix: --logFile
- id: in_manifest_url
  doc: the ARTIC primer scheme manifest url (default "https://raw.githubusercontent.com/artic-network/primer-schemes/master/schemes_manifest.json")
  type: string?
  inputBinding:
    prefix: --manifestURL
- id: in_num_processors
  doc: number of processors to use (-1 == all) (default -1)
  type: long?
  inputBinding:
    prefix: --numProcessors
- id: in_num_workers
  doc: number of concurrent request handlers to use (default 2)
  type: long?
  inputBinding:
    prefix: --numWorkers
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/archer:0.1.1--he881be0_0
cwlVersion: v1.1
baseCommand:
- archer
- launch
