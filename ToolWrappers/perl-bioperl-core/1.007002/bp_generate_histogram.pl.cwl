class: CommandLineTool
id: bp_generate_histogram.pl.cwl
inputs:
- id: in_dsn
  doc: <dsn>       Data source (default dbi:mysql:test)
  type: boolean
  inputBinding:
    prefix: --dsn
- id: in_adaptor
  doc: <adaptor>   Schema adaptor (default dbi::mysqlopt)
  type: boolean
  inputBinding:
    prefix: --adaptor
- id: in_user
  doc: <user>      Username for mysql authentication
  type: boolean
  inputBinding:
    prefix: --user
- id: in_pass
  doc: <password>  Password for mysql authentication
  type: boolean
  inputBinding:
    prefix: --pass
- id: in_bin
  doc: <bp>        Bin size in base pairs.
  type: boolean
  inputBinding:
    prefix: --bin
- id: in_aggregator
  doc: Comma-separated list of aggregators
  type: string
  inputBinding:
    prefix: --aggregator
- id: in_sort
  doc: Sort the resulting list by type and bin
  type: boolean
  inputBinding:
    prefix: --sort
- id: in_merge
  doc: Merge features with same method but different sources
  type: boolean
  inputBinding:
    prefix: --merge
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bp_generate_histogram.pl
