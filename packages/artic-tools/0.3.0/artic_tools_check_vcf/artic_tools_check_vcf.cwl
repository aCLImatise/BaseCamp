class: CommandLineTool
id: artic_tools_check_vcf.cwl
inputs:
- id: in_summary_out
  doc: "REQUIRED\nSummary of variant checks will be written here (TSV format)"
  type: string?
  inputBinding:
    prefix: --summaryOut
- id: in_vcf_out
  doc: If provided, will write variants that pass checks to this file
  type: File?
  inputBinding:
    prefix: --vcfOut
- id: in_min_qual
  doc: Minimum quality score to keep a variant (default = 10)
  type: double?
  inputBinding:
    prefix: --minQual
- id: in_vcf
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_scheme
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/artic-tools:0.3.0--hee4d88c_0
cwlVersion: v1.1
baseCommand:
- artic-tools
- check_vcf
