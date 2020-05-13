class: CommandLineTool
id: gnos_pull.pl.cwl
inputs:
- id: analysis
  doc: (-a)  ALIGNMENTS or CALLS
  type: boolean
  inputBinding:
    prefix: --analysis
- id: outdir
  doc: (-o)  Where to save jsonl and resulting GNOS downloads
  type: boolean
  inputBinding:
    prefix: --outdir
- id: config
  doc: (-c)  Mapping of GNOS repos to permissions keys
  type: boolean
  inputBinding:
    prefix: --config
- id: symlinks
  doc: (-s)  Rebuild symlinks only.
  type: boolean
  inputBinding:
    prefix: --symlinks
- id: threads
  doc: (-t)  Number of parallel GNOS retrievals.
  type: boolean
  inputBinding:
    prefix: --threads
- id: url
  doc: (-u)  The base URL to retrieve jsonl file from [http://pancancer.info/gnos_metadata/latest/]
  type: boolean
  inputBinding:
    prefix: --url
- id: info
  doc: (-i)  Just prints how many donor's will be included in pull and some stats.
  type: boolean
  inputBinding:
    prefix: --info
- id: debug
  doc: (-d)  prints extra debug information
  type: boolean
  inputBinding:
    prefix: --debug
- id: man
  doc: (-m)  More verbose usage info
  type: boolean
  inputBinding:
    prefix: --man
outputs: []
cwlVersion: v1.1
baseCommand:
- gnos_pull.pl
