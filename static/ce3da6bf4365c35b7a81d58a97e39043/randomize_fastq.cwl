class: CommandLineTool
id: randomize_fastq.cwl
inputs:
- id: in_force
  doc: overwrite existing output file(s)
  type: File?
  inputBinding:
    prefix: --force
- id: in_buffer_size
  doc: "size of output buffer in bytes [128 MB]. Not used if\nwriting gzipped files.\n"
  type: long?
  inputBinding:
    prefix: --buffersize
- id: in_fast_q
  doc: "input and output files; give 1, 2 or 4 filenames:\nGiven 'in.fq', read from\
    \ it and write to stdout. Given\n'in.fq out.fq', read from in.fq and write to\
    \ out.fq.\nGiven 'in1.fq in2.fq out1.fq out2.fq', work on read\npairs and be careful\
    \ with file order (both input files\nfirst!)If the output file name ends with\
    \ '.gz' a\ngizzepd file is written."
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_force
  doc: overwrite existing output file(s)
  type: File?
  outputBinding:
    glob: $(inputs.in_force)
hints: []
cwlVersion: v1.1
baseCommand:
- randomize_fastq
