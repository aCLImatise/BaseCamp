class: CommandLineTool
id: yanagiba.cwl
inputs:
- id: in_in_file
  doc: Input fastq.gz file.
  type: File
  inputBinding:
    prefix: --infile
- id: in_summary_file
  doc: Albacore summary file with header row.
  type: File
  inputBinding:
    prefix: --summaryfile
- id: in_outfile
  doc: Write filtered reads to this file in .bgz format.
  type: File
  inputBinding:
    prefix: --outfile
- id: in_min_len
  doc: 'Exclude reads shorter than this length. Default: 0'
  type: long
  inputBinding:
    prefix: --minlen
- id: in_min_qual
  doc: 'Minimum quality score to retain a read. Default: 10'
  type: long
  inputBinding:
    prefix: --minqual
- id: in_head_trim
  doc: 'Trim x bases from begining of each read. Default: 0'
  type: long
  inputBinding:
    prefix: --headtrim
- id: in_tail_trim
  doc: 'Trim x bases from end of each read. Default: None'
  type: string
  inputBinding:
    prefix: --tailtrim
- id: in_force_unique
  doc: "Enforce unique reads. Only store first instance of a\nread from fastq input\
    \ where readID occurs multiple\ntimes.\n"
  type: boolean
  inputBinding:
    prefix: --forceunique
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- yanagiba
