class: CommandLineTool
id: process_radtags.cwl
inputs:
- id: inline_null
  doc: ':   barcode is inline with sequence, occurs only on single-end read (default).'
  type: boolean
  inputBinding:
    prefix: --inline-null
- id: index_null
  doc: ':    barcode is provded in FASTQ header (Illumina i5 or i7 read).'
  type: boolean
  inputBinding:
    prefix: --index-null
- id: null_index
  doc: ':    barcode is provded in FASTQ header (Illumina i7 read if both i5 and i7
    read are provided).'
  type: boolean
  inputBinding:
    prefix: --null-index
- id: inline_inline
  doc: ': barcode is inline with sequence, occurs on single and paired-end read.'
  type: boolean
  inputBinding:
    prefix: --inline-inline
- id: index_index
  doc: ':   barcode is provded in FASTQ header (Illumina i5 and i7 reads).'
  type: boolean
  inputBinding:
    prefix: --index-index
- id: inline_index
  doc: ':  barcode is inline with sequence on single-end read and occurs in FASTQ
    header (from either i5 or i7 read).'
  type: boolean
  inputBinding:
    prefix: --inline-index
- id: index_inline
  doc: ':  barcode occurs in FASTQ header (Illumina i5 or i7 read) and is inline with
    single-end sequence (for single-end data) on paired-end read (for paired-end data).'
  type: boolean
  inputBinding:
    prefix: --index-inline
- id: best_rad
  doc: ': library was generated using BestRAD, check for restriction enzyme on either
    read and potentially tranpose reads.'
  type: boolean
  inputBinding:
    prefix: --bestrad
- id: adapter_1
  doc: ': provide adaptor sequence that may occur on the single-end read for filtering.'
  type: string
  inputBinding:
    prefix: --adapter-1
- id: adapter_2
  doc: ': provide adaptor sequence that may occur on the paired-read for filtering.'
  type: string
  inputBinding:
    prefix: --adapter-2
- id: adapter_mm
  doc: ': number of mismatches allowed in the adapter sequence.'
  type: string
  inputBinding:
    prefix: --adapter-mm
- id: retain_header
  doc: ': retain unmodified FASTQ headers in the output.'
  type: boolean
  inputBinding:
    prefix: --retain-header
- id: merge
  doc: ': if no barcodes are specified, merge all input files into a single output
    file.'
  type: boolean
  inputBinding:
    prefix: --merge
- id: filter_illumina
  doc: ": discard reads that have been marked by Illumina's chastity/purity filter\
    \ as failing."
  type: boolean
  inputBinding:
    prefix: --filter-illumina
- id: disable_rad_check
  doc: ': disable checking if the RAD site is intact.'
  type: boolean
  inputBinding:
    prefix: --disable-rad-check
- id: len_limit
  doc: ': specify a minimum sequence length (useful if your data has already been
    trimmed).'
  type: string
  inputBinding:
    prefix: --len-limit
- id: barcode_dist_1
  doc: ': the number of allowed mismatches when rescuing single-end barcodes (default
    1).'
  type: boolean
  inputBinding:
    prefix: --barcode-dist-1
- id: barcode_dist_2
  doc: ': the number of allowed mismatches when rescuing paired-end barcodes (defaults
    to --barcode-dist-1).'
  type: boolean
  inputBinding:
    prefix: --barcode-dist-2
outputs: []
cwlVersion: v1.1
baseCommand:
- process_radtags
