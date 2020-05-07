class: CommandLineTool
id: NanoFilt.cwl
inputs:
- id: input
  doc: input, uncompressed fastq file
  type: string
  inputBinding:
    position: 0
- id: log_file
  doc: Specify the path and filename for the log file.
  type: string
  inputBinding:
    prefix: --logfile
- id: length
  doc: Filter on a minimum read length
  type: long
  inputBinding:
    prefix: --length
- id: maxlength
  doc: Filter on a maximum read length
  type: long
  inputBinding:
    prefix: --maxlength
- id: quality
  doc: Filter on a minimum average read quality score
  type: string
  inputBinding:
    prefix: --quality
- id: ming_c
  doc: Sequences must have GC content >= to this. Float between 0.0 and 1.0. Ignored
    if using summary file.
  type: long
  inputBinding:
    prefix: --minGC
- id: max_gc
  doc: Sequences must have GC content <= to this. Float between 0.0 and 1.0. Ignored
    if using summary file.
  type: long
  inputBinding:
    prefix: --maxGC
- id: head_crop
  doc: Trim n nucleotides from start of read
  type: string
  inputBinding:
    prefix: --headcrop
- id: tail_crop
  doc: Trim n nucleotides from end of read
  type: string
  inputBinding:
    prefix: --tailcrop
- id: summary
  doc: Use albacore or guppy summary file for quality scores
  type: string
  inputBinding:
    prefix: --summary
- id: read_type
  doc: '{1D,2D,1D2} Which read type to extract information about from summary. Options
    are 1D, 2D or 1D2'
  type: boolean
  inputBinding:
    prefix: --readtype
outputs: []
cwlVersion: v1.1
baseCommand:
- NanoFilt
