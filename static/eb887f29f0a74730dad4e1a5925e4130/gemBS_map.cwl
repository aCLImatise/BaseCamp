class: CommandLineTool
id: gemBS_map.cwl
inputs:
- id: dataset
  doc: Dataset to be mapped.
  type: string
  inputBinding:
    prefix: --dataset
- id: sample_name
  doc: Name of sample to be mapped.
  type: string
  inputBinding:
    prefix: --sample-name
- id: barcode
  doc: Barcode of sample to be mapped.
  type: string
  inputBinding:
    prefix: --barcode
- id: tmp_dir
  doc: 'Temporary folder to perform sorting operations. Default: /tmp'
  type: File
  inputBinding:
    prefix: --tmp-dir
- id: threads
  doc: Number of threads to perform sorting operations.
  type: string
  inputBinding:
    prefix: --threads
- id: type
  doc: Type of data file (PAIRED, SINGLE, INTERLEAVED, STREAM, BAM)
  type: string
  inputBinding:
    prefix: --type
- id: paired_end
  doc: Input data is Paired End
  type: boolean
  inputBinding:
    prefix: --paired-end
- id: remove
  doc: Remove individual BAM files after merging.
  type: boolean
  inputBinding:
    prefix: --remove
- id: read_non_stranded
  doc: Automatically selects the proper C->T and G->A read conversions based on the
    level of Cs and Gs on the read.
  type: boolean
  inputBinding:
    prefix: --read-non-stranded
- id: under_conversion_sequence
  doc: Name of unmethylated sequencing control.
  type: string
  inputBinding:
    prefix: --underconversion-sequence
- id: over_conversion_sequence
  doc: Name of methylated sequencing control.
  type: string
  inputBinding:
    prefix: --overconversion-sequence
- id: non_bs
  doc: Use regular (non bisulfite) index
  type: boolean
  inputBinding:
    prefix: --non-bs
- id: no_merge
  doc: Do not automatically merge BAMs
  type: boolean
  inputBinding:
    prefix: --no-merge
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
- map
