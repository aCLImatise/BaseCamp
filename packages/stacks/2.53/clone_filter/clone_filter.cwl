class: CommandLineTool
id: clone_filter.cwl
inputs:
- id: in_oligo_len_one
  doc: ': length of the single-end oligo sequence in data set.'
  type: long
  inputBinding:
    prefix: --oligo-len-1
- id: in_oligo_len_two
  doc: ': length of the paired-end oligo sequence in data set.'
  type: long
  inputBinding:
    prefix: --oligo-len-2
- id: in_retain_oligo
  doc: ': do not trim off the random oligo sequence (if oligo is inline).'
  type: boolean
  inputBinding:
    prefix: --retain-oligo
- id: in_inline_null
  doc: ':   random oligo is inline with sequence, occurs only on single-end read (default).'
  type: boolean
  inputBinding:
    prefix: --inline-null
- id: in_null_inline
  doc: ':   random oligo is inline with sequence, occurs only on the paired-end read.'
  type: boolean
  inputBinding:
    prefix: --null-inline
- id: in_null_index
  doc: ':    random oligo is provded in FASTQ header (Illumina i7 read if both i5
    and i7 read are provided).'
  type: boolean
  inputBinding:
    prefix: --null-index
- id: in_index_null
  doc: ':    random oligo is provded in FASTQ header (Illumina i5 or i7 read).'
  type: boolean
  inputBinding:
    prefix: --index-null
- id: in_inline_inline
  doc: ': random oligo is inline with sequence, occurs on single and paired-end read.'
  type: boolean
  inputBinding:
    prefix: --inline-inline
- id: in_index_index
  doc: ':   random oligo is provded in FASTQ header (Illumina i5 and i7 read).'
  type: boolean
  inputBinding:
    prefix: --index-index
- id: in_inline_index
  doc: ':  random oligo is inline with sequence on single-end read and second oligo
    occurs in FASTQ header.'
  type: boolean
  inputBinding:
    prefix: --inline-index
- id: in_index_inline
  doc: ':  random oligo occurs in FASTQ header (Illumina i5 or i7 read) and is inline
    with sequence on single-end read (if single read data) or paired-end read (if
    paired data).'
  type: boolean
  inputBinding:
    prefix: --index-inline
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- clone_filter
