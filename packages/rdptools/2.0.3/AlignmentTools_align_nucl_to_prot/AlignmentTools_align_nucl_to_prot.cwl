class: CommandLineTool
id: AlignmentTools_align_nucl_to_prot.cwl
inputs:
- id: in_align_nucleotide_to_protein
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_aligned_prot_seqs
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_unaligned_nucl_seqs
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_aligned_nucl_out
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_stats_out
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- AlignmentTools
- align-nucl-to-prot
