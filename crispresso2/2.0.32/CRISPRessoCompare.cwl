class: CommandLineTool
id: CRISPRessoCompare.cwl
inputs:
- id: cris_presso_output_folder_1
  doc: First output folder with CRISPResso analysis
  type: string
  inputBinding:
    position: 0
- id: cris_presso_output_folder_2
  doc: Second output folder with CRISPResso analysis
  type: string
  inputBinding:
    position: 1
- id: comparison
  doc: 'two CRISPResso analyses-                     '
  type: string
  inputBinding:
    prefix: -Comparison
- id: min_frequency_alleles_around_cut_to_plot
  doc: 'Minimum % reads required to report an allele in the alleles table plot. (default:
    0.2)'
  type: long
  inputBinding:
    prefix: --min_frequency_alleles_around_cut_to_plot
- id: max_rows_alleles_around_cut_to_plot
  doc: 'Maximum number of rows to report in the alleles table plot. (default: 50)'
  type: long
  inputBinding:
    prefix: --max_rows_alleles_around_cut_to_plot
- id: suppress_report
  doc: 'Suppress output report (default: False)'
  type: boolean
  inputBinding:
    prefix: --suppress_report
- id: place_report_in_output_folder
  doc: 'If true, report will be written inside the CRISPResso output folder. By default,
    the report will be written one directory up from the report output. (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --place_report_in_output_folder
- id: debug
  doc: 'Show debug messages (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- CRISPRessoCompare
