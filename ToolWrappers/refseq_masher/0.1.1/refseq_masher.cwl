class: CommandLineTool
id: ../../../refseq_masher.cwl
inputs:
- id: in_verbose
  doc: "Logging verbosity (-v for logging warnings; -vvv for logging\ndebug info)"
  type: boolean
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- refseq_masher
