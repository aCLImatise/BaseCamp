class: CommandLineTool
id: iu_compute_qual_dicts_from_fastq.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/illumina-utils:2.11--py_0
cwlVersion: v1.1
baseCommand:
- iu-compute-qual-dicts-from-fastq
