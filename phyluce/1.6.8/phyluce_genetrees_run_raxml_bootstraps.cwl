class: CommandLineTool
id: phyluce_genetrees_run_raxml_bootstraps.cwl
inputs:
- id: alignments
  doc: The directory containing alignments to be summarized.
  type: string
  inputBinding:
    prefix: --alignments
- id: best_trees
  doc: The directory containing the best trees
  type: string
  inputBinding:
    prefix: --best-trees
- id: output
  doc: The output directory to hold alignments
  type: string
  inputBinding:
    prefix: --output
- id: boot_reps
  doc: The number of bootstrap replicates to run
  type: string
  inputBinding:
    prefix: --bootreps
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
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_genetrees_run_raxml_bootstraps
