class: CommandLineTool
id: refgenie_getseq.cwl
inputs:
- id: in_genome_config
  doc: "Path to local genome configuration file. Optional if REFGENIE\nenvironment\
    \ variable is set."
  type: File?
  inputBinding:
    prefix: --genome-config
- id: in_skip_read_lock
  doc: Whether the config file should not be locked for reading
  type: boolean?
  inputBinding:
    prefix: --skip-read-lock
- id: in_genome
  doc: Reference assembly ID, e.g. mm10.
  type: long?
  inputBinding:
    prefix: --genome
- id: in_locus
  doc: Coordinates of desired sequence; e.g. 'chr1:50000-50200'.
  type: long?
  inputBinding:
    prefix: --locus
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/refgenie:0.10.0--py_0
cwlVersion: v1.1
baseCommand:
- refgenie
- getseq
