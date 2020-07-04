class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/artic_guppyplex.cwl
inputs:
- id: quiet
  doc: Do not output warnings to stderr
  type: boolean
  inputBinding:
    prefix: --quiet
- id: directory
  doc: Basecalled and demultiplexed (guppy) results directory
  type: Directory
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
- id: quality
  doc: remove reads against this quality filter
  type: string
  inputBinding:
    prefix: --quality
- id: sample
  doc: sampling frequency for random sample of sequence to reduce excess
  type: string
  inputBinding:
    prefix: --sample
- id: skip_quality_check
  doc: Do not filter on quality score (speeds up)
  type: boolean
  inputBinding:
    prefix: --skip-quality-check
- id: prefix
  doc: Prefix for guppyplex files
  type: string
  inputBinding:
    prefix: --prefix
- id: output
  doc: FASTQ file to write
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- artic
- guppyplex
