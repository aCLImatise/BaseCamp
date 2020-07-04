class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/flaimapper.cwl
inputs:
- id: parameters
  doc: File containing the filtering parameters, using default if none is provided
  type: string
  inputBinding:
    prefix: --parameters
- id: output
  doc: output filename; '-' for stdout
  type: string
  inputBinding:
    prefix: --output
- id: format
  doc: 'file format of the output: [1: table; per fragment], [2: GTF (default)]'
  type: string
  inputBinding:
    prefix: --format
- id: fast_a
  doc: Single reference FASTA file (+faid index) containing all genomic reference
    sequences
  type: string
  inputBinding:
    prefix: --fasta
- id: offset_five_p
  doc: Offset in bp added to the exon-type annotations in the GTF file. This offset
    is used in tools estimating the expression levels (default=4)
  type: string
  inputBinding:
    prefix: --offset5p
- id: offset_three_p
  doc: Offset in bp added to the exon-type annotations in the GTF file. This offset
    is used in tools estimating the expression levels (default=4)
  type: string
  inputBinding:
    prefix: --offset3p
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -V
- id: alignment_file
  doc: indexed SAM or BAM file
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- flaimapper
