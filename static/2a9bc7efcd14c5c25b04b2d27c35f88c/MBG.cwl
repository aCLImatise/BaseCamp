class: CommandLineTool
id: MBG.cwl
inputs:
- id: in_in
  doc: Input reads. Multiple files can be input with
  type: string?
  inputBinding:
    prefix: --in
- id: in_out
  doc: Output graph (required)
  type: string?
  inputBinding:
    prefix: --out
- id: in_number_threads_default
  doc: 'Number of threads (default: 1)'
  type: long?
  inputBinding:
    prefix: -t
- id: in_kmer_size_be
  doc: K-mer size. Must be odd and >=31 (required)
  type: long?
  inputBinding:
    prefix: -k
- id: in_window_size_be
  doc: Window size. Must be 1 <= w <= k-30 (required)
  type: long?
  inputBinding:
    prefix: -w
- id: in_km_er_abundance
  doc: 'Minimum k-mer abundance (default: 1)'
  type: long?
  inputBinding:
    prefix: --kmer-abundance
- id: in_unit_ig_abundance
  doc: "Minimum average unitig abundace and edge\nabundance (default: 2)"
  type: long?
  inputBinding:
    prefix: --unitig-abundance
- id: in_no_hpc
  doc: Don't use homopolymer compression
  type: boolean?
  inputBinding:
    prefix: --no-hpc
- id: in_collapse_hpc
  doc: "Collapse homopolymer runs to one character\ninstead of taking consensus"
  type: boolean?
  inputBinding:
    prefix: --collapse-hpc
- id: in_blunt
  doc: Output a bluntified graph without edge overlaps
  type: boolean?
  inputBinding:
    prefix: --blunt
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_k_mer
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_number
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_window
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_of
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_size_dot
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: in_must
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_threads
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_be
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_one
  doc: ''
  type: long
  inputBinding:
    position: 4
- id: in_odd
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_and
  doc: ''
  type: string
  inputBinding:
    position: 5
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mbg:1.0.3--he513fc3_0
cwlVersion: v1.1
baseCommand:
- MBG
