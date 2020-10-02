class: CommandLineTool
id: CIRCexplorer2_parse.cwl
inputs:
- id: in_aligner_tophatfusion_star
  doc: Aligner (TopHat-Fusion, STAR, MapSplice, BWA, segemehl).
  type: string
  inputBinding:
    prefix: -t
- id: in_bed
  doc: "Output file.\n[default: back_spliced_junction.bed]"
  type: File
  inputBinding:
    prefix: --bed
- id: in_pe
  doc: Parse paired-end alignment file (only for TopHat-Fusion). If this is set, then
    -f is set automatically.
  type: boolean
  inputBinding:
    prefix: --pe
- id: in_statistics_fragment_numbers
  doc: Statistics fragment numbers rather than read numbers.
  type: boolean
  inputBinding:
    prefix: -f
- id: in_fusion
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_bed
  doc: "Output file.\n[default: back_spliced_junction.bed]"
  type: File
  outputBinding:
    glob: $(inputs.in_bed)
cwlVersion: v1.1
baseCommand:
- CIRCexplorer2
- parse
