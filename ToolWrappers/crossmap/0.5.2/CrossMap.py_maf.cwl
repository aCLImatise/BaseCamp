class: CommandLineTool
id: CrossMap.py_maf.cwl
inputs:
- id: in_crossmap_do_tpy
  doc: maf       hg19ToHg38.over.chain.gz  test.hg19.maf  hg38.fa  GRCh38
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/crossmap:0.5.2--pyh7b7c402_0
cwlVersion: v1.1
baseCommand:
- CrossMap.py
- maf
