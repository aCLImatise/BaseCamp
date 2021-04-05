class: CommandLineTool
id: zpca_tpm.cwl
inputs:
- id: in_tpm
  doc: TPM table (tsv).
  type: File?
  inputBinding:
    prefix: --tpm
- id: in_tpm_filter
  doc: 'Filter genes/transcripts with mean expression less than the provided filter.
    Default: 0'
  type: long?
  inputBinding:
    prefix: --tpm-filter
- id: in_tpm_pseudo_count
  doc: 'Pseudocount to add in the tpm table. Default: 1'
  type: long?
  inputBinding:
    prefix: --tpm-pseudocount
- id: in_out
  doc: Output directory
  type: Directory?
  inputBinding:
    prefix: --out
- id: in_verbose
  doc: Verbose
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Output directory
  type: Directory?
  outputBinding:
    glob: $(inputs.in_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/zpca:0.8.2--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- zpca-tpm
