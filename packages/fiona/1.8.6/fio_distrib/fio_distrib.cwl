class: CommandLineTool
id: fio_distrib.cwl
inputs:
- id: in_no_rs
  doc: "Use RS (0x1E) as a prefix for individual texts in a sequence\nas per http://tools.ietf.org/html/draft-ietf-json-text-\n\
    sequence-13 (default is False)."
  type: boolean?
  inputBinding:
    prefix: --no-rs
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/fiona:1.8.6
cwlVersion: v1.1
baseCommand:
- fio
- distrib
