class: CommandLineTool
id: bs_call.cwl
inputs:
- id: no_split
  doc: Do not split output on contig
  type: boolean
  inputBinding:
    prefix: --no-split
- id: haploid
  doc: '|-1  Assume genome is haploid'
  type: boolean
  inputBinding:
    prefix: --haploid
- id: keep_duplicates
  doc: Don't merge duplicate reads
  type: boolean
  inputBinding:
    prefix: --keep-duplicates
- id: ignore_duplicates
  doc: Ignore duplicate flag from SAM/BAM files
  type: boolean
  inputBinding:
    prefix: --ignore-duplicates
- id: keep_unmatched
  doc: Don't discard reads that don't form proper pairs
  type: boolean
  inputBinding:
    prefix: --keep-unmatched
- id: extra_stats
  doc: Generate extra stats files
  type: boolean
  inputBinding:
    prefix: --extra-stats
- id: right_trim
  doc: Bases to trim from right of read pair
  type: boolean
  inputBinding:
    prefix: --right-trim
- id: left_trim
  doc: Bases to trim from left of read pair
  type: boolean
  inputBinding:
    prefix: --left-trim
- id: blank_trim
  doc: Don't use trimmed bases for genotype estimation
  type: boolean
  inputBinding:
    prefix: --blank-trim
- id: mapq_threshold
  doc: Set MAPQ threshold for selecting reads (default 20)
  type: long
  inputBinding:
    prefix: --mapq-threshold
- id: bq_threshold
  doc: Set base quality threshold for calling (default 20)
  type: long
  inputBinding:
    prefix: --bq-threshold
- id: max_template_length
  doc: Set maximum template length for a pair (default 1000)
  type: long
  inputBinding:
    prefix: --max-template-length
- id: realign_tolerance
  doc: Tolerance for realignment positions (default 8)
  type: long
  inputBinding:
    prefix: --realign-tolerance
- id: conversion
  doc: ',<float> Set under and over conversion rates (default 0.01,0.05)'
  type: double
  inputBinding:
    prefix: --conversion
- id: reference_bias
  doc: Set bias to reference homozygote (default 2)
  type: double
  inputBinding:
    prefix: --reference-bias
outputs: []
cwlVersion: v1.1
baseCommand:
- bs_call
