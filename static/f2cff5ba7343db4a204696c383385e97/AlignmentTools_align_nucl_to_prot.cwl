class: CommandLineTool
id: AlignmentTools_align_nucl_to_prot.cwl
inputs:
- id: align_nucleotide_to_protein
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: aligned_protseq_s
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: unaligned_nucl_seqs
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: aligned_nucl_out
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: stats_out
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- AlignmentTools
- align-nucl-to-prot
