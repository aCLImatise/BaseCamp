#!/usr/bin/env cwl-runner

baseCommand:
- tally_variants_from_multiple_vcfs.py
class: CommandLineTool
cwlVersion: v1.0
id: tally_variants_from_multiple_vcfs.py
inputs:
- doc: 'multiple vcf files (default: None)'
  id: vcf_files
  inputBinding:
    prefix: --vcf-files
  type:
    items: string
    type: array
- doc: 'multiple bam files (default: None)'
  id: bam_files
  inputBinding:
    prefix: --bam-files
  type:
    items: string
    type: array
- doc: 'names for the vcf files (default: None)'
  id: sample_names
  inputBinding:
    prefix: --sample-names
  type:
    items: string
    type: array
- doc: "Filter labels to count (default: ['PASS'])"
  id: filter_labels
  inputBinding:
    prefix: --filter-labels
  type:
    items: string
    type: array
- doc: 'Bed file to include. (default: None)'
  id: bed_inclusion
  inputBinding:
    prefix: --bed-inclusion
  type: string
- doc: 'threads (default: 1)'
  id: num_threads
  inputBinding:
    prefix: --num-threads
  type: string
- doc: 'Print out only if at least this number of vcf files have the variant. (default:
    1)'
  id: minimum_samples
  inputBinding:
    prefix: --minimum-samples
  type: long
