class: CommandLineTool
id: gemBS_merge_bcfs.cwl
inputs:
- id: sample_name
  doc: Nmae of sample to be merged
  type: string
  inputBinding:
    prefix: --sample-name
- id: sample_barcode
  doc: Barcode of sample to be merged
  type: string
  inputBinding:
    prefix: --sample-barcode
- id: threads
  doc: Number of threads
  type: string
  inputBinding:
    prefix: --threads
- id: remove
  doc: Remove individual BAM files after merging.
  type: boolean
  inputBinding:
    prefix: --remove
- id: jobs
  doc: Number of parallel jobs
  type: string
  inputBinding:
    prefix: --jobs
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
- merge-bcfs
