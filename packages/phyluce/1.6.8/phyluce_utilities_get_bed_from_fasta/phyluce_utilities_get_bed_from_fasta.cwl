class: CommandLineTool
id: phyluce_utilities_get_bed_from_fasta.cwl
inputs:
- id: in_input
  doc: The fasta file to parse
  type: File
  inputBinding:
    prefix: --input
- id: in_output
  doc: The BED file to create
  type: File
  inputBinding:
    prefix: --output
- id: in_locus_prefix
  doc: "A prefix to add to each locus name\n"
  type: string
  inputBinding:
    prefix: --locus-prefix
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- phyluce_utilities_get_bed_from_fasta
