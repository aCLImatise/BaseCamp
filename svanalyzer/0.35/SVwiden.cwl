class: CommandLineTool
id: ../../../SVwiden.cwl
inputs:
- id: ref
  doc: Specify the path to the multi-fasta file that serves as a reference for the
    structural variants in the VCF file.
  type: File
  inputBinding:
    prefix: --ref
- id: prefix
  doc: Specify a prefix for the path to which to write a new VCF file containing the
    structural variants from the input VCF file, but now with tags specifying widened
    coordinates. (Default "./widened").
  type: File
  inputBinding:
    prefix: --prefix
- id: refname
  doc: 'Specify a string to be written as the reference name in the ##reference line
    of the VCF header.'
  type: string
  inputBinding:
    prefix: --refname
- id: noheader
  doc: Flag option to suppress printout of the VCF header.
  type: boolean
  inputBinding:
    prefix: --noheader
- id: variants
  doc: ''
  type: File
  inputBinding:
    prefix: --variants
outputs: []
cwlVersion: v1.1
baseCommand:
- SVwiden
