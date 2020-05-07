class: CommandLineTool
id: bold_identification.cwl
inputs:
- id: i
  doc: input file name
  type: string
  inputBinding:
    prefix: -i
- id: f
  doc: input file format [fasta]
  type: string
  inputBinding:
    prefix: -f
- id: o
  doc: outfile
  type: string
  inputBinding:
    prefix: -o
- id: d
  doc: database to search [COX1]
  type: string
  inputBinding:
    prefix: -d
- id: n
  doc: how many first top hits will be output. [1]
  type: long
  inputBinding:
    prefix: -n
- id: r
  doc: Maximum submission time for a sequence, useful for handling TimeOutException.
    [4]
  type: long
  inputBinding:
    prefix: -r
- id: c
  doc: continuous mode, jump over the ones already in "-o" file, will resubmit all
    the remained. use "-cc" to also jump over the ones in "*.NoBoldMatchError.fasta"
    file. [0]
  type: boolean
  inputBinding:
    prefix: -c
- id: d
  doc: debug mode output [False]
  type: boolean
  inputBinding:
    prefix: -D
outputs: []
cwlVersion: v1.1
baseCommand:
- bold_identification
