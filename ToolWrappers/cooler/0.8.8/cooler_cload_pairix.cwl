class: CommandLineTool
id: cooler_cload_pairix.cwl
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
- id: in_nproc
  doc: "Number of processes to split the work between.\n[default: 8]"
  type: long?
  inputBinding:
    prefix: --nproc
- id: in_zero_based
  doc: 'Positions are zero-based  [default: False]'
  type: boolean?
  inputBinding:
    prefix: --zero-based
- id: in_max_split
  doc: "Divide the pairs from each chromosome into at most\nthis many chunks. Smaller\
    \ chromosomes will be split\nless frequently or not at all. Increase ths value\n\
    if large chromosomes dominate the workload on\nmultiple processors.  [default:\
    \ 2]"
  type: long?
  inputBinding:
    prefix: --max-split
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
hints: []
cwlVersion: v1.1
baseCommand:
- cooler
- cload
- pairix
