class: CommandLineTool
id: gnos_pull.pl.cwl
inputs:
- id: in_analysis
  doc: (-a)  ALIGNMENTS or CALLS
  type: boolean
  inputBinding:
    prefix: --analysis
- id: in_outdir
  doc: (-o)  Where to save jsonl and resulting GNOS downloads
  type: boolean
  inputBinding:
    prefix: --outdir
- id: in_config
  doc: (-c)  Mapping of GNOS repos to permissions keys
  type: boolean
  inputBinding:
    prefix: --config
- id: in_symlinks
  doc: (-s)  Rebuild symlinks only.
  type: boolean
  inputBinding:
    prefix: --symlinks
- id: in_threads
  doc: (-t)  Number of parallel GNOS retrievals.
  type: boolean
  inputBinding:
    prefix: --threads
- id: in_url
  doc: "(-u)  The base URL to retrieve jsonl file from\n[http://pancancer.info/gnos_metadata/latest/]"
  type: boolean
  inputBinding:
    prefix: --url
- id: in_info
  doc: (-i)  Just prints how many donor's will be included in pull and some stats.
  type: boolean
  inputBinding:
    prefix: --info
- id: in_debug
  doc: (-d)  prints extra debug information
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_man
  doc: (-m)  More verbose usage info
  type: boolean
  inputBinding:
    prefix: --man
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gnos_pull.pl
