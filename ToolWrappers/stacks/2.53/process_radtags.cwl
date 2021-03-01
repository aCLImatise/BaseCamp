class: CommandLineTool
id: process_radtags.cwl
inputs:
- id: in_inline_null
  doc: ':   barcode is inline with sequence, occurs only on single-end read (default).'
  type: boolean?
  inputBinding:
    prefix: --inline-null
- id: in_index_null
  doc: ':    barcode is provded in FASTQ header (Illumina i5 or i7 read).'
  type: boolean?
  inputBinding:
    prefix: --index-null
- id: in_null_index
  doc: ':    barcode is provded in FASTQ header (Illumina i7 read if both i5 and i7
    read are provided).'
  type: boolean?
  inputBinding:
    prefix: --null-index
- id: in_inline_inline
  doc: ': barcode is inline with sequence, occurs on single and paired-end read.'
  type: boolean?
  inputBinding:
    prefix: --inline-inline
- id: in_index_index
  doc: ':   barcode is provded in FASTQ header (Illumina i5 and i7 reads).'
  type: boolean?
  inputBinding:
    prefix: --index-index
- id: in_inline_index
  doc: ':  barcode is inline with sequence on single-end read and occurs in FASTQ
    header (from either i5 or i7 read).'
  type: boolean?
  inputBinding:
    prefix: --inline-index
- id: in_index_inline
  doc: ':  barcode occurs in FASTQ header (Illumina i5 or i7 read) and is inline with
    single-end sequence (for single-end data) on paired-end read (for paired-end data).'
  type: boolean?
  inputBinding:
    prefix: --index-inline
- id: in_renz_one
  doc: ': provide the restriction enzyme used (cut site occurs on single-end read)'
  type: long?
  inputBinding:
    prefix: --renz-1
- id: in_renz_two
  doc: ': if a double digest was used, provide the second restriction enzyme used
    (cut site occurs on the paired-end read).'
  type: long?
  inputBinding:
    prefix: --renz-2
- id: in_best_rad
  doc: ': library was generated using BestRAD, check for restriction enzyme on either
    read and potentially tranpose reads.'
  type: boolean?
  inputBinding:
    prefix: --bestrad
- id: in_adapter_one
  doc: ': provide adaptor sequence that may occur on the single-end read for filtering.'
  type: long?
  inputBinding:
    prefix: --adapter-1
- id: in_adapter_two
  doc: ': provide adaptor sequence that may occur on the paired-read for filtering.'
  type: long?
  inputBinding:
    prefix: --adapter-2
- id: in_adapter_mm
  doc: ': number of mismatches allowed in the adapter sequence.'
  type: long?
  inputBinding:
    prefix: --adapter-mm
- id: in_retain_header
  doc: ': retain unmodified FASTQ headers in the output.'
  type: boolean?
  inputBinding:
    prefix: --retain-header
- id: in_merge
  doc: ': if no barcodes are specified, merge all input files into a single output
    file.'
  type: boolean?
  inputBinding:
    prefix: --merge
- id: in_filter_illumina
  doc: ": discard reads that have been marked by Illumina's chastity/purity filter\
    \ as failing."
  type: boolean?
  inputBinding:
    prefix: --filter-illumina
- id: in_disable_rad_check
  doc: ': disable checking if the RAD site is intact.'
  type: boolean?
  inputBinding:
    prefix: --disable-rad-check
- id: in_len_limit
  doc: ': specify a minimum sequence length (useful if your data has already been
    trimmed).'
  type: long?
  inputBinding:
    prefix: --len-limit
- id: in_barcode_dist_one
  doc: ': the number of allowed mismatches when rescuing single-end barcodes (default
    1).'
  type: boolean?
  inputBinding:
    prefix: --barcode-dist-1
- id: in_barcode_dist_two
  doc: ': the number of allowed mismatches when rescuing paired-end barcodes (defaults
    to --barcode-dist-1).'
  type: boolean?
  inputBinding:
    prefix: --barcode-dist-2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- process_radtags
