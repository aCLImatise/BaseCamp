class: CommandLineTool
id: ../../../pvacseq_generate_protein_fasta.cwl
inputs:
- id: downstream_sequence_length
  doc: "Cap to limit the downstream sequence length for frameshifts when creating\
    \ the fasta file. Use 'full' to include the full downstream sequence. Default:\
    \ 1000"
  type: string
  inputBinding:
    prefix: --downstream-sequence-length
- id: input_file
  doc: A VEP-annotated single-sample VCF containing transcript, Wildtype protein sequence,
    and Downstream protein sequence information
  type: string
  inputBinding:
    position: 0
- id: peptide_sequence_length
  doc: Length of the peptide sequence to use when creating the FASTA.
  type: string
  inputBinding:
    position: 1
- id: output_file
  doc: The output fasta file
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- pvacseq
- generate_protein_fasta
