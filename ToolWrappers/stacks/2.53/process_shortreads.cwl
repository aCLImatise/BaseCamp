class: CommandLineTool
id: process_shortreads.cwl
inputs:
- id: in_inline_null
  doc: ':   barcode is inline with sequence, occurs only on single-end read (default).'
  type: boolean
  inputBinding:
    prefix: --inline-null
- id: in_index_null
  doc: ':    barcode is provded in FASTQ header (Illumina i5 or i7 read).'
  type: boolean
  inputBinding:
    prefix: --index-null
- id: in_null_index
  doc: ':    barcode is provded in FASTQ header (Illumina i7 read if both i5 and i7
    read are provided).'
  type: boolean
  inputBinding:
    prefix: --null-index
- id: in_inline_inline
  doc: ': barcode is inline with sequence, occurs on single and paired-end read.'
  type: boolean
  inputBinding:
    prefix: --inline-inline
- id: in_index_index
  doc: ':   barcode is provded in FASTQ header (Illumina i5 and i7 reads).'
  type: boolean
  inputBinding:
    prefix: --index-index
- id: in_inline_index
  doc: ':  barcode is inline with sequence on single-end read and occurs in FASTQ
    header (from either i5 or i7 read).'
  type: boolean
  inputBinding:
    prefix: --inline-index
- id: in_index_inline
  doc: ':  barcode occurs in FASTQ header (Illumina i5 or i7 read) and is inline with
    single-end sequence (for single-end data) on paired-end read (for paired-end data).'
  type: boolean
  inputBinding:
    prefix: --index-inline
- id: in_adapter_one
  doc: ': provide adaptor sequence that may occur on the first read for filtering.'
  type: long
  inputBinding:
    prefix: --adapter-1
- id: in_adapter_two
  doc: ': provide adaptor sequence that may occur on the paired-read for filtering.'
  type: long
  inputBinding:
    prefix: --adapter-2
- id: in_adapter_mm
  doc: ': number of mismatches allowed in the adapter sequence.'
  type: long
  inputBinding:
    prefix: --adapter-mm
- id: in_retain_header
  doc: ': retain unmodified FASTQ headers in the output.'
  type: boolean
  inputBinding:
    prefix: --retain-header
- id: in_merge
  doc: ': if no barcodes are specified, merge all input files into a single output
    file (or single pair of files).'
  type: boolean
  inputBinding:
    prefix: --merge
- id: in_no_read_trimming
  doc: ': do not trim low quality reads, just discard them.'
  type: boolean
  inputBinding:
    prefix: --no-read-trimming
- id: in_len_limit
  doc: ': when trimming sequences, specify the minimum length a sequence must be to
    keep it (default 31bp).'
  type: long
  inputBinding:
    prefix: --len-limit
- id: in_filter_illumina
  doc: ": discard reads that have been marked by Illumina's chastity/purity filter\
    \ as failing."
  type: boolean
  inputBinding:
    prefix: --filter-illumina
- id: in_barcode_dist
  doc: ': provide the distace between barcodes to allow for barcode rescue (default
    2)'
  type: boolean
  inputBinding:
    prefix: --barcode-dist
- id: in_mate_pair
  doc: ': raw reads are circularized mate-pair data, first read will be reverse complemented.'
  type: boolean
  inputBinding:
    prefix: --mate-pair
- id: in_no_overhang
  doc: ': data does not contain an overhang nucleotide between barcode and seqeunce.'
  type: boolean
  inputBinding:
    prefix: --no-overhang
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- process_shortreads
