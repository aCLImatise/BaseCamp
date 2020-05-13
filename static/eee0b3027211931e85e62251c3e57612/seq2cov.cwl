class: CommandLineTool
id: seq2cov.pl.cwl
inputs:
- id: n
  doc: The regular expression to extract sample name from bam filename
  type: string
  inputBinding:
    prefix: -n
- id: n
  doc: Mutual exclusive to -n.  Set the sample name to name
  type: string
  inputBinding:
    prefix: -N
- id: b
  doc: The indexed BAM file
  type: string
  inputBinding:
    prefix: -b
- id: c
  doc: The column for chr
  type: string
  inputBinding:
    prefix: -c
- id: s
  doc: The column for region start, e.g. gene start
  type: string
  inputBinding:
    prefix: -S
- id: e
  doc: The column for region end, e.g. gene end
  type: string
  inputBinding:
    prefix: -E
- id: s
  doc: The column for segment starts in the region, e.g. exon starts
  type: string
  inputBinding:
    prefix: -s
- id: e
  doc: The column for segment ends in the region, e.g. exon ends
  type: string
  inputBinding:
    prefix: -e
- id: g
  doc: The column for gene name
  type: string
  inputBinding:
    prefix: -g
- id: x
  doc: 'The number of nucleotide to extend for each segment, default: 0'
  type: string
  inputBinding:
    prefix: -x
- id: z
  doc: Indicate whether it's zero based numbering, default is 1-based
  type: boolean
  inputBinding:
    prefix: -z
outputs: []
cwlVersion: v1.1
baseCommand:
- seq2cov.pl
