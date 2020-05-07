class: CommandLineTool
id: extract_fasta_seq.cwl
inputs:
- id: q
  doc: '[<str> ...]  query list. "-s1" and "-d1" have no effect on this option.'
  type: string
  inputBinding:
    prefix: -q
- id: f
  doc: query list file, one line should contain only one queryid! (but can be mixed
    with others, and we can use "-s1" and "-d1" option to extract the queryid)
  type: string
  inputBinding:
    prefix: -f
- id: s
  doc: '[<subject file>]   subject file [stdin]'
  type: boolean
  inputBinding:
    prefix: -s
- id: s1
  doc: query file sep_pattern [\s+]
  type: string
  inputBinding:
    prefix: -s1
- id: s2
  doc: subject file sep_pattern [\s+]
  type: string
  inputBinding:
    prefix: -s2
- id: d1
  doc: '[<int>]           which field in the query_file is to used? [0]'
  type: boolean
  inputBinding:
    prefix: -d1
- id: d2
  doc: '[<int>]           which field in the subject_file is to used? useful for finding
    out all sequences in the subject_file whose seqids equal to the queryids [0]'
  type: boolean
  inputBinding:
    prefix: -d2
- id: o
  doc: '[<outfile>]        outfile [stdout]'
  type: boolean
  inputBinding:
    prefix: -o
- id: v
  doc: invert the output [False]
  type: boolean
  inputBinding:
    prefix: -v
- id: v
  doc: verbose output
  type: boolean
  inputBinding:
    prefix: -V
- id: lazy
  doc: Stop searching once each required seqid has at least one sequence found, which
    can be problems if some required seqids have more than sequences! Works only for
    non-invert mode. [False]
  type: boolean
  inputBinding:
    prefix: --lazy
outputs: []
cwlVersion: v1.1
baseCommand:
- extract_fasta_seq
