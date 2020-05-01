#!/usr/bin/env cwl-runner

baseCommand:
- bs_call
class: CommandLineTool
cwlVersion: v1.0
id: bs_call
inputs:
- doc: Do not split output on contig
  id: no_split
  inputBinding:
    prefix: --no-split
  type: boolean
- doc: '|-1  Assume genome is haploid'
  id: haploid
  inputBinding:
    prefix: --haploid
  type: boolean
- doc: Don't merge duplicate reads
  id: keep_duplicates
  inputBinding:
    prefix: --keep-duplicates
  type: boolean
- doc: Ignore duplicate flag from SAM/BAM files
  id: ignore_duplicates
  inputBinding:
    prefix: --ignore-duplicates
  type: boolean
- doc: Don't discard reads that don't form proper pairs
  id: keep_unmatched
  inputBinding:
    prefix: --keep-unmatched
  type: boolean
- doc: Generate extra stats files
  id: extra_stats
  inputBinding:
    prefix: --extra-stats
  type: boolean
- doc: Bases to trim from right of read pair
  id: right_trim
  inputBinding:
    prefix: --right-trim
  type: boolean
- doc: Bases to trim from left of read pair
  id: left_trim
  inputBinding:
    prefix: --left-trim
  type: boolean
- doc: Don't use trimmed bases for genotype estimation
  id: blank_trim
  inputBinding:
    prefix: --blank-trim
  type: boolean
- doc: Set MAPQ threshold for selecting reads (default 20)
  id: mapq_threshold
  inputBinding:
    prefix: --mapq-threshold
  type: long
- doc: Set base quality threshold for calling (default 20)
  id: bq_threshold
  inputBinding:
    prefix: --bq-threshold
  type: long
- doc: Set maximum template length for a pair (default 1000)
  id: max_template_length
  inputBinding:
    prefix: --max-template-length
  type: long
- doc: Tolerance for realignment positions (default 8)
  id: realign_tolerance
  inputBinding:
    prefix: --realign-tolerance
  type: long
- doc: ',<float> Set under and over conversion rates (default 0.01,0.05)'
  id: conversion
  inputBinding:
    prefix: --conversion
  type: double
- doc: Set bias to reference homozygote (default 2)
  id: reference_bias
  inputBinding:
    prefix: --reference-bias
  type: double
