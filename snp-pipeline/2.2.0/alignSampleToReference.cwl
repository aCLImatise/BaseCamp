class: CommandLineTool
id: ../../../alignSampleToReference.sh.cwl
inputs:
- id: force
  doc: 'Force processing even when result files already exist and are newer than inputs
    (default: False)'
  type: boolean
  inputBinding:
    prefix: --force
- id: verbose
  doc: 'Verbose message level (0=no info, 5=lots) (default: 1)'
  type: string
  inputBinding:
    prefix: --verbose
- id: threads
  doc: 'Number of CPU cores to use (default: 8)'
  type: long
  inputBinding:
    prefix: --threads
- id: reference_file
  doc: Relative or absolute path to the reference fasta file
  type: string
  inputBinding:
    position: 0
- id: sample_fast_q_file_one
  doc: Relative or absolute path to the fastq file
  type: string
  inputBinding:
    position: 1
- id: sample_fast_q_file_two
  doc: 'Optional relative or absolute path to the mate fastq file, if paired (default:
    None)'
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- alignSampleToReference.sh
