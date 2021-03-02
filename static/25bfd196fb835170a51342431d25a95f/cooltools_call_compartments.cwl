class: CommandLineTool
id: cooltools_call_compartments.cwl
inputs:
- id: in_reference_track
  doc: Reference track for orienting and ranking
  type: File?
  inputBinding:
    prefix: --reference-track
- id: in_n_e_igs
  doc: 'Number of eigenvectors to compute.  [default: 3]'
  type: long?
  inputBinding:
    prefix: --n-eigs
- id: in_verbose
  doc: Enable verbose output
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_out_prefix
  doc: "Save compartment track as a BED-like file.\n[required]"
  type: File?
  inputBinding:
    prefix: --out-prefix
- id: in_bigwig
  doc: Also save compartment track as a bigWig file.
  type: boolean?
  inputBinding:
    prefix: --bigwig
- id: in_track_name_dot
  doc: 'Options:'
  type: string
  inputBinding:
    position: 0
- id: in_eigenvectors
  doc: --contact-type [cis|trans]  Type of the contacts perform eigen-value
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cooltools:0.3.2--py36h29c9776_0
cwlVersion: v1.1
baseCommand:
- cooltools
- call-compartments
