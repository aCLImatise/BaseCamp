class: CommandLineTool
id: inStrain_other.cwl
inputs:
- id: processes
  doc: 'Number of processes to use (default: 6)'
  type: string
  inputBinding:
    prefix: --processes
- id: debug
  doc: 'Make extra debugging output (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
- id: old_is
  doc: 'Convert an old inStrain version object to the newer version. (default: None)'
  type: string
  inputBinding:
    prefix: --old_IS
- id: run_statistics
  doc: 'Generate runtime reports for an inStrain run. (default: None)'
  type: string
  inputBinding:
    prefix: --run_statistics
outputs: []
cwlVersion: v1.1
baseCommand:
- inStrain
- other
