class: CommandLineTool
id: flaimapper.cwl
inputs:
- id: alignment_file
  doc: indexed SAM or BAM file
  type: string
  inputBinding:
    position: 0
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
- id: f
  doc: '{1,2}, --format {1,2} file format of the output: [1: table; per fragment],
    [2: GTF (default)]'
  type: boolean
  inputBinding:
    prefix: -f
- id: fast_a
  doc: Single reference FASTA file (+faid index) containing all genomic reference
    sequences
  type: string
  inputBinding:
    prefix: --fasta
- id: offset_5p
  doc: Offset in bp added to the exon-type annotations in the GTF file. This offset
    is used in tools estimating the expression levels (default=4)
  type: string
  inputBinding:
    prefix: --offset5p
- id: offset_3p
  doc: Offset in bp added to the exon-type annotations in the GTF file. This offset
    is used in tools estimating the expression levels (default=4)
  type: string
  inputBinding:
    prefix: --offset3p
outputs: []
cwlVersion: v1.1
baseCommand:
- flaimapper
