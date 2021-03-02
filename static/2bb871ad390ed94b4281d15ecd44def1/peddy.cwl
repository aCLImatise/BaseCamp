class: CommandLineTool
id: peddy.cwl
inputs:
- id: in_procs
  doc: number of processors to use
  type: long?
  inputBinding:
    prefix: --procs
- id: in_prefix
  doc: "prefix for output files (default is basename\nof vcf)"
  type: string?
  inputBinding:
    prefix: --prefix
- id: in_each
  doc: "sample every nth value from the selected\nsites instead of every value to\
    \ speed\nprocessing."
  type: long?
  inputBinding:
    prefix: --each
- id: in_sites
  doc: "The path to a file with alternative sites to\nuse for calculating relatedness\
    \ in format\n1:234234 1:45345345... with\nchrom:pos[:ref:alt] on each line. The\n\
    special-case of 'hg38' for this will use\nhg38 sites shipped with peddy."
  type: File?
  inputBinding:
    prefix: --sites
- id: in_loglevel
  doc: "[DEBUG|INFO|WARNING|ERROR|CRITICAL]\nSet the level of log output.  [default:\n\
    INFO]"
  type: boolean?
  inputBinding:
    prefix: --loglevel
- id: in_vcf
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_ped
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- peddy
