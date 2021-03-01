class: CommandLineTool
id: check_sam_present.py.cwl
inputs:
- id: in_fq
  doc: Name of the fq file]
  type: File?
  inputBinding:
    prefix: --fq
- id: in_aln_type
  doc: "Input SE for single end or PE for paired end\nalignments [Default = SE]"
  type: string?
  inputBinding:
    prefix: --alnType
- id: in_sam_one
  doc: "sam file used in sam compare script, aligned to G1\n[Required]"
  type: long?
  inputBinding:
    prefix: --sam1
- id: in_sam_two
  doc: "sam file used in sam compare script, aligned to G2\n[Required]"
  type: long?
  inputBinding:
    prefix: --sam2
- id: in_out
  doc: "Output file containing info on whether each fq file\nhas 2 sam files [Required]\n"
  type: File?
  inputBinding:
    prefix: --out
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "Output file containing info on whether each fq file\nhas 2 sam files [Required]\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bayesase:21.1.13.1--py_0
cwlVersion: v1.1
baseCommand:
- check_sam_present.py
