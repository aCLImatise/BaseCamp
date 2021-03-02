class: CommandLineTool
id: ribotricer_orfs_seq.cwl
inputs:
- id: in_ribot_ricer_index
  doc: "Path to the index file of ribotricer This file\nshould be generated using\
    \ ribotricer prepare-orfs\n[required]"
  type: File?
  inputBinding:
    prefix: --ribotricer_index
- id: in_fast_a
  doc: Path to FASTA file  [required]
  type: File?
  inputBinding:
    prefix: --fasta
- id: in_protein
  doc: Output protein sequence instead of nucleotide
  type: boolean?
  inputBinding:
    prefix: --protein
- id: in_save_to
  doc: Path to output file  [required]
  type: File?
  inputBinding:
    prefix: --saveto
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_save_to
  doc: Path to output file  [required]
  type: File?
  outputBinding:
    glob: $(inputs.in_save_to)
hints: []
cwlVersion: v1.1
baseCommand:
- ribotricer
- orfs-seq
