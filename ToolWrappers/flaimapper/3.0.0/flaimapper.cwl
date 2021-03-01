class: CommandLineTool
id: flaimapper.cwl
inputs:
- id: in_parameters
  doc: "File containing the filtering parameters, using\ndefault if none is provided"
  type: File?
  inputBinding:
    prefix: --parameters
- id: in_output
  doc: output filename; '-' for stdout
  type: File?
  inputBinding:
    prefix: --output
- id: in_format
  doc: "file format of the output: [1: table; per fragment],\n[2: GTF (default)]"
  type: File?
  inputBinding:
    prefix: --format
- id: in_fast_a
  doc: "Single reference FASTA file (+faid index) containing\nall genomic reference\
    \ sequences"
  type: File?
  inputBinding:
    prefix: --fasta
- id: in_offset_five_p
  doc: "Offset in bp added to the exon-type annotations in the\nGTF file. This offset\
    \ is used in tools estimating the\nexpression levels (default=4)"
  type: long?
  inputBinding:
    prefix: --offset5p
- id: in_offset_three_p
  doc: "Offset in bp added to the exon-type annotations in the\nGTF file. This offset\
    \ is used in tools estimating the\nexpression levels (default=4)"
  type: long?
  inputBinding:
    prefix: --offset3p
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -V
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: output filename; '-' for stdout
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_format
  doc: "file format of the output: [1: table; per fragment],\n[2: GTF (default)]"
  type: File?
  outputBinding:
    glob: $(inputs.in_format)
hints: []
cwlVersion: v1.1
baseCommand:
- flaimapper
