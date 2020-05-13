class: CommandLineTool
id: multiparagraph.py.cwl
inputs:
- id: bam
  doc: BAM file name
  type: string
  inputBinding:
    prefix: --bam
- id: output
  doc: Output file name
  type: string
  inputBinding:
    prefix: --output
- id: reference_sequence
  doc: Reference FASTA
  type: string
  inputBinding:
    prefix: --reference-sequence
- id: extended_output
  doc: Run paragraph with -E 1
  type: boolean
  inputBinding:
    prefix: --extended-output
- id: max_events
  doc: Only do the first n events.
  type: long
  inputBinding:
    prefix: --max-events
- id: min_length
  doc: Minimum event length.
  type: long
  inputBinding:
    prefix: --min-length
- id: event_threads
  doc: Number of events to process in parallel.
  type: string
  inputBinding:
    prefix: --event-threads
- id: paragraph_threads
  doc: Number of threads for parallel read processing.
  type: string
  inputBinding:
    prefix: --paragraph-threads
- id: keep_scratch
  doc: Do not delete temp files.
  type: boolean
  inputBinding:
    prefix: --keep-scratch
- id: scratch_dir
  doc: Directory for temp files
  type: string
  inputBinding:
    prefix: --scratch-dir
- id: paragraph
  doc: Path to the paragraph executable
  type: string
  inputBinding:
    prefix: --paragraph
- id: log_file
  doc: Write logging information into file rather than to stderr
  type: string
  inputBinding:
    prefix: --logfile
- id: verbose
  doc: Raise logging level from warning to info.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: quiet
  doc: Set logging level to output errors only.
  type: boolean
  inputBinding:
    prefix: --quiet
outputs: []
cwlVersion: v1.1
baseCommand:
- multiparagraph.py
