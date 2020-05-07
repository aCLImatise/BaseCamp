class: CommandLineTool
id: fastqSample.cwl
inputs:
- id: i
  doc: input name (prefix) of the reads
  type: string
  inputBinding:
    prefix: -I
- id: t
  doc: total number of mate pairs in the input (if not supplied, will be counted)
  type: string
  inputBinding:
    prefix: -T
- id: l
  doc: length of a single read (if not supplied, will be determined)
  type: string
  inputBinding:
    prefix: -L
- id: u
  doc: reads are unmated, expected in *.u.fastq
  type: boolean
  inputBinding:
    prefix: -U
- id: o
  doc: output name (prefix) of the reads (default is same as -I)
  type: string
  inputBinding:
    prefix: -O
- id: a
  doc: automatically include coverage or number of reads in the output name
  type: boolean
  inputBinding:
    prefix: -A
- id: m
  doc: ignore reads shorter than L bases
  type: string
  inputBinding:
    prefix: -m
- id: max
  doc: don't sample randomly, pick the longest reads
  type: boolean
  inputBinding:
    prefix: -max
- id: g
  doc: genome size
  type: string
  inputBinding:
    prefix: -g
- id: c
  doc: desired coverage in the output reads
  type: string
  inputBinding:
    prefix: -c
- id: p
  doc: for mated reads, output 2N reads, or N pairs of reads for unmated reads, output
    N reads
  type: string
  inputBinding:
    prefix: -p
- id: f
  doc: output F * T pairs of reads (T as above in -t option) 0.0 < F <= 1.0
  type: string
  inputBinding:
    prefix: -f
- id: b
  doc: output reads/pairs until B bases is exceeded
  type: string
  inputBinding:
    prefix: -b
outputs: []
cwlVersion: v1.1
baseCommand:
- fastqSample
