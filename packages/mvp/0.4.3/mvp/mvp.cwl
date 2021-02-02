class: CommandLineTool
id: mvp.cwl
inputs:
- id: in_outfile
  doc: 'results table (default: stdout)'
  type: string
  inputBinding:
    prefix: --outfile
- id: in_reference
  doc: reference sequence in fasta format
  type: string
  inputBinding:
    prefix: --reference
- id: in_motif_file
  doc: file containing a list of motifs to check
  type: File
  inputBinding:
    prefix: --motif-file
- id: in_motif_list
  doc: a comma-delimited string of motifs to check
  type: string
  inputBinding:
    prefix: --motif-list
- id: in_sequence_type
  doc: "DNA or amino acid (default: dna)\n"
  type: string
  inputBinding:
    prefix: --sequence-type
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mvp
