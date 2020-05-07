class: CommandLineTool
id: predict_num_reads.cwl
inputs:
- id: fast_q
  doc: FASTQ files for forward and reverse reads
  type: string
  inputBinding:
    position: 0
- id: w
  doc: 'Length of the sliding window for emulating read trimming (default: 10)'
  type: long
  inputBinding:
    prefix: -w
- id: qual
  doc: 'Quality threshold for emulating read trimming (default: 30)'
  type: long
  inputBinding:
    prefix: --qual
- id: c
  doc: 'Threshold on the read counts (default: 25000)'
  type: long
  inputBinding:
    prefix: -c
- id: l
  doc: 'Read length. If not specify estimated for every read independently (default:
    None)'
  type: long
  inputBinding:
    prefix: -l
- id: o
  doc: 'Output file name (default: output.tsv)'
  type: string
  inputBinding:
    prefix: -o
- id: n
  doc: 'Patient/sample identifier (default: None)'
  type: string
  inputBinding:
    prefix: -n
- id: d
  doc: 'Sample date (default: None)'
  type: string
  inputBinding:
    prefix: -d
outputs: []
cwlVersion: v1.1
baseCommand:
- predict_num_reads
