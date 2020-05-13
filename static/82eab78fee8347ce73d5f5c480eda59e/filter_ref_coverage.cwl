class: CommandLineTool
id: filter_ref_coverage.cwl
inputs:
- id: input
  doc: 'specify SAM file to be analysed (default: STDIN)'
  type: string
  inputBinding:
    prefix: --input
- id: discard
  doc: keep or discard entries passing the filter criteria?
  type: string
  inputBinding:
    prefix: --discard
- id: verbose
  doc: print additional information to stderr
  type: boolean
  inputBinding:
    prefix: --verbose
- id: debug
  doc: print debug messages to stderr
  type: boolean
  inputBinding:
    prefix: --debug
- id: modify
  doc: modify header by adding PG record
  type: boolean
  inputBinding:
    prefix: --modify
- id: read_lengths
  doc: analyze read length distributions
  type: boolean
  inputBinding:
    prefix: --read_lengths
- id: covered
  doc: covered bases only, ignore uncovered bases
  type: boolean
  inputBinding:
    prefix: --covered
- id: plot
  doc: plot distribution(s)
  type: boolean
  inputBinding:
    prefix: --plot
- id: lci_arg
  doc: fraction of mean coverage to use for LCI integration
  type: string
  inputBinding:
    prefix: --lci_arg
- id: stats_file
  doc: override filename for tab-separated statistics
  type: string
  inputBinding:
    prefix: --stats_file
- id: min_cov
  doc: minimum average coverage
  type: long
  inputBinding:
    prefix: --min_cov
- id: max_cov
  doc: maximum average coverage
  type: long
  inputBinding:
    prefix: --max_cov
- id: min_lci
  doc: minimum LCI
  type: long
  inputBinding:
    prefix: --min_lci
- id: max_lci
  doc: maximum LCI
  type: long
  inputBinding:
    prefix: --max_lci
- id: min_gini
  doc: minimum Gini coefficient
  type: long
  inputBinding:
    prefix: --min_gini
- id: max_gini
  doc: maximum Gini coefficient
  type: long
  inputBinding:
    prefix: --max_gini
outputs: []
cwlVersion: v1.1
baseCommand:
- filter_ref_coverage
