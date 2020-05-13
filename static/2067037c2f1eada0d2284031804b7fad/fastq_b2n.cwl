class: CommandLineTool
id: fastq_b2n.py.cwl
inputs:
- id: input
  doc: The input file (in FASTQ format) containing the short reads to be processed.
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: The output FASTQ file containing the short reads where the nucleotides with
    low quality score 'B' have been converted to ambigous nucleotide N.
  type: string
  inputBinding:
    prefix: --output
- id: find
  doc: By default the only tails of B quality are removed. If this is used then the
    first occurence of B is used to trim the read.
  type: boolean
  inputBinding:
    prefix: --find
- id: ambiguous
  doc: By default the ambigous nucleotides are not convert to As. If this is set then
    all ambigous nucleotides will be converted to As.
  type: boolean
  inputBinding:
    prefix: --ambiguous
- id: sanger
  doc: By default read qualities are in Illumina v1.5 format and the character 'B'
    is used to search qualities. If this is used than the character '#' (that is B
    in Sanger format) is used to search the qualities.
  type: boolean
  inputBinding:
    prefix: --sanger
- id: replacement
  doc: The character to be use for replacing the nucleotide which have the quality
    score Q2. Default is 'N'.
  type: string
  inputBinding:
    prefix: --replacement
- id: threshold
  doc: If if this is larger than zero then all the short reads strictly shorter than
    this threshold (if the trimming of Bs would be done) are removed. Default is '0'.
  type: string
  inputBinding:
    prefix: --threshold
outputs: []
cwlVersion: v1.1
baseCommand:
- fastq_b2n.py
