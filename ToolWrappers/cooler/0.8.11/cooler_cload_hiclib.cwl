class: CommandLineTool
id: cooler_cload_hiclib.cwl
inputs:
- id: in_metadata
  doc: Path to JSON file containing user metadata.
  type: File?
  inputBinding:
    prefix: --metadata
- id: in_assembly
  doc: Name of genome assembly (e.g. hg19, mm10)
  type: long?
  inputBinding:
    prefix: --assembly
- id: in_chunksize
  doc: "Control the number of pixels handled by each worker\nprocess at a time.  [default:\
    \ 100000000]"
  type: long?
  inputBinding:
    prefix: --chunksize
- id: in_bins
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_pairs_path
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_cool_path
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cooler:0.8.11--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- cooler
- cload
- hiclib
