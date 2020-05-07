class: CommandLineTool
id: bactopia_search.py.cwl
inputs:
- id: str
  doc: Taxon ID or Study accession
  type: string
  inputBinding:
    position: 0
- id: exact_tax_on
  doc: Exclude Taxon ID descendents.
  type: boolean
  inputBinding:
    prefix: --exact_taxon
- id: outdir
  doc: 'Directory to write output. (Default: .)'
  type: string
  inputBinding:
    prefix: --outdir
- id: prefix
  doc: 'Prefix to use for output file names. (Default: ena)'
  type: string
  inputBinding:
    prefix: --prefix
- id: limit
  doc: 'Maximum number of results to return. (Default: 1000000)'
  type: long
  inputBinding:
    prefix: --limit
- id: min_read_length
  doc: 'Filters samples based on minimum mean read length. (Default: No filter)'
  type: long
  inputBinding:
    prefix: --min_read_length
- id: min_base_count
  doc: 'Filters samples based on minimum basepair count. (Default: No filter)'
  type: long
  inputBinding:
    prefix: --min_base_count
- id: min_coverage
  doc: Filter samples based on minimum coverage (requires --genome_size)
  type: long
  inputBinding:
    prefix: --min_coverage
- id: genome_size
  doc: Genome size to estimate coverage (requires --coverage)
  type: long
  inputBinding:
    prefix: --genome_size
outputs: []
cwlVersion: v1.1
baseCommand:
- bactopia-search.py
