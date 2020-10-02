class: CommandLineTool
id: SVwiden.cwl
inputs:
- id: in_ref
  doc: "Specify the path to the multi-fasta file that serves as a reference\nfor the\
    \ structural variants in the VCF file."
  type: File
  inputBinding:
    prefix: --ref
- id: in_prefix
  doc: "Specify a prefix for the path to which to write a new VCF file\ncontaining\
    \ the structural variants from the input VCF file, but now\nwith tags specifying\
    \ widened coordinates. (Default \"./widened\")."
  type: File
  inputBinding:
    prefix: --prefix
- id: in_refname
  doc: "Specify a string to be written as the reference name in the\n##reference line\
    \ of the VCF header."
  type: string
  inputBinding:
    prefix: --refname
- id: in_noheader
  doc: Flag option to suppress printout of the VCF header.
  type: boolean
  inputBinding:
    prefix: --noheader
- id: in_variants
  doc: ''
  type: File
  inputBinding:
    prefix: --variants
- id: in_for
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_complete
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_documentation
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- SVwiden
