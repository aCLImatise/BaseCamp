class: CommandLineTool
id: gdtools_GD2GVF.cwl
inputs:
- id: in_reference
  doc: File containing reference sequences in GenBank, GFF3, or FASTA format. Option
    may be provided multiple times for multiple files (REQUIRED)
  type: File?
  inputBinding:
    prefix: --reference
- id: in_output
  doc: name of output file (DEFAULT=output.gvf)
  type: File?
  inputBinding:
    prefix: --output
- id: in_snv_only
  doc: only include SNP/SNV entries in output
  type: boolean?
  inputBinding:
    prefix: --snv-only
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: name of output file (DEFAULT=output.gvf)
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/breseq:0.35.5--h8b12597_0
cwlVersion: v1.1
baseCommand:
- gdtools
- GD2GVF
