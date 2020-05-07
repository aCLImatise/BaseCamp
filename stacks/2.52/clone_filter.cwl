class: CommandLineTool
id: clone_filter.cwl
inputs:
- id: inline_null
  doc: ':   random oligo is inline with sequence, occurs only on single-end read (default).'
  type: boolean
  inputBinding:
    prefix: --inline-null
- id: null_inline
  doc: ':   random oligo is inline with sequence, occurs only on the paired-end read.'
  type: boolean
  inputBinding:
    prefix: --null-inline
- id: null_index
  doc: ':    random oligo is provded in FASTQ header (Illumina i7 read if both i5
    and i7 read are provided).'
  type: boolean
  inputBinding:
    prefix: --null-index
- id: index_null
  doc: ':    random oligo is provded in FASTQ header (Illumina i5 or i7 read).'
  type: boolean
  inputBinding:
    prefix: --index-null
- id: inline_inline
  doc: ': random oligo is inline with sequence, occurs on single and paired-end read.'
  type: boolean
  inputBinding:
    prefix: --inline-inline
- id: index_index
  doc: ':   random oligo is provded in FASTQ header (Illumina i5 and i7 read).'
  type: boolean
  inputBinding:
    prefix: --index-index
- id: inline_index
  doc: ':  random oligo is inline with sequence on single-end read and second oligo
    occurs in FASTQ header.'
  type: boolean
  inputBinding:
    prefix: --inline-index
- id: index_inline
  doc: ':  random oligo occurs in FASTQ header (Illumina i5 or i7 read) and is inline
    with sequence on single-end read (if single read data) or paired-end read (if
    paired data).'
  type: boolean
  inputBinding:
    prefix: --index-inline
outputs: []
cwlVersion: v1.1
baseCommand:
- clone_filter
