class: CommandLineTool
id: checkm_unique.cwl
inputs:
- id: in_extension
  doc: 'extension of bins (all other files in bin directory are ignored) (default:
    fna)'
  type: Directory?
  inputBinding:
    prefix: --extension
- id: in_bin_dir
  doc: directory containing bins (fasta format)
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/checkm-genome:1.1.3--py_1
cwlVersion: v1.1
baseCommand:
- checkm
- unique
