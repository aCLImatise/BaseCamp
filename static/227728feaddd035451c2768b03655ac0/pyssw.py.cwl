class: CommandLineTool
id: pyssw.py.cwl
inputs:
- id: in_subject
  doc: "Path of the fasta file containing the subject genome\nsequence. Can be gziped.\
    \ [REQUIRED]"
  type: File?
  inputBinding:
    prefix: --subject
- id: in_query
  doc: "Path of the fastq or fasta file containing the short\nread to be aligned.\
    \ Can be gziped. [REQUIRED]"
  type: File?
  inputBinding:
    prefix: --query
- id: in_q_type
  doc: "Type of the query file = fastq or fasta. [default:\nfastq]"
  type: File?
  inputBinding:
    prefix: --qtype
- id: in_match
  doc: "Positive integer for weight match in genome sequence\nalignment. [default:\
    \ 2]"
  type: long?
  inputBinding:
    prefix: --match
- id: in_mismatch
  doc: "Positive integer. The negative value will be used as\nweight mismatch in genome\
    \ sequence alignment.\n[default: 2]"
  type: long?
  inputBinding:
    prefix: --mismatch
- id: in_gap_open
  doc: "Positive integer. The negative value will be used as\nweight for the gap opening.\
    \ [default: 3]"
  type: long?
  inputBinding:
    prefix: --gap_open
- id: in_gap_extend
  doc: "Positive integer. The negative value will be used as\nweight for the gap opening.\
    \ [default: 1]"
  type: long?
  inputBinding:
    prefix: --gap_extend
- id: in_min_score
  doc: "Integer. Consider alignments having a score <= as not\naligned. [default:\
    \ 0]"
  type: long?
  inputBinding:
    prefix: --min_score
- id: in_min_len
  doc: "Integer. Consider alignments having a length <= as not\naligned. [default:\
    \ 0]"
  type: long?
  inputBinding:
    prefix: --min_len
- id: in_reverse
  doc: "Flag. Align query in forward and reverse orientation\nand choose the best\
    \ alignment. [Set by default]"
  type: boolean?
  inputBinding:
    prefix: --reverse
- id: in_unaligned
  doc: "Flag. Write unaligned reads in sam output [Unset by\ndefault]\n"
  type: boolean?
  inputBinding:
    prefix: --unaligned
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- pyssw.py
