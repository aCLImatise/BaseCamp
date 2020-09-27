class: CommandLineTool
id: PrimedLAMP_Amplicon_Success.cwl
inputs:
- id: in_input_fast_a
  doc: '[--Threads THREADS]'
  type: string
  inputBinding:
    prefix: --InputFasta
- id: in_run_id
  doc: Desired Run ID
  type: string
  inputBinding:
    prefix: --RunID
- id: in_input_file
  doc: Path <RunID>_Oligo_Analysis.csv
  type: File
  inputBinding:
    prefix: --InputFile
- id: in_threads
  doc: Default Set To 1
  type: long
  inputBinding:
    prefix: --Threads
- id: in_noncritical_threshold
  doc: Number of mismatches tolerated in non-critical region
  type: long
  inputBinding:
    prefix: --NonCriticalThreshold
- id: in_critical_region_len
  doc: "Number of nucleotides in from either the 5' or 3'\nterminus\n"
  type: long
  inputBinding:
    prefix: --CriticalRegionLen
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- PrimedLAMP_Amplicon_Success
