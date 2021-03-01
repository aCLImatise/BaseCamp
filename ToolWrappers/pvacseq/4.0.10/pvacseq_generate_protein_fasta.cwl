class: CommandLineTool
id: pvacseq_generate_protein_fasta.cwl
inputs:
- id: in_downstream_sequence_length
  doc: "Cap to limit the downstream sequence length for\nframeshifts when creating\
    \ the fasta file. Use 'full'\nto include the full downstream sequence. Default:\
    \ 1000\n"
  type: long?
  inputBinding:
    prefix: --downstream-sequence-length
- id: in_positional_arguments
  doc: 'positional arguments:'
  type: string
  inputBinding:
    position: 0
- id: in_input_file
  doc: "A VEP-annotated single-sample VCF containing\ntranscript, Wildtype protein\
    \ sequence, and Downstream\nprotein sequence information"
  type: string
  inputBinding:
    position: 1
- id: in_peptide_sequence_length
  doc: "Length of the peptide sequence to use when creating\nthe FASTA."
  type: string
  inputBinding:
    position: 2
- id: in_output_fasta_file
  doc: The output fasta file
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- pvacseq
- generate_protein_fasta
