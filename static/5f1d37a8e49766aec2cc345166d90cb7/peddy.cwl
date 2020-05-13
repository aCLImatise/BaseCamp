class: CommandLineTool
id: peddy.cwl
inputs:
- id: procs
  doc: number of processors to use
  type: long
  inputBinding:
    prefix: --procs
- id: prefix
  doc: prefix for output files (default is basename of vcf)
  type: string
  inputBinding:
    prefix: --prefix
- id: each
  doc: sample every nth value from the selected sites instead of every value to speed
    processing.
  type: long
  inputBinding:
    prefix: --each
- id: sites
  doc: The path to a file with alternative sites to use for calculating relatedness
    in format 1:234234 1:45345345... with chrom:pos[:ref:alt] on each line. The special-case
    of 'hg38' for this will use hg38 sites shipped with peddy.
  type: string
  inputBinding:
    prefix: --sites
- id: loglevel
  doc: '[DEBUG|INFO|WARNING|ERROR|CRITICAL] Set the level of log output.  [default:
    INFO]'
  type: boolean
  inputBinding:
    prefix: --loglevel
outputs: []
cwlVersion: v1.1
baseCommand:
- peddy
