class: CommandLineTool
id: randomize_fastq.cwl
inputs:
- id: fast_q
  doc: "input and output files; give 1, 2 or 4 filenames: Given 'in.fq', read from\
    \ it and write to stdout. Given 'in.fq out.fq', read from in.fq and write to out.fq.\
    \ Given 'in1.fq in2.fq out1.fq out2.fq', work on read pairs and be careful with\
    \ file order (both input files first!)If the output file name ends with '.gz'\
    \ a gizzepd file is written."
  type: string
  inputBinding:
    position: 0
- id: force
  doc: overwrite existing output file(s)
  type: boolean
  inputBinding:
    prefix: --force
- id: buffer_size
  doc: size of output buffer in bytes [128 MB]. Not used if writing gzipped files.
  type: string
  inputBinding:
    prefix: --buffersize
outputs: []
cwlVersion: v1.1
baseCommand:
- randomize_fastq
