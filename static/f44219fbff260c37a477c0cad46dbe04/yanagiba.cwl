class: CommandLineTool
id: yanagiba.cwl
inputs:
- id: in_file
  doc: Input fastq.gz file.
  type: string
  inputBinding:
    prefix: --infile
- id: summary_file
  doc: Albacore summary file with header row.
  type: string
  inputBinding:
    prefix: --summaryfile
- id: outfile
  doc: Write filtered reads to this file in .bgz format.
  type: string
  inputBinding:
    prefix: --outfile
- id: min_len
  doc: 'Exclude reads shorter than this length. Default: 0'
  type: long
  inputBinding:
    prefix: --minlen
- id: min_qual
  doc: 'Minimum quality score to retain a read. Default: 10'
  type: long
  inputBinding:
    prefix: --minqual
- id: head_trim
  doc: 'Trim x bases from begining of each read. Default: 0'
  type: string
  inputBinding:
    prefix: --headtrim
- id: tail_trim
  doc: 'Trim x bases from end of each read. Default: None'
  type: string
  inputBinding:
    prefix: --tailtrim
- id: force_unique
  doc: Enforce unique reads. Only store first instance of a read from fastq input
    where readID occurs multiple times.
  type: boolean
  inputBinding:
    prefix: --forceunique
outputs: []
cwlVersion: v1.1
baseCommand:
- yanagiba
