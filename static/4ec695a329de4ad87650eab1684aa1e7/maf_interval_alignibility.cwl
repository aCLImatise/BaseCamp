class: CommandLineTool
id: maf_interval_alignibility.py.cwl
inputs:
- id: species
  doc: ': Comma separated list of species to include'
  type: string
  inputBinding:
    prefix: --species
- id: prefix
  doc: ': Prefix to add to each interval chrom (usually reference species)'
  type: string
  inputBinding:
    prefix: --prefix
- id: use_cache
  doc: ':   Use a cache that keeps blocks of the MAF files in memory (requires ~20MB
    per MAF)'
  type: boolean
  inputBinding:
    prefix: --usecache
outputs: []
cwlVersion: v1.1
baseCommand:
- maf_interval_alignibility.py
