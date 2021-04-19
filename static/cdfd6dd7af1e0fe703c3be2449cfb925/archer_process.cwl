class: CommandLineTool
id: archer_process.cwl
inputs:
- id: in_gr_pc_address
  doc: address of the server hosting the Archer service (default "localhost")
  type: string?
  inputBinding:
    prefix: --grpcAddress
- id: in_gr_pc_port
  doc: TCP port to listen to by the gRPC server (default "9090")
  type: long?
  inputBinding:
    prefix: --grpcPort
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
- process
