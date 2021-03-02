class: CommandLineTool
id: NanoFilt.cwl
inputs:
- id: in_log_file
  doc: Specify the path and filename for the log file.
  type: File?
  inputBinding:
    prefix: --logfile
- id: in_length
  doc: Filter on a minimum read length
  type: long?
  inputBinding:
    prefix: --length
- id: in_maxlength
  doc: Filter on a maximum read length
  type: long?
  inputBinding:
    prefix: --maxlength
- id: in_quality
  doc: Filter on a minimum average read quality score
  type: string?
  inputBinding:
    prefix: --quality
- id: in_ming_c
  doc: "Sequences must have GC content >= to this. Float between 0.0 and 1.0. Ignored\
    \ if\nusing summary file."
  type: double?
  inputBinding:
    prefix: --minGC
- id: in_max_gc
  doc: "Sequences must have GC content <= to this. Float between 0.0 and 1.0. Ignored\
    \ if\nusing summary file."
  type: long?
  inputBinding:
    prefix: --maxGC
- id: in_head_crop
  doc: Trim n nucleotides from start of read
  type: string?
  inputBinding:
    prefix: --headcrop
- id: in_tail_crop
  doc: Trim n nucleotides from end of read
  type: string?
  inputBinding:
    prefix: --tailcrop
- id: in_summary
  doc: Use albacore or guppy summary file for quality scores
  type: File?
  inputBinding:
    prefix: --summary
- id: in_read_type
  doc: "Which read type to extract information about from summary. Options are 1D,\
    \ 2D or\n1D2"
  type: string?
  inputBinding:
    prefix: --readtype
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_input
  doc: input, uncompressed fastq file
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
- NanoFilt
