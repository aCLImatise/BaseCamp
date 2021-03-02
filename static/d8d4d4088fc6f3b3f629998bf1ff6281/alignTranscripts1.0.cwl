class: CommandLineTool
id: alignTranscripts1.0.cwl
inputs:
- id: in_gene_a
  doc: if bedA has more than one entry, specify which gene to
  type: string?
  inputBinding:
    prefix: --geneA
- id: in_gap_extend
  doc: unmask repeats when aligning
  type: string?
  inputBinding:
    prefix: --gap_extend
- id: in_orf
  doc: flag for checking for orfs in alignment
  type: boolean?
  inputBinding:
    prefix: --orf
- id: in_bed_tools_path
  doc: "Aligns genes to random background and removes\nnonsignificant alignments"
  type: File?
  inputBinding:
    prefix: --bedtools_path
- id: in_pad
  doc: ''
  type: string?
  inputBinding:
    prefix: --pad
- id: in_gene_b
  doc: ''
  type: string?
  inputBinding:
    prefix: --geneB
- id: in_bed_a
  doc: bed file A
  type: string
  inputBinding:
    position: 0
- id: in_genome_fasta_a
  doc: fasta file A
  type: string
  inputBinding:
    position: 1
- id: in_be_db
  doc: bed file B
  type: string
  inputBinding:
    position: 2
- id: in_genome_fast_ab
  doc: fasta file B
  type: string
  inputBinding:
    position: 3
- id: in_out_prefix
  doc: out prefix
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- alignTranscripts1.0
