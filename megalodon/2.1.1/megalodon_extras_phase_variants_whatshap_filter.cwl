class: CommandLineTool
id: ../../../megalodon_extras_phase_variants_whatshap_filter.cwl
inputs:
- id: in_filtered_records
  doc: "File to output filtered records.\n"
  type: File
  inputBinding:
    prefix: --filtered-records
- id: in_in_vcf
  doc: Megalodon VCF file
  type: string
  inputBinding:
    position: 0
- id: in_out_vcf
  doc: Output VCF file
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_filtered_records
  doc: "File to output filtered records.\n"
  type: File
  outputBinding:
    glob: $(inputs.in_filtered_records)
cwlVersion: v1.1
baseCommand:
- megalodon_extras
- phase_variants
- whatshap_filter
