class: CommandLineTool
id: slivar_ddc.cwl
inputs:
- id: in_chrom
  doc: "limit to this chromosome only. use '-3' for all chromosomes (in the case of\
    \ exome data) (default: chr15)"
  type: long
  inputBinding:
    prefix: --chrom
- id: in_info_fields
  doc: comma-delimited list of info fields
  type: string
  inputBinding:
    prefix: --info-fields
- id: in_fmt_fields
  doc: comma-delimited list of sample fields
  type: string
  inputBinding:
    prefix: --fmt-fields
- id: in_html
  doc: 'path to output file (default: slivar-ddc.html)'
  type: File
  inputBinding:
    prefix: --html
- id: in_vcf
  doc: ped
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_html
  doc: 'path to output file (default: slivar-ddc.html)'
  type: File
  outputBinding:
    glob: $(inputs.in_html)
cwlVersion: v1.1
baseCommand:
- slivar
- ddc
