class: CommandLineTool
id: plot_bamstats.cwl
inputs:
- id: keep_files
  doc: Do not remove temporary files.
  type: boolean
  inputBinding:
    prefix: --keep-files
- id: log_y
  doc: Set the Y axis scale of the Insert Size plot to log 10.
  type: boolean
  inputBinding:
    prefix: --log-y
- id: merge
  doc: Merge multiple bamstats files and output to STDOUT.
  type: boolean
  inputBinding:
    prefix: --merge
- id: prefix
  doc: The output files prefix, add a slash to create new directory.
  type: File
  inputBinding:
    prefix: --prefix
- id: ref_stats
  doc: Optional reference stats file with expected GC content (created with -s).
  type: File
  inputBinding:
    prefix: --ref-stats
- id: do_ref_stats
  doc: Calculate reference sequence GC for later use with -r
  type: File
  inputBinding:
    prefix: --do-ref-stats
- id: targets
  doc: Restrict -s to the listed regions (tab-delimited chr,from,to. 1-based, inclusive)
  type: File
  inputBinding:
    prefix: --targets
outputs: []
cwlVersion: v1.1
baseCommand:
- plot-bamstats
