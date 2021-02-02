class: CommandLineTool
id: ../../../singularity_verify.cwl
inputs:
- id: in_all
  doc: verify all non-signature partitions in a SIF
  type: boolean
  inputBinding:
    prefix: --all
- id: in_groupid
  doc: group ID to be verified
  type: long
  inputBinding:
    prefix: --groupid
- id: in_json
  doc: output json
  type: boolean
  inputBinding:
    prefix: --json
- id: in_local
  doc: only verify with local keys
  type: boolean
  inputBinding:
    prefix: --local
- id: in_s_if_id
  doc: "descriptor ID to be verified (default\nsystem-partition)"
  type: long
  inputBinding:
    prefix: --sif-id
- id: in_url
  doc: key server URL (default "https://keys.sylabs.io")
  type: string
  inputBinding:
    prefix: --url
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- singularity
- verify
