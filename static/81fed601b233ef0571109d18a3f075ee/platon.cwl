class: CommandLineTool
id: platon.cwl
inputs:
- id: in_db
  doc: database path (default = <platon_path>/db)
  type: File?
  inputBinding:
    prefix: --db
- id: in_prefix
  doc: Prefix for output files
  type: string?
  inputBinding:
    prefix: --prefix
- id: in_output
  doc: Output directory (default = current working directory)
  type: Directory?
  inputBinding:
    prefix: --output
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
- id: in_verbose
  doc: Print verbose information
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_threads
  doc: "Number of threads to use (default = number of\navailable CPUs)"
  type: long?
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output directory (default = current working directory)
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/platon:1.6--pyhdfd78af_0
cwlVersion: v1.1
baseCommand:
- platon
