class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/artic_gather.cwl
inputs:
- id: quiet
  doc: Do not output warnings to stderr
  type: boolean
  inputBinding:
    prefix: --quiet
- id: directory
  doc: Basecalled (guppy) results directory or directories.
  type: Directory[]
  inputBinding:
    prefix: --directory
- id: max_length
  doc: remove reads greater than read length
  type: long
  inputBinding:
    prefix: --max-length
- id: min_length
  doc: remove reads less than read length
  type: long
  inputBinding:
    prefix: --min-length
- id: prefix
  doc: Prefix for gathered files
  type: string
  inputBinding:
    prefix: --prefix
- id: prompt_directory
  doc: The run directory for interactive prompts
  type: string
  inputBinding:
    prefix: --prompt-directory
- id: fast_five_directory
  doc: The directory with fast5 files
  type: string
  inputBinding:
    prefix: --fast5-directory
- id: no_fast_fives
  doc: Do not use fast5s and nanopolish
  type: boolean
  inputBinding:
    prefix: --no-fast5s
- id: limit
  doc: Only gather n reads
  type: string
  inputBinding:
    prefix: --limit
outputs: []
cwlVersion: v1.1
baseCommand:
- artic
- gather
