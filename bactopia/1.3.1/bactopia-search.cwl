#!/usr/bin/env cwl-runner

baseCommand:
- bactopia-search.py
class: CommandLineTool
cwlVersion: v1.0
id: bactopia-search.py
inputs:
- doc: Taxon ID or Study accession
  id: str
  inputBinding:
    position: 0
  type: string
- doc: Exclude Taxon ID descendents.
  id: exact_tax_on
  inputBinding:
    prefix: --exact_taxon
  type: boolean
- doc: 'Directory to write output. (Default: .)'
  id: outdir
  inputBinding:
    prefix: --outdir
  type: string
- doc: 'Prefix to use for output file names. (Default: ena)'
  id: prefix
  inputBinding:
    prefix: --prefix
  type: string
- doc: 'Maximum number of results to return. (Default: 1000000)'
  id: limit
  inputBinding:
    prefix: --limit
  type: long
- doc: 'Filters samples based on minimum mean read length. (Default: No filter)'
  id: min_read_length
  inputBinding:
    prefix: --min_read_length
  type: long
- doc: 'Filters samples based on minimum basepair count. (Default: No filter)'
  id: min_base_count
  inputBinding:
    prefix: --min_base_count
  type: long
- doc: Filter samples based on minimum coverage (requires --genome_size)
  id: min_coverage
  inputBinding:
    prefix: --min_coverage
  type: long
- doc: Genome size to estimate coverage (requires --coverage)
  id: genome_size
  inputBinding:
    prefix: --genome_size
  type: long
