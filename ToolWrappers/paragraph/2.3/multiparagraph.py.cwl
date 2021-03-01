class: CommandLineTool
id: multiparagraph.py.cwl
inputs:
- id: in_bam
  doc: BAM file name
  type: File?
  inputBinding:
    prefix: --bam
- id: in_output
  doc: Output file name
  type: File?
  inputBinding:
    prefix: --output
- id: in_reference_sequence
  doc: Reference FASTA
  type: string?
  inputBinding:
    prefix: --reference-sequence
- id: in_extended_output
  doc: Run paragraph with -E 1
  type: boolean?
  inputBinding:
    prefix: --extended-output
- id: in_max_events
  doc: Only do the first n events.
  type: long?
  inputBinding:
    prefix: --max-events
- id: in_min_length
  doc: Minimum event length.
  type: long?
  inputBinding:
    prefix: --min-length
- id: in_event_threads
  doc: Number of events to process in parallel.
  type: long?
  inputBinding:
    prefix: --event-threads
- id: in_paragraph_threads
  doc: Number of threads for parallel read processing.
  type: long?
  inputBinding:
    prefix: --paragraph-threads
- id: in_keep_scratch
  doc: Do not delete temp files.
  type: boolean?
  inputBinding:
    prefix: --keep-scratch
- id: in_scratch_dir
  doc: Directory for temp files
  type: Directory?
  inputBinding:
    prefix: --scratch-dir
- id: in_paragraph
  doc: Path to the paragraph executable
  type: File?
  inputBinding:
    prefix: --paragraph
- id: in_log_file
  doc: Write logging information into file rather than to
  type: File?
  inputBinding:
    prefix: --logfile
- id: in_quiet
  doc: Set logging level to output errors only.
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_input
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 0
- id: in_stderr
  doc: --verbose             Raise logging level from warning to info.
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output file name
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- multiparagraph.py
