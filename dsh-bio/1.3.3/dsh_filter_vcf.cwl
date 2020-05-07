class: CommandLineTool
id: dsh_filter_vcf.cwl
inputs:
- id: about
  doc: display about message [optional]
  type: boolean
  inputBinding:
    prefix: --about
- id: id
  doc: '[java.util.List<java.lang.String>]  filter by id, specify as id1,id2,id3 [optional]'
  type: boolean
  inputBinding:
    prefix: --id
- id: range
  doc: '[class java.lang.String]  filter by range, specify as chrom:start-end in 0-based
    coordindates [optional]'
  type: boolean
  inputBinding:
    prefix: --range
- id: qual
  doc: '[class java.lang.Double]  filter by quality score [optional]'
  type: boolean
  inputBinding:
    prefix: --qual
- id: filter
  doc: filter to records that have passed all filters [optional]
  type: boolean
  inputBinding:
    prefix: --filter
- id: script
  doc: '[class java.lang.String]  filter by script, eval against r [optional]'
  type: boolean
  inputBinding:
    prefix: --script
- id: input_vcf_file
  doc: '[class java.io.File]  input VCF file, default stdin [optional]'
  type: boolean
  inputBinding:
    prefix: --input-vcf-file
- id: output_vcf_file
  doc: '[class java.io.File]  output VCF file, default stdout [optional]'
  type: boolean
  inputBinding:
    prefix: --output-vcf-file
outputs: []
cwlVersion: v1.1
baseCommand:
- dsh-filter-vcf
