class: CommandLineTool
id: pyssw.py.cwl
inputs:
- id: subject
  doc: Path of the fasta file containing the subject genome sequence. Can be gziped.
    [REQUIRED]
  type: string
  inputBinding:
    prefix: --subject
- id: query
  doc: Path of the fastq or fasta file containing the short read to be aligned. Can
    be gziped. [REQUIRED]
  type: string
  inputBinding:
    prefix: --query
- id: q_type
  doc: 'Type of the query file = fastq or fasta. [default: fastq]'
  type: string
  inputBinding:
    prefix: --qtype
- id: match
  doc: 'Positive integer for weight match in genome sequence alignment. [default:
    2]'
  type: string
  inputBinding:
    prefix: --match
- id: mismatch
  doc: 'Positive integer. The negative value will be used as weight mismatch in genome
    sequence alignment. [default: 2]'
  type: string
  inputBinding:
    prefix: --mismatch
- id: gap_open
  doc: 'Positive integer. The negative value will be used as weight for the gap opening.
    [default: 3]'
  type: string
  inputBinding:
    prefix: --gap_open
- id: gap_extend
  doc: 'Positive integer. The negative value will be used as weight for the gap opening.
    [default: 1]'
  type: string
  inputBinding:
    prefix: --gap_extend
- id: min_score
  doc: 'Integer. Consider alignments having a score <= as not aligned. [default: 0]'
  type: long
  inputBinding:
    prefix: --min_score
- id: min_len
  doc: 'Integer. Consider alignments having a length <= as not aligned. [default:
    0]'
  type: long
  inputBinding:
    prefix: --min_len
- id: reverse
  doc: Flag. Align query in forward and reverse orientation and choose the best alignment.
    [Set by default]
  type: boolean
  inputBinding:
    prefix: --reverse
- id: unaligned
  doc: Flag. Write unaligned reads in sam output [Unset by default]
  type: boolean
  inputBinding:
    prefix: --unaligned
outputs: []
cwlVersion: v1.1
baseCommand:
- pyssw.py
