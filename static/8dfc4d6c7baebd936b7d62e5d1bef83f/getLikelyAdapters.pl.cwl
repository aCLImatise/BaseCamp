class: CommandLineTool
id: getLikelyAdapters.pl.cwl
inputs:
- id: in_len
  doc: '<#,#,...,#> (lengths of oligos to look for, default: 10,20,25,30)'
  type: boolean
  inputBinding:
    prefix: -len
- id: in_number_reads_e
  doc: '<#> (Number of reads to check for overrepresented oligos, default: 1e5)'
  type: boolean
  inputBinding:
    prefix: -n
- id: in_number_report_default
  doc: '<#> (number of overrepresented oligos to report, default: 10)'
  type: boolean
  inputBinding:
    prefix: -S
- id: in_start
  doc: '<#> (position to start looking for oligos, default: 0)'
  type: boolean
  inputBinding:
    prefix: -start
- id: in_end
  doc: '<#> (last position to look for oligos, default: end of sequence)'
  type: boolean
  inputBinding:
    prefix: -end
- id: in_fast_q_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- getLikelyAdapters.pl
