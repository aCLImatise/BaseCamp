class: CommandLineTool
id: chisel_bedding.cwl
inputs:
- id: in_run_dir
  doc: 'Running directory (default: current directory)'
  type: Directory?
  inputBinding:
    prefix: --rundir
- id: in_raw_calls
  doc: "Use raw copy numbers instead of consensus corrected\nones (default: False)"
  type: boolean?
  inputBinding:
    prefix: --rawcalls
- id: in_no_extending
  doc: "Merge consecutive bins only if they are neighboring\n(default: False, segments\
    \ are extended to fill gaps)"
  type: boolean?
  inputBinding:
    prefix: --noextending
- id: in_jobs
  doc: "Number of parallele jobs to use (default: equal to\nnumber of available processors)\n"
  type: long?
  inputBinding:
    prefix: --jobs
- id: in_input
  doc: "Input file with inferred copy numbers (default:\ncalls/calls.tsv)"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/chisel:0.0.5--py_0
cwlVersion: v1.1
baseCommand:
- chisel_bedding
