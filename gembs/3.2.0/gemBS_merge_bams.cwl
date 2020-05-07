class: CommandLineTool
id: gemBS_merge_bams.cwl
inputs:
- id: threads
  doc: 'Number of threads, Default: 1'
  type: string
  inputBinding:
    prefix: --threads
- id: sample_name
  doc: Sample to be merged
  type: string
  inputBinding:
    prefix: --sample_name
- id: barcode
  doc: Sample to be merged
  type: string
  inputBinding:
    prefix: --barcode
- id: remove
  doc: Remove individual BAM files after merging.
  type: boolean
  inputBinding:
    prefix: --remove
- id: dry_run
  doc: Output mapping commands without execution
  type: boolean
  inputBinding:
    prefix: --dry-run
- id: json
  doc: FILE      Output JSON file with details of pending commands
  type: string
  inputBinding:
    prefix: --json
- id: ignore_db
  doc: Ignore database for --dry-run and --json commands
  type: boolean
  inputBinding:
    prefix: --ignore-db
outputs: []
cwlVersion: v1.1
baseCommand:
- gemBS
- merge-bams
