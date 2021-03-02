class: CommandLineTool
id: pangolin.cwl
inputs:
- id: in_outdir
  doc: 'Output directory. Default: current working directory'
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_outfile
  doc: 'Optional output file name. Default: lineage_report.csv'
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_data
  doc: "Data directory minimally containing a fasta alignment\nand guide tree"
  type: Directory?
  inputBinding:
    prefix: --data
- id: in_dry_run
  doc: Go through the motions but don't actually run
  type: boolean?
  inputBinding:
    prefix: --dry-run
- id: in_force
  doc: Overwrite all output
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_tempdir
  doc: "Specify where you want the temp stuff to go. Default:\n$TMPDIR"
  type: string?
  inputBinding:
    prefix: --tempdir
- id: in_max_am_big
  doc: "Maximum proportion of Ns allowed for pangolin to\nattempt assignment. Default:\
    \ 0.5"
  type: long?
  inputBinding:
    prefix: --max-ambig
- id: in_min_length
  doc: "Minimum query length allowed for pangolin to attempt\nassignment. Default:\
    \ 10000"
  type: long?
  inputBinding:
    prefix: --min-length
- id: in_pan_guilin
  doc: Run web-app version of pangolin
  type: boolean?
  inputBinding:
    prefix: --panGUIlin
- id: in_write_tree
  doc: "Output a phylogeny for each query sequence placed in\nthe guide tree"
  type: boolean?
  inputBinding:
    prefix: --write-tree
- id: in_threads
  doc: Number of threads
  type: long?
  inputBinding:
    prefix: --threads
- id: in_include_putative
  doc: "Include the bleeding edge lineage definitions in\nassignment"
  type: boolean?
  inputBinding:
    prefix: --include-putative
- id: in_verbose
  doc: Print lots of stuff to screen
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_lineages_version
  doc: "show lineages's version number and exit\n"
  type: boolean?
  inputBinding:
    prefix: --lineages-version
- id: in_query
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: 'Output directory. Default: current working directory'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
- id: out_outfile
  doc: 'Optional output file name. Default: lineage_report.csv'
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile)
hints: []
cwlVersion: v1.1
baseCommand:
- pangolin
