class: CommandLineTool
id: gatekeeperbench.cwl
inputs:
- id: in_gkpstorename_createreadwrite_store
  doc: gkpStoreName    create/read/write the store called 'gkpStoreName'
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_seed
  doc: s               use random seed s
  type: boolean?
  inputBinding:
    prefix: -seed
- id: in_create
  doc: add numFrags random fragments
  type: long?
  inputBinding:
    prefix: -create
- id: in_mates
  doc: numMates        update numMates random mated fragments
  type: boolean?
  inputBinding:
    prefix: -mates
- id: in_reads
  doc: numReads        read numReads random fragments
  type: boolean?
  inputBinding:
    prefix: -reads
- id: in_very_useful_benchmark
  doc: not a very useful benchmark.  It is somewhat CPU bound, and simply writes
  type: string?
  inputBinding:
    prefix: -n
- id: in_possibly_most_brutal
  doc: possibly the most brutal test.  It reads and writes randomly to a moderately
  type: string?
  inputBinding:
    prefix: -m
- id: in_presumed_be_majority
  doc: (presumed to be) the majority of accesses made by the assembler.  It reads
    a
  type: string?
  inputBinding:
    prefix: -r
- id: in_opts
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- gatekeeperbench
