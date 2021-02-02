class: CommandLineTool
id: whatshap_hapcut2vcf.cwl
inputs:
- id: in_output
  doc: "Output VCF file. If omitted, use standard output.\n"
  type: File
  inputBinding:
    prefix: --output
- id: in_vcf
  doc: VCF file
  type: string
  inputBinding:
    position: 0
- id: in_hap_cut_result
  doc: hapCUT result file
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output VCF file. If omitted, use standard output.\n"
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- whatshap
- hapcut2vcf
