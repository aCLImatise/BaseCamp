class: CommandLineTool
id: process_shortreads.cwl
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
- id: adapter_1
  doc: ': provide adaptor sequence that may occur on the first read for filtering.'
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
    file (or single pair of files).'
  type: boolean
  inputBinding:
    prefix: --merge
- id: no_read_trimming
  doc: ': do not trim low quality reads, just discard them.'
  type: boolean
  inputBinding:
    prefix: --no-read-trimming
- id: len_limit
  doc: ': when trimming sequences, specify the minimum length a sequence must be to
    keep it (default 31bp).'
  type: string
  inputBinding:
    prefix: --len-limit
- id: filter_illumina
  doc: ": discard reads that have been marked by Illumina's chastity/purity filter\
    \ as failing."
  type: boolean
  inputBinding:
    prefix: --filter-illumina
- id: barcode_dist
  doc: ': provide the distace between barcodes to allow for barcode rescue (default
    2)'
  type: boolean
  inputBinding:
    prefix: --barcode-dist
- id: mate_pair
  doc: ': raw reads are circularized mate-pair data, first read will be reverse complemented.'
  type: boolean
  inputBinding:
    prefix: --mate-pair
- id: no_overhang
  doc: ': data does not contain an overhang nucleotide between barcode and seqeunce.'
  type: boolean
  inputBinding:
    prefix: --no-overhang
outputs: []
cwlVersion: v1.1
baseCommand:
- process_shortreads
