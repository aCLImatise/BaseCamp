class: CommandLineTool
id: trim_adapters.cwl
inputs:
- id: in_max_edit_distance
  doc: "The maximum edit distance permitted when aligning the\npaired reads (default:\
    \ 1)."
  type: long
  inputBinding:
    prefix: --max-edit-distance
- id: in_fudge
  doc: "An arbitrary number of extra bases to trim from the\nends of reads (default:\
    \ 1) because the original\npyadapter_trim.py script did so."
  type: long
  inputBinding:
    prefix: --fudge
- id: in_trim_from_start
  doc: "Trim this number of bases from the start of each\nsequence (default: 0)."
  type: long
  inputBinding:
    prefix: --trim-from-start
- id: in_rc_length
  doc: "Use the reverse complement of this number of bases\nfrom the beginning of\
    \ the reverse read to align the\nreads (default: 20)."
  type: long
  inputBinding:
    prefix: --rc-length
- id: in_verbose
  doc: Report on the handling of each FASTQ record.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_forward
  doc: "The (optionally gzipped) FASTQ file containing the\nforward reads."
  type: string
  inputBinding:
    position: 0
- id: in_reverse
  doc: "The (optionally gzipped) FASTQ file containing the\nreverse reads."
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- trim_adapters
