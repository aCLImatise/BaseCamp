class: CommandLineTool
id: bp_generate_histogram.pl.cwl
inputs:
- id: dsn
  doc: <dsn>       Data source (default dbi:mysql:test)
  type: boolean
  inputBinding:
    prefix: --dsn
- id: adaptor
  doc: <adaptor>   Schema adaptor (default dbi::mysqlopt)
  type: boolean
  inputBinding:
    prefix: --adaptor
- id: user
  doc: <user>      Username for mysql authentication
  type: boolean
  inputBinding:
    prefix: --user
- id: pass
  doc: <password>  Password for mysql authentication
  type: boolean
  inputBinding:
    prefix: --pass
- id: bin
  doc: <bp>        Bin size in base pairs.
  type: boolean
  inputBinding:
    prefix: --bin
- id: aggregator
  doc: Comma-separated list of aggregators
  type: string
  inputBinding:
    prefix: --aggregator
- id: sort
  doc: Sort the resulting list by type and bin
  type: boolean
  inputBinding:
    prefix: --sort
- id: merge
  doc: Merge features with same method but different sources
  type: boolean
  inputBinding:
    prefix: --merge
outputs: []
cwlVersion: v1.1
baseCommand:
- bp_generate_histogram.pl
