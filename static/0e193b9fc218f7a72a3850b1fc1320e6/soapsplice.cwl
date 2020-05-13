class: CommandLineTool
id: soapsplice.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: o
  doc: '* Prefix of output files, (can be with file directory)'
  type: File
  inputBinding:
    prefix: -o
- id: p
  doc: Number of threads, <= 20, 1 (default)
  type: long
  inputBinding:
    prefix: -p
- id: s
  doc: '1: Forward, 2: Reverse, 3: Both (default)'
  type: long
  inputBinding:
    prefix: -S
- id: m
  doc: Maximum mismatch for one-segment alignment, <= 5, 3 (default)
  type: long
  inputBinding:
    prefix: -m
- id: g
  doc: Maximum indel for one-segment alignment, <= 2, 2 (default)
  type: long
  inputBinding:
    prefix: -g
- id: i
  doc: Length of tail that can be ignored in one-segment alignment, 7 (default)
  type: long
  inputBinding:
    prefix: -i
- id: t
  doc: Longest gap between two segments in two-segment alignment, 500000 (default)
  type: long
  inputBinding:
    prefix: -t
- id: a
  doc: Shortest length of a segment in two-segment alignment, 8 (default)
  type: long
  inputBinding:
    prefix: -a
- id: c
  doc: "1: Output read and its quality in one-segment alignment output file (default)\
    \ 0: Don't output such information to save disk space"
  type: long
  inputBinding:
    prefix: -c
- id: f
  doc: 'Format of output files, 0: original (default), 1: SOAP, 2: SAM'
  type: long
  inputBinding:
    prefix: -f
- id: s
  doc: Set the MAPQ (mapping quality) field to this value, just valid in SAM format,
    255 (default)
  type: long
  inputBinding:
    prefix: -s
- id: q
  doc: 'Input quality type in FASTQ file 0: quality = Phred + 64, used in Illumina/Solexa
    format, (default) 1: quality = Phred + 33, used in Sanger format'
  type: long
  inputBinding:
    prefix: -q
- id: l
  doc: The maximum distance between paired-end reads, 500000 (default)
  type: long
  inputBinding:
    prefix: -L
- id: l
  doc: The minimum distance between paired-end reads, 50 (default)
  type: long
  inputBinding:
    prefix: -l
- id: i
  doc: The insert length of paired-end reads
  type: long
  inputBinding:
    prefix: -I
- id: j
  doc: "1: Output junction information (default) 0: Don't output junction information"
  type: long
  inputBinding:
    prefix: -j
outputs: []
cwlVersion: v1.1
baseCommand:
- soapsplice
