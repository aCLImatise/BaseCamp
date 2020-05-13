class: CommandLineTool
id: bamtools_convert.cwl
inputs:
- id: in
  doc: the input BAM file(s) [stdin]
  type: string
  inputBinding:
    prefix: -in
- id: list
  doc: the input BAM file list, one line per file
  type: File
  inputBinding:
    prefix: -list
- id: out
  doc: the output BAM file [stdout]
  type: string
  inputBinding:
    prefix: -out
- id: format
  doc: the output file format - see README for recognized formats
  type: string
  inputBinding:
    prefix: -format
- id: region
  doc: genomic region. Index file is recommended for better performance, and is used
    automatically if it exists. See 'bamtools help index' for more details on creating
    one
  type: string
  inputBinding:
    prefix: -region
- id: fast_a
  doc: FASTA reference file
  type: string
  inputBinding:
    prefix: -fasta
- id: map_qual
  doc: print the mapping qualities
  type: boolean
  inputBinding:
    prefix: -mapqual
- id: noheader
  doc: omit the SAM header from output
  type: boolean
  inputBinding:
    prefix: -noheader
outputs: []
cwlVersion: v1.1
baseCommand:
- bamtools
- convert
