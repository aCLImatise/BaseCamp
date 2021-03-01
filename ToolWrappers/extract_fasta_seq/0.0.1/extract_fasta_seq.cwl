class: CommandLineTool
id: extract_fasta_seq.cwl
inputs:
- id: in_query_list_have
  doc: '[<str> ...]  query list. "-s1" and "-d1" have no effect on this'
  type: string?
  inputBinding:
    prefix: -q
- id: in_s
  doc: '[<subject file>]   subject file [stdin]'
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_s_one
  doc: query file sep_pattern [\s+]
  type: long?
  inputBinding:
    prefix: -s1
- id: in_s_two
  doc: subject file sep_pattern [\s+]
  type: long?
  inputBinding:
    prefix: -s2
- id: in_done
  doc: '[<int>]           which field in the query_file is to used? [0]'
  type: boolean?
  inputBinding:
    prefix: -d1
- id: in_d_two
  doc: "[<int>]           which field in the subject_file is to used? useful for\n\
    finding out all sequences in the subject_file whose\nseqids equal to the queryids\
    \ [0]"
  type: boolean?
  inputBinding:
    prefix: -d2
- id: in_o
  doc: '[<outfile>]        outfile [stdout]'
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_invert_the_output
  doc: invert the output [False]
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_verbose_output
  doc: verbose output
  type: boolean?
  inputBinding:
    prefix: -V
- id: in_lazy
  doc: "Stop searching once each required seqid has at least\none sequence found,\
    \ which can be problems if some\nrequired seqids have more than sequences! Works\
    \ only\nfor non-invert mode. [False]"
  type: boolean?
  inputBinding:
    prefix: --lazy
- id: in_f
  doc: ''
  type: File?
  inputBinding:
    prefix: -f
- id: in_option_dot
  doc: -f <query file>       query list file, one line should contain only one
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- extract_fasta_seq
