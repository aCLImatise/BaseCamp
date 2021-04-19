class: CommandLineTool
id: compute_comparison.cwl
inputs:
- id: in_in
  doc: '[string(s)]                 Input RMA and/or meganized DAA files (single directory
    ok). Mandatory option.'
  type: boolean?
  inputBinding:
    prefix: --in
- id: in_out
  doc: '[string]                   Output file. Default value: comparison.megan'
  type: File?
  inputBinding:
    prefix: --out
- id: in_metadata_file
  doc: '[string]        Metadata file.'
  type: boolean?
  inputBinding:
    prefix: --metaDataFile
- id: in_allow_same_names
  doc: 'All the same sample name to appear multiple times (will add -1, -2 etc). Default
    value: false.'
  type: boolean?
  inputBinding:
    prefix: --allowSameNames
- id: in_normalize
  doc: 'Normalize counts. Default value: true.'
  type: boolean?
  inputBinding:
    prefix: --normalize
- id: in_ignore_unassigned_reads
  doc: 'Ignore unassigned, no-hit or contaminant reads. Default value: false.'
  type: boolean?
  inputBinding:
    prefix: --ignoreUnassignedReads
- id: in_keep_one
  doc: 'In a normalized comparison, non-zero counts are mapped to 1 or more. Default
    value: false.'
  type: boolean?
  inputBinding:
    prefix: --keepOne
- id: in_verbose
  doc: 'Echo commandline options and be verbose. Default value: false.'
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: '[string]                   Output file. Default value: comparison.megan'
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/megan:6.21.2--h9ee0642_0
cwlVersion: v1.1
baseCommand:
- compute-comparison
