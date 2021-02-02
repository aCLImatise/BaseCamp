class: CommandLineTool
id: show_snps.cwl
inputs:
- id: in_report_snps_alignments
  doc: "Do not report SNPs from alignments with an ambiguous\nmapping, i.e. only report\
    \ SNPs where the [R] and [Q]\ncolumns equal 0 and do not output these columns"
  type: boolean
  inputBinding:
    prefix: -C
- id: in_print_output_header
  doc: Do not print the output header
  type: boolean
  inputBinding:
    prefix: -H
- id: in_do_report_indels
  doc: Do not report indels
  type: boolean
  inputBinding:
    prefix: -I
- id: in_include_length_information
  doc: Include sequence length information in the output
  type: boolean
  inputBinding:
    prefix: -l
- id: in_sort_output_lines_query
  doc: Sort output lines by query IDs and SNP positions
  type: boolean
  inputBinding:
    prefix: -q
- id: in_sort_output_lines_reference
  doc: Sort output lines by reference IDs and SNP positions
  type: boolean
  inputBinding:
    prefix: -r
- id: in_specify_alignments_report
  doc: "Specify which alignments to report by passing\n'show-coords' lines to stdin"
  type: boolean
  inputBinding:
    prefix: -S
- id: in_switch_to_format
  doc: Switch to tab-delimited format
  type: boolean
  inputBinding:
    prefix: -T
- id: in_include_characters_surrounding
  doc: "Include x characters of surrounding SNP context in the\noutput, default 0"
  type: long
  inputBinding:
    prefix: -x
- id: in_delta_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- show-snps
