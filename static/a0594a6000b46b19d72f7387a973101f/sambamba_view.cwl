class: CommandLineTool
id: sambamba_view.cwl
inputs:
- id: header
  doc: output only header to stdout (if format=bam, the header is printed as SAM)
  type: boolean
  inputBinding:
    prefix: --header
- id: reference_info
  doc: output to stdout only reference names and lengths in JSON
  type: boolean
  inputBinding:
    prefix: --reference-info
- id: regions
  doc: output only reads overlapping one of regions from the BED file
  type: File
  inputBinding:
    prefix: --regions
- id: count
  doc: output to stdout only count of matching records, hHI are ignored
  type: boolean
  inputBinding:
    prefix: --count
- id: valid
  doc: output only valid alignments
  type: boolean
  inputBinding:
    prefix: --valid
- id: sam_input
  doc: specify that input is in SAM format
  type: boolean
  inputBinding:
    prefix: --sam-input
- id: cram_input
  doc: specify that input is in CRAM format
  type: boolean
  inputBinding:
    prefix: --cram-input
- id: ref_filename
  doc: specify reference for writing CRAM
  type: string
  inputBinding:
    prefix: --ref-filename
- id: show_progress
  doc: show progressbar in STDERR (works only for BAM files with no regions specified)
  type: boolean
  inputBinding:
    prefix: --show-progress
- id: compression_level
  doc: specify compression level (from 0 to 9, works only for BAM output)
  type: boolean
  inputBinding:
    prefix: --compression-level
- id: output_filename
  doc: specify output filename
  type: boolean
  inputBinding:
    prefix: --output-filename
- id: n_threads
  doc: maximum number of threads to use
  type: string
  inputBinding:
    prefix: --nthreads
- id: subsample
  doc: subsample reads (read pairs)
  type: string
  inputBinding:
    prefix: --subsample
- id: subsampling_seed
  doc: set seed for subsampling
  type: string
  inputBinding:
    prefix: --subsampling-seed
outputs: []
cwlVersion: v1.1
baseCommand:
- sambamba
- view
