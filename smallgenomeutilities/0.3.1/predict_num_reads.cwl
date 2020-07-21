class: CommandLineTool
id: ../../../predict_num_reads.cwl
inputs:
- id: length_trimming_default
  doc: 'Length of the sliding window for emulating read trimming (default: 10)'
  type: long
  inputBinding:
    prefix: -w
- id: qual
  doc: 'Quality threshold for emulating read trimming (default: 30)'
  type: long
  inputBinding:
    prefix: --qual
- id: threshold_read_counts
  doc: 'Threshold on the read counts (default: 25000)'
  type: long
  inputBinding:
    prefix: -c
- id: read_length_specify
  doc: 'Read length. If not specify estimated for every read independently (default:
    None)'
  type: long
  inputBinding:
    prefix: -l
- id: output_file_name
  doc: 'Output file name (default: output.tsv)'
  type: string
  inputBinding:
    prefix: -o
- id: patientsample_identifier_default
  doc: 'Patient/sample identifier (default: None)'
  type: string
  inputBinding:
    prefix: -n
- id: sample_date_default
  doc: 'Sample date (default: None)'
  type: string
  inputBinding:
    prefix: -d
- id: fast_q
  doc: FASTQ files for forward and reverse reads
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- predict_num_reads
