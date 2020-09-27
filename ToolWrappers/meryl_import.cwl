class: CommandLineTool
id: meryl_import.cwl
inputs:
- id: in_km_ers
  doc: "A file consisting of kmers and values, one per line, separated\nby white space\
    \ ('AGTTGCC 4').  Order of kmers is not important.\nDuplicate kmers will be handled\
    \ according to the -multiset\noption.\nA persistent value can be specified as\
    \ '#<value>' (e.g., '#3')\nAll kmers with no value after this line will use this\
    \ value."
  type: File
  inputBinding:
    prefix: -kmers
- id: in_size_setting_larger
  doc: "The size of a kmer, in bases.  Setting this larger than the\nkmers in the\
    \ input will probably lead to a crash.  Setting it\nsmaller will result in only\
    \ the left-most bases being used."
  type: long
  inputBinding:
    prefix: -k
- id: in_output
  doc: Create (or overwrite) meryl database 'database.meryl'.
  type: string
  inputBinding:
    prefix: -output
- id: in_multiset
  doc: Write duplicate kmers in the input to the database as individual
  type: boolean
  inputBinding:
    prefix: -multiset
- id: in_maxvalue
  doc: "An optional memory and time optimization, useful if your values\nare randomly\
    \ distributed and below some known maximum value.\nFor data whose values are the\
    \ counts from actual data, it is\nprobably best to not set this option."
  type: string
  inputBinding:
    prefix: -maxvalue
- id: in_forward
  doc: By default, the canonical kmer is loaded into the database.  These
  type: boolean
  inputBinding:
    prefix: -forward
- id: in_reverse
  doc: "options force either the forward or reverse-complement kmer to be\nloaded\
    \ instead.  These options are mutually exclusive."
  type: boolean
  inputBinding:
    prefix: -reverse
- id: in_threads
  doc: Use <t> compute threads when sorting and writing data.
  type: string
  inputBinding:
    prefix: -threads
- id: in_memory
  doc: (accepted, but not implemented, sorry)
  type: string
  inputBinding:
    prefix: -memory
- id: in_entries_dot
  doc: A kmer AGTTGCC in the input twice with values 4 and 7
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- meryl-import
