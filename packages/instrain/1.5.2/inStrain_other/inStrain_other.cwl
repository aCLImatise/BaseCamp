class: CommandLineTool
id: inStrain_other.cwl
inputs:
- id: in_processes
  doc: 'Number of processes to use (default: 6)'
  type: long?
  inputBinding:
    prefix: --processes
- id: in_debug
  doc: 'Make extra debugging output (default: False)'
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_old_is
  doc: "Convert an old inStrain version object to the newer\nversion. (default: None)"
  type: string?
  inputBinding:
    prefix: --old_IS
- id: in_run_statistics
  doc: "Generate runtime reports for an inStrain run.\n(default: None)\n"
  type: string?
  inputBinding:
    prefix: --run_statistics
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/instrain:1.5.2--py_0
cwlVersion: v1.1
baseCommand:
- inStrain
- other
