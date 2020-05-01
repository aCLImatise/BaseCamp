#!/usr/bin/env cwl-runner

baseCommand:
- maf_interval_alignibility.py
class: CommandLineTool
cwlVersion: v1.0
id: maf_interval_alignibility.py
inputs:
- doc: ': Comma separated list of species to include'
  id: species
  inputBinding:
    prefix: --species
  type: string
- doc: ': Prefix to add to each interval chrom (usually reference species)'
  id: prefix
  inputBinding:
    prefix: --prefix
  type: string
- doc: ':   Use a cache that keeps blocks of the MAF files in memory (requires ~20MB
    per MAF)'
  id: use_cache
  inputBinding:
    prefix: --usecache
  type: boolean
