class: CommandLineTool
id: mvp.cwl
inputs:
- id: in_file
  doc: 'vcf or vcf.gz file containing mutations (default: stdin)'
  type: string
  inputBinding:
    position: 0
- id: outfile
  doc: 'results table (default: stdout)'
  type: string
  inputBinding:
    prefix: --outfile
- id: reference
  doc: reference sequence in fasta format
  type: string
  inputBinding:
    prefix: --reference
- id: motif_file
  doc: file containing a list of motifs to check
  type: string
  inputBinding:
    prefix: --motif-file
- id: motif_list
  doc: a comma-delimited string of motifs to check
  type: string
  inputBinding:
    prefix: --motif-list
- id: sequence_type
  doc: 'DNA or amino acid (default: dna)'
  type: string
  inputBinding:
    prefix: --sequence-type
outputs: []
cwlVersion: v1.1
baseCommand:
- mvp
