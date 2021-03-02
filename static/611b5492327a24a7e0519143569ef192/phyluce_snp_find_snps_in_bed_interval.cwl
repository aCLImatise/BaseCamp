class: CommandLineTool
id: phyluce_snp_find_snps_in_bed_interval.cwl
inputs:
- id: in_uce
  doc: The UCE BED file
  type: File?
  inputBinding:
    prefix: --uce
- id: in_snp
  doc: The SNP intersection BED file
  type: File?
  inputBinding:
    prefix: --snp
- id: in_output
  doc: The output file
  type: File?
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: The output file
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- phyluce_snp_find_snps_in_bed_interval
