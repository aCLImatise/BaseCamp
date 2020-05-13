class: CommandLineTool
id: leon.cwl
inputs:
- id: file
  doc: '(1 arg) :    input file (e.g. FASTA/FASTQ for compress or .leon file for decompress)'
  type: boolean
  inputBinding:
    prefix: -file
- id: c
  doc: '(0 arg) :    compression'
  type: boolean
  inputBinding:
    prefix: -c
- id: d
  doc: '(0 arg) :    decompression'
  type: boolean
  inputBinding:
    prefix: -d
- id: nb_cores
  doc: "(1 arg) :    number of cores (default is the available number of cores)  [default\
    \ '0']"
  type: boolean
  inputBinding:
    prefix: -nb-cores
- id: lossless
  doc: '(0 arg) :    switch to lossless compression for qualities (default is lossy.
    lossy has much higher compression rate, and the loss is in fact a gain. lossy
    is better!)'
  type: boolean
  inputBinding:
    prefix: -lossless
- id: km_er_size
  doc: "(1 arg) :    size of a kmer  [default '31']"
  type: boolean
  inputBinding:
    prefix: -kmer-size
- id: abundance
  doc: "(1 arg) :    abundance threshold for solid kmers (default inferred)  [default\
    \ '']"
  type: boolean
  inputBinding:
    prefix: -abundance
- id: in_it_iterator
  doc: '(0 arg) :    init iterator for ibank mode'
  type: boolean
  inputBinding:
    prefix: -init-iterator
- id: seq_only
  doc: '(0 arg) :    store dna seq only, header and quals are discarded, will decompress
    to fasta (same as -noheader -noqual)'
  type: boolean
  inputBinding:
    prefix: -seq-only
- id: noheader
  doc: '(0 arg) :    discard header'
  type: boolean
  inputBinding:
    prefix: -noheader
- id: no_qual
  doc: '(0 arg) :    discard quality scores'
  type: boolean
  inputBinding:
    prefix: -noqual
outputs: []
cwlVersion: v1.1
baseCommand:
- leon
