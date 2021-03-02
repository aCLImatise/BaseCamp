class: CommandLineTool
id: cooc_mutbamscan.cwl
inputs:
- id: in_samples
  doc: V-pipe samples list tsv
  type: string?
  inputBinding:
    prefix: --samples
- id: in_cram_alignment_files
  doc: "/CRAM [BAM/CRAM ...], --alignments BAM/CRAM [BAM/CRAM ...]\nalignment files"
  type: string?
  inputBinding:
    prefix: -a
- id: in_prefix
  doc: "V-pipe work directory prefix for where to look at\nalign files when using\
    \ TSV samples list"
  type: File?
  inputBinding:
    prefix: --prefix
- id: in_json
  doc: output results to as JSON file
  type: File?
  inputBinding:
    prefix: --json
- id: in_yaml
  doc: output results to as yaml file
  type: File?
  inputBinding:
    prefix: --yaml
- id: in_tsv
  doc: output results to as (raw) tsv file
  type: File?
  inputBinding:
    prefix: --tsv
- id: in_dump
  doc: dump the python object to the terminal
  type: boolean?
  inputBinding:
    prefix: --dump
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_json
  doc: output results to as JSON file
  type: File?
  outputBinding:
    glob: $(inputs.in_json)
- id: out_yaml
  doc: output results to as yaml file
  type: File?
  outputBinding:
    glob: $(inputs.in_yaml)
- id: out_tsv
  doc: output results to as (raw) tsv file
  type: File?
  outputBinding:
    glob: $(inputs.in_tsv)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cojac:0.1--0
cwlVersion: v1.1
baseCommand:
- cooc-mutbamscan
