class: CommandLineTool
id: check_samcomp_lost_reads.py.cwl
inputs:
- id: in_summary_one
  doc: "The sam summary file containing read counts after\ndropping [Required]"
  type: long?
  inputBinding:
    prefix: --summary1
- id: in_summary_two
  doc: "The sam summary file containing read counts after\ndropping [Required]"
  type: long?
  inputBinding:
    prefix: --summary2
- id: in_ase_names
  doc: fastq filename [Required]
  type: File?
  inputBinding:
    prefix: --ase_names
- id: in_ase
  doc: "ASE totals file with read counts generated from sam\ncompare script [Required]"
  type: File?
  inputBinding:
    prefix: --ase
- id: in_out
  doc: Output file containing check info [Required]
  type: File?
  inputBinding:
    prefix: --out
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Output file containing check info [Required]
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bayesase:21.1.13.1--py_0
cwlVersion: v1.1
baseCommand:
- check_samcomp_lost_reads.py
