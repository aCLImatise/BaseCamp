class: CommandLineTool
id: check_aln_design_file.py.cwl
inputs:
- id: in_design
  doc: "Design file containing fq file names and sample ids\n[Required]"
  type: File?
  inputBinding:
    prefix: --design
- id: in_dups
  doc: File containing list of duplicate fqNames in design
  type: File?
  inputBinding:
    prefix: --dups
- id: in_l
  doc: ''
  type: File?
  inputBinding:
    prefix: -l
- id: in_file
  doc: -l LOGFILE, --logfile LOGFILE
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bayesase:21.1.13.1--py_0
cwlVersion: v1.1
baseCommand:
- check_aln_design_file.py
