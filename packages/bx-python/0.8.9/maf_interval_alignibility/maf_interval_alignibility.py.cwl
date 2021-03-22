class: CommandLineTool
id: ../../../maf_interval_alignibility.py.cwl
inputs:
- id: in_species
  doc: Comma separated list of species to include
  type: string
  inputBinding:
    prefix: --species
- id: in_prefix
  doc: "Prefix to add to each interval chrom (usually\nreference species)"
  type: string
  inputBinding:
    prefix: --prefix
- id: in_use_cache
  doc: "Use a cache that keeps blocks of the MAF files in\nmemory (requires ~20MB\
    \ per MAF)\n"
  type: boolean
  inputBinding:
    prefix: --usecache
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- maf_interval_alignibility.py
