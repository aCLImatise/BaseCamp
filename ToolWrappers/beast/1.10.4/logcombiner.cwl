class: CommandLineTool
id: logcombiner.cwl
inputs:
- id: in_trees
  doc: this option to combine tree log files
  type: string
  inputBinding:
    prefix: -trees
- id: in_decimal
  doc: option converts numbers from scientific to decimal notation
  type: double
  inputBinding:
    prefix: -decimal
- id: in_burnin
  doc: number of states to be considered as 'burn-in'
  type: long
  inputBinding:
    prefix: -burnin
- id: in_resample
  doc: the log files to this frequency (the original sampling frequency must be a
    factor of this value)
  type: string
  inputBinding:
    prefix: -resample
- id: in_scale
  doc: scaling factor that will multiply any time units by this value
  type: string
  inputBinding:
    prefix: -scale
- id: in_strip
  doc: out all annotations (trees only)
  type: string
  inputBinding:
    prefix: -strip
- id: in_re_number
  doc: option renumbers output states consecutively
  type: string
  inputBinding:
    prefix: -renumber
- id: in_by
  doc: Andrew Rambaut and Alexei J. Drummond
  type: string
  inputBinding:
    position: 0
- id: in_a_dotrambautateddotacdotuk
  doc: Department of Computer Science
  type: string
  inputBinding:
    position: 0
- id: in_alexei_atcs_dot_auckland_do_tac_dot_nz
  doc: 'dr.app.util.Arguments$ArgumentException: Unrecognized argument: --help'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- logcombiner
