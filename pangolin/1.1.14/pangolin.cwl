class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/pangolin.cwl
inputs:
- id: outdir
  doc: 'Output directory. Default: current working directory'
  type: string
  inputBinding:
    prefix: --outdir
- id: outfile
  doc: 'Optional output file name. Default: lineage_report.csv'
  type: string
  inputBinding:
    prefix: --outfile
- id: data
  doc: Data directory minimally containing a fasta alignment and guide tree
  type: string
  inputBinding:
    prefix: --data
- id: dry_run
  doc: Go through the motions but don't actually run
  type: boolean
  inputBinding:
    prefix: --dry-run
- id: force
  doc: Overwrite all output
  type: boolean
  inputBinding:
    prefix: --force
- id: tempdir
  doc: 'Specify where you want the temp stuff to go. Default: $TMPDIR'
  type: string
  inputBinding:
    prefix: --tempdir
- id: max_am_big
  doc: 'Maximum proportion of Ns allowed for pangolin to attempt assignment. Default:
    0.5'
  type: long
  inputBinding:
    prefix: --max-ambig
- id: min_length
  doc: 'Minimum query length allowed for pangolin to attempt assignment. Default:
    10000'
  type: long
  inputBinding:
    prefix: --min-length
- id: pan_guilin
  doc: Run web-app version of pangolin
  type: boolean
  inputBinding:
    prefix: --panGUIlin
- id: write_tree
  doc: Output a phylogeny for each query sequence placed in the guide tree
  type: boolean
  inputBinding:
    prefix: --write-tree
- id: threads
  doc: Number of threads
  type: string
  inputBinding:
    prefix: --threads
- id: include_putative
  doc: Include the bleeding edge lineage definitions in assignment
  type: boolean
  inputBinding:
    prefix: --include-putative
- id: verbose
  doc: Print lots of stuff to screen
  type: boolean
  inputBinding:
    prefix: --verbose
- id: lineages_version
  doc: show lineages's version number and exit
  type: boolean
  inputBinding:
    prefix: --lineages-version
- id: query
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- pangolin
