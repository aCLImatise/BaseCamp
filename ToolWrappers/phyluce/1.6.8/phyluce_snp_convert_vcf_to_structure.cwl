class: CommandLineTool
id: phyluce_snp_convert_vcf_to_structure.cwl
inputs:
- id: in_input
  doc: The VCF file to process
  type: File?
  inputBinding:
    prefix: --input
- id: in_output
  doc: The STRUCTURE file to write
  type: File?
  inputBinding:
    prefix: --output
- id: in_filter_identical
  doc: Remove sites with only a single genotype.
  type: boolean?
  inputBinding:
    prefix: --filter-identical
- id: in_filter_informative
  doc: Remove uninformative sites.
  type: boolean?
  inputBinding:
    prefix: --filter-informative
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- phyluce_snp_convert_vcf_to_structure
