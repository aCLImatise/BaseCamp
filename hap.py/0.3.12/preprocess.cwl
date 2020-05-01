#!/usr/bin/env cwl-runner

baseCommand:
- preprocess
class: CommandLineTool
cwlVersion: v1.0
id: preprocess
inputs:
- doc: VCF files to preprocess (use file:sample for a specific sample column).
  id: input_vcf
  inputBinding:
    prefix: --input-vcf
  type: string
- doc: '[ --output-vcf ] arg          Output variant comparison results to VCF.'
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: '[ --reference ] arg           The reference fasta file.'
  id: r
  inputBinding:
    prefix: -r
  type: boolean
- doc: '[ --location ] arg            The location to start at.'
  id: l
  inputBinding:
    prefix: -l
  type: boolean
- doc: '[ --regions ] arg             Use a bed file for getting a subset of  regions
    (traversal via tabix).'
  id: r
  inputBinding:
    prefix: -R
  type: boolean
- doc: '[ --targets ] arg             Use a bed file for getting a subset of  targets
    (streaming the whole file, ignoring  things outside the bed regions).'
  id: t
  inputBinding:
    prefix: -T
  type: boolean
- doc: Set to true to output progress information.
  id: progress
  inputBinding:
    prefix: --progress
  type: string
- doc: 'Expand GTs on chrX: turn 1 into 1/1'
  id: haploid_x
  inputBinding:
    prefix: --haploid-x
  type: string
- doc: Output progress information every n seconds.
  id: progress_seconds
  inputBinding:
    prefix: --progress-seconds
  type: string
- doc: Maximum number of records to process.
  id: limit
  inputBinding:
    prefix: --limit
  type: string
- doc: '[ --preprocess-variants ] arg Apply variant normalisations, trimming,  realignment
    for complex variants (off by  default).'
  id: v
  inputBinding:
    prefix: -V
  type: boolean
- doc: '[ --leftshift ] arg           Left-shift indel alleles (off by default).'
  id: l
  inputBinding:
    prefix: -L
  type: boolean
