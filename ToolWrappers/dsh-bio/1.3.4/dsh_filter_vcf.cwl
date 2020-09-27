class: CommandLineTool
id: dsh_filter_vcf.cwl
inputs:
- id: in_about
  doc: display about message [optional]
  type: boolean
  inputBinding:
    prefix: --about
- id: in_id
  doc: '[java.util.List<java.lang.String>]  filter by id, specify as id1,id2,id3 [optional]'
  type: boolean
  inputBinding:
    prefix: --id
- id: in_range
  doc: '[class java.lang.String]  filter by range, specify as chrom:start-end in 0-based
    coordindates [optional]'
  type: boolean
  inputBinding:
    prefix: --range
- id: in_qual
  doc: '[class java.lang.Double]  filter by quality score [optional]'
  type: boolean
  inputBinding:
    prefix: --qual
- id: in_filter
  doc: filter to records that have passed all filters [optional]
  type: boolean
  inputBinding:
    prefix: --filter
- id: in_script
  doc: '[class java.lang.String]  filter by script, eval against r [optional]'
  type: boolean
  inputBinding:
    prefix: --script
- id: in_input_vcf_file
  doc: '[class java.io.File]  input VCF file, default stdin [optional]'
  type: boolean
  inputBinding:
    prefix: --input-vcf-file
- id: in_output_vcf_file
  doc: '[class java.io.File]  output VCF file, default stdout [optional]'
  type: File
  inputBinding:
    prefix: --output-vcf-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_vcf_file
  doc: '[class java.io.File]  output VCF file, default stdout [optional]'
  type: File
  outputBinding:
    glob: $(inputs.in_output_vcf_file)
cwlVersion: v1.1
baseCommand:
- dsh-filter-vcf
