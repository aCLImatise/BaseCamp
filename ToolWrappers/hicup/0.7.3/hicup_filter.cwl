class: CommandLineTool
id: hicup_filter.cwl
inputs:
- id: in_config
  doc: Specify the optional configuration file
  type: boolean
  inputBinding:
    prefix: --config
- id: in_digest
  doc: Specify the genome digest file (created by hicup_digester)
  type: boolean
  inputBinding:
    prefix: --digest
- id: in_longest
  doc: Maximum allowable insert size (bps)
  type: boolean
  inputBinding:
    prefix: --longest
- id: in_outdir
  doc: Directory to write output files
  type: Directory
  inputBinding:
    prefix: --outdir
- id: in_quiet
  doc: Suppress all progress reports
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_shortest
  doc: Minimum allowable insert size (bps)
  type: boolean
  inputBinding:
    prefix: --shortest
- id: in_threads
  doc: "Specify the number of threads, allowing simultaneous processing\nof multiple\
    \ files"
  type: boolean
  inputBinding:
    prefix: --threads
- id: in_zip
  doc: "Compress final output files using gzip, or if SAMtools is\ninstalled, to BAM\
    \ format"
  type: boolean
  inputBinding:
    prefix: --zip
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: Directory to write output files
  type: Directory
  outputBinding:
    glob: $(inputs.in_outdir)
cwlVersion: v1.1
baseCommand:
- hicup_filter
