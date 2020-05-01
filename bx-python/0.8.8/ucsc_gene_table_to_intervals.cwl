#!/usr/bin/env cwl-runner

baseCommand:
- ucsc_gene_table_to_intervals.py
class: CommandLineTool
cwlVersion: v1.0
id: ucsc_gene_table_to_intervals.py
inputs:
- doc: 'Limit to region: one of coding, utr3, utr5, transcribed [default]'
  id: region
  inputBinding:
    prefix: --region
  type: string
- doc: Only print intervals overlapping an exon
  id: exons
  inputBinding:
    prefix: --exons
  type: boolean
- doc: Print strand after interval
  id: strand
  inputBinding:
    prefix: --strand
  type: boolean
- doc: file doesn't contain a 'bin' column (use this for pre- hg18 files)
  id: no_bin
  inputBinding:
    prefix: --nobin
  type: boolean
