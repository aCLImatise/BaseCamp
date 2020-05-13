class: CommandLineTool
id: refseq_masher_contains.cwl
inputs:
- id: mash_bin
  doc: Mash binary path (default="mash")
  type: string
  inputBinding:
    prefix: --mash-bin
- id: output
  doc: Output file path (default="-"/stdout)
  type: File
  inputBinding:
    prefix: --output
- id: output_type
  doc: '[tab|csv]      Output file type (tab|csv)'
  type: boolean
  inputBinding:
    prefix: --output-type
- id: top_n_results
  doc: Output top N results sorted by identity in ascending order (default=0/all)
  type: long
  inputBinding:
    prefix: --top-n-results
- id: min_identity
  doc: Mash screen min identity to report (default=0.9)
  type: double
  inputBinding:
    prefix: --min-identity
- id: max_p_value
  doc: Mash screen max p-value to report (default=0.01)
  type: double
  inputBinding:
    prefix: --max-pvalue
- id: parallelism
  doc: Mash screen parallelism; number of threads to spawn (default=1)
  type: long
  inputBinding:
    prefix: --parallelism
outputs: []
cwlVersion: v1.1
baseCommand:
- refseq_masher
- contains
