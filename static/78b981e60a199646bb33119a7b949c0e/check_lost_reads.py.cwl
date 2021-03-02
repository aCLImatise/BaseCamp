class: CommandLineTool
id: check_lost_reads.py.cwl
inputs:
- id: in_aln_sumone
  doc: "The G1 alignment summary file containing all read\ntypes [Required]"
  type: long?
  inputBinding:
    prefix: --alnSum1
- id: in_aln_sum_two
  doc: "The G2 alignment summary file containing all read\ntypes [Required]"
  type: long?
  inputBinding:
    prefix: --alnSum2
- id: in_fq
  doc: FQ file used in alignment [Required]
  type: File?
  inputBinding:
    prefix: --fq
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
- check_lost_reads.py
