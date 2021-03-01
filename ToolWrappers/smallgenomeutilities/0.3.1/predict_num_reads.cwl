class: CommandLineTool
id: predict_num_reads.cwl
inputs:
- id: in_length_sliding_window
  doc: "Length of the sliding window for emulating read trimming\n(default: 10)"
  type: long?
  inputBinding:
    prefix: -w
- id: in_qual
  doc: "Quality threshold for emulating read trimming (default:\n30)"
  type: long?
  inputBinding:
    prefix: --qual
- id: in_threshold_read_counts
  doc: 'Threshold on the read counts (default: 25000)'
  type: long?
  inputBinding:
    prefix: -c
- id: in_read_length_specify
  doc: "Read length. If not specify estimated for every read\nindependently (default:\
    \ None)"
  type: long?
  inputBinding:
    prefix: -l
- id: in_output_file_name
  doc: 'Output file name (default: output.tsv)'
  type: File?
  inputBinding:
    prefix: -o
- id: in_patientsample_identifier_default
  doc: 'Patient/sample identifier (default: None)'
  type: string?
  inputBinding:
    prefix: -n
- id: in_sample_date_default
  doc: 'Sample date (default: None)'
  type: string?
  inputBinding:
    prefix: -d
- id: in_fast_q
  doc: FASTQ files for forward and reverse reads
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_name
  doc: 'Output file name (default: output.tsv)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file_name)
hints: []
cwlVersion: v1.1
baseCommand:
- predict_num_reads
