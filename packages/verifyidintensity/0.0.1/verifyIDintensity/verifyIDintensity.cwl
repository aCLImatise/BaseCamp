class: CommandLineTool
id: verifyIDintensity.cwl
inputs:
- id: in_threshold
  doc: Minimum allele frequency for likelihood estimation, default is 0.01
  type: double?
  inputBinding:
    prefix: --threshold
- id: in_marker
  doc: (required)  Number of markers
  type: long?
  inputBinding:
    prefix: --marker
- id: in_number
  doc: (required)  Number of samples
  type: long?
  inputBinding:
    prefix: --number
- id: in_abf
  doc: "Allele frequency file (ABF), which is a plain text file with SNP_ID\nand Allele_B\
    \ frequency"
  type: File?
  inputBinding:
    prefix: --abf
- id: in_stat
  doc: Statistics file (created if not exist)
  type: File?
  inputBinding:
    prefix: --stat
- id: in_in
  doc: (required)  Input intensity (.adpc.bin) file
  type: File?
  inputBinding:
    prefix: --in
- id: in_verbose
  doc: Turn on verbose mode
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_per_sample
  doc: Do per-sample analysis, default is per-marker analysis
  type: boolean?
  inputBinding:
    prefix: --persample
- id: in_string
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/verifyidintensity:0.0.1--h176a8bc_0
cwlVersion: v1.1
baseCommand:
- verifyIDintensity
