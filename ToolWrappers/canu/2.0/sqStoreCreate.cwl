class: CommandLineTool
id: sqStoreCreate.cwl
inputs:
- id: in_load_raw_reads
  doc: load raw reads into new seqStore
  type: string?
  inputBinding:
    prefix: -o
- id: in_minlength
  doc: discard reads shorter than L
  type: string?
  inputBinding:
    prefix: -minlength
- id: in_genome_size
  doc: expected genome size, for keeping only the longest reads
  type: long?
  inputBinding:
    prefix: -genomesize
- id: in_coverage
  doc: desired coverage in long reads
  type: string?
  inputBinding:
    prefix: -coverage
- id: in_pac_bio_raw
  doc: ''
  type: File[]
  inputBinding:
    prefix: -pacbio-raw
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- sqStoreCreate
