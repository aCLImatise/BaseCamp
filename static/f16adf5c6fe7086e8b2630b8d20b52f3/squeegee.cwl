class: CommandLineTool
id: squeegee.cwl
inputs:
- id: in_num_core
  doc: Number of threads.
  type: long?
  inputBinding:
    prefix: --numcore
- id: in_min_prevalence
  doc: "Minimum prevalence threshold for a species to be\nindentified as a contaminant\
    \ species."
  type: long?
  inputBinding:
    prefix: --min-prevalence
- id: in_min_score
  doc: "Minimum contaminant score threshold for a species to\nbe indentified as a\
    \ contaminant species."
  type: long?
  inputBinding:
    prefix: --min-score
- id: in_min_align
  doc: "Minimum breadth of genome coverge threshold for a\nspecies to be indentified\
    \ as a contaminant species."
  type: long?
  inputBinding:
    prefix: --min-align
- id: in_stacked_idx
  doc: "Index to determine whether or not aligned reads have\nbeen stacked in small\
    \ region."
  type: string?
  inputBinding:
    prefix: --stacked-idx
- id: in_metadata
  doc: input matadata in txt format
  type: string
  inputBinding:
    position: 0
- id: in_kraken_db
  doc: directory of kraken database
  type: string
  inputBinding:
    position: 1
- id: in_output
  doc: squeegee output directory
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/squeegee:0.1.3--hdfd78af_0
cwlVersion: v1.1
baseCommand:
- squeegee
