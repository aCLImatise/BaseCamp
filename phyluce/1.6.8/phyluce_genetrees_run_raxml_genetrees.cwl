class: CommandLineTool
id: phyluce_genetrees_run_raxml_genetrees.cwl
inputs:
- id: input
  doc: The input directory containing alignments in phylip format
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: The output directory to hold alignments
  type: string
  inputBinding:
    prefix: --output
- id: out_group
  doc: The outgroup to use
  type: string
  inputBinding:
    prefix: --outgroup
- id: threads
  doc: The number of RAxML threads to run (best to determine empirically)
  type: string
  inputBinding:
    prefix: --threads
- id: tree_searches
  doc: The number of tree searches to run.
  type: string
  inputBinding:
    prefix: --tree-searches
- id: cores
  doc: The number of concurrent RAxML jobs to run
  type: string
  inputBinding:
    prefix: --cores
- id: quiet
  doc: Suppress the CPU usage question
  type: boolean
  inputBinding:
    prefix: --quiet
- id: verbosity
  doc: The logging level to use.
  type: string
  inputBinding:
    prefix: --verbosity
- id: log_path
  doc: The path to a directory to hold logs.
  type: string
  inputBinding:
    prefix: --log-path
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_genetrees_run_raxml_genetrees
