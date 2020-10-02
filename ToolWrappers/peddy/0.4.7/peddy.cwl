class: CommandLineTool
id: peddy.cwl
inputs:
- id: in_plot
  doc: "-p, --procs INTEGER             number of processors to use\n--prefix TEXT\
    \                   prefix for output files (default is basename\nof vcf)\n--each\
    \ INTEGER                  sample every nth value from the selected\nsites instead\
    \ of every value to speed\nprocessing.\n--sites TEXT                    The path\
    \ to a file with alternative sites to\nuse for calculating relatedness in format\n\
    1:234234 1:45345345... with\nchrom:pos[:ref:alt] on each line. The\nspecial-case\
    \ of 'hg38' for this will use\nhg38 sites shipped with peddy.\n--loglevel [DEBUG|INFO|WARNING|ERROR|CRITICAL]\n\
    Set the level of log output.  [default:\nINFO]\n--version                    \
    \   Show the version and exit.\n-h, --help                      Show this message\
    \ and exit.\n"
  type: boolean
  inputBinding:
    prefix: --plot
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
cwlVersion: v1.1
baseCommand:
- peddy
