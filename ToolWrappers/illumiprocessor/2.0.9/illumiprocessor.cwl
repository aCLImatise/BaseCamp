class: CommandLineTool
id: illumiprocessor.cwl
inputs:
- id: in_input
  doc: "The input directory of raw reads to trim. (default:\nNone)"
  type: Directory?
  inputBinding:
    prefix: --input
- id: in_output
  doc: "The output directory of clean reads to create.\n(default: None)"
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_config
  doc: "A configuration file containing the tag:sample mapping\nand renaming options.\
    \ (default: None)"
  type: File?
  inputBinding:
    prefix: --config
- id: in_trim_mo_matic
  doc: "The path to the trimmomatic-0.XX.jar file. (default:\n/usr/local/bin/trimmomatic)"
  type: File?
  inputBinding:
    prefix: --trimmomatic
- id: in_min_len
  doc: 'The minimum length of reads to keep. (default: 40)'
  type: long?
  inputBinding:
    prefix: --min-len
- id: in_no_merge
  doc: "When trimming PE reads, do not merge singleton files.\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --no-merge
- id: in_cores
  doc: 'Number of compute cores to use. (default: 1)'
  type: long?
  inputBinding:
    prefix: --cores
- id: in_r_one_pattern
  doc: "An optional regex pattern to find R1 reads. (default:\nNone)"
  type: long?
  inputBinding:
    prefix: --r1-pattern
- id: in_r_two_pattern
  doc: "An optional regex pattern to find R2 reads. (default:\nNone)"
  type: long?
  inputBinding:
    prefix: --r2-pattern
- id: in_se
  doc: 'Single-end reads. (default: False)'
  type: boolean?
  inputBinding:
    prefix: --se
- id: in_phred
  doc: 'The type of fastq encoding used. (default: phred33)'
  type: string?
  inputBinding:
    prefix: --phred
- id: in_log_path
  doc: 'The path to a directory to hold logs. (default: None)'
  type: File?
  inputBinding:
    prefix: --log-path
- id: in_verbosity
  doc: "The logging level to use. (default: INFO)\n"
  type: string?
  inputBinding:
    prefix: --verbosity
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "The output directory of clean reads to create.\n(default: None)"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- illumiprocessor
