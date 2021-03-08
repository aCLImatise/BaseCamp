class: CommandLineTool
id: mmseqs_convert2fasta.cwl
inputs:
- id: in_use_header_file
  doc: use the sequence header DB instead of the body to map the entry keys [0]
  type: boolean?
  inputBinding:
    prefix: --use-header-file
- id: in_verbosity_level_errors
  doc: 'Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]'
  type: long?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0
cwlVersion: v1.1
baseCommand:
- mmseqs
- convert2fasta
