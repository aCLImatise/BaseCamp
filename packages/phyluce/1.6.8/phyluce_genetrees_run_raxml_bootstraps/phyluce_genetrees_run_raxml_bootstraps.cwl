class: CommandLineTool
id: phyluce_genetrees_run_raxml_bootstraps.cwl
inputs:
- id: in_best_trees
  doc: "OUTPUT [--bootreps BOOTREPS]\n[--outgroup OUTGROUP]\n[--threads THREADS]\n\
    [--cores CORES] [--quiet]"
  type: string
  inputBinding:
    prefix: --best-trees
- id: in_alignments
  doc: The directory containing alignments to be summarized.
  type: Directory
  inputBinding:
    prefix: --alignments
- id: in_boot_reps
  doc: The number of bootstrap replicates to run
  type: long
  inputBinding:
    prefix: --bootreps
- id: in_out_group
  doc: The outgroup to use
  type: string
  inputBinding:
    prefix: --outgroup
- id: in_threads
  doc: "The number of RAxML threads to run (best to determine\nempirically)"
  type: long
  inputBinding:
    prefix: --threads
- id: in_cores
  doc: The number of concurrent RAxML jobs to run
  type: long
  inputBinding:
    prefix: --cores
- id: in_quiet
  doc: Suppress the CPU usage question
  type: boolean
  inputBinding:
    prefix: --quiet
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- phyluce_genetrees_run_raxml_bootstraps
