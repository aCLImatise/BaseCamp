class: CommandLineTool
id: extract_transcripts.py.cwl
inputs:
- id: input_genes
  doc: Input file with Ensembl genes ids.
  type: string
  inputBinding:
    prefix: --input_genes
- id: input_transcriptome
  doc: Input FASTA genome containing the genome sequences.
  type: string
  inputBinding:
    prefix: --input_transcriptome
- id: output
  doc: The output FASTA file where the genes sequences are written.
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- extract_transcripts.py
