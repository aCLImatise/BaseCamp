class: CommandLineTool
id: maf_interval_alignibility.py_maf_files.cwl
inputs:
- id: in_species
  doc: ': Comma separated list of species to include'
  type: string
  inputBinding:
    prefix: --species
- id: in_prefix
  doc: ': Prefix to add to each interval chrom (usually reference species)'
  type: string
  inputBinding:
    prefix: --prefix
- id: in_use_cache
  doc: ':   Use a cache that keeps blocks of the MAF files in memory (requires ~20MB
    per MAF)'
  type: boolean
  inputBinding:
    prefix: --usecache
- id: in_tested_dot
  doc: 'usage: /usr/local/bin/maf_interval_alignibility.py maf_files [options] < interval_file'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- maf_interval_alignibility.py
- maf_files
