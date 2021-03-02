class: CommandLineTool
id: platon.cwl
inputs:
- id: in_db
  doc: database path (default = <platon_path>/db)
  type: File?
  inputBinding:
    prefix: --db
- id: in_mode
  doc: "applied filter mode: sensitivity: RDS only (>= 95%\nsensitivity); specificity:\
    \ RDS only (>=99.9%\nspecificity); accuracy: RDS & characterization\nheuristics\
    \ (highest accuracy) (default = accuracy)"
  type: string?
  inputBinding:
    prefix: --mode
- id: in_characterize
  doc: deactivate filters; characterize all contigs
  type: boolean?
  inputBinding:
    prefix: --characterize
- id: in_output
  doc: output directory (default = current working directory)
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_prefix
  doc: file prefix (default = input file name)
  type: File?
  inputBinding:
    prefix: --prefix
- id: in_threads
  doc: "number of threads to use (default = number of\navailable CPUs)"
  type: long?
  inputBinding:
    prefix: --threads
- id: in_verbose
  doc: print verbose information
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: output directory (default = current working directory)
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/platon:1.5.0--py_0
cwlVersion: v1.1
baseCommand:
- platon
