class: CommandLineTool
id: CRISPRessoCompare.cwl
inputs:
- id: in_comparison
  doc: two CRISPResso analyses-
  type: string?
  inputBinding:
    prefix: -Comparison
- id: in_name
  doc: 'Output name (default: )'
  type: string?
  inputBinding:
    prefix: --name
- id: in_sample_one_name
  doc: 'Sample 1 name (default: None)'
  type: long?
  inputBinding:
    prefix: --sample_1_name
- id: in_sample_two_name
  doc: 'Sample 2 name (default: None)'
  type: long?
  inputBinding:
    prefix: --sample_2_name
- id: in_min_frequency_alleles_around_cut_to_plot
  doc: "Minimum % reads required to report an allele in the\nalleles table plot. (default:\
    \ 0.2)"
  type: Directory?
  inputBinding:
    prefix: --min_frequency_alleles_around_cut_to_plot
- id: in_max_rows_alleles_around_cut_to_plot
  doc: "Maximum number of rows to report in the alleles table\nplot. (default: 50)"
  type: long?
  inputBinding:
    prefix: --max_rows_alleles_around_cut_to_plot
- id: in_suppress_report
  doc: 'Suppress output report (default: False)'
  type: boolean?
  inputBinding:
    prefix: --suppress_report
- id: in_place_report_in_output_folder
  doc: "If true, report will be written inside the CRISPResso\noutput folder. By default,\
    \ the report will be written\none directory up from the report output. (default:\n\
    False)"
  type: Directory?
  inputBinding:
    prefix: --place_report_in_output_folder
- id: in_debug
  doc: 'Show debug messages (default: False)'
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_cris_presso_output_folder_one
  doc: First output folder with CRISPResso analysis
  type: long
  inputBinding:
    position: 0
- id: in_cris_presso_output_folder_two
  doc: Second output folder with CRISPResso analysis
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_min_frequency_alleles_around_cut_to_plot
  doc: "Minimum % reads required to report an allele in the\nalleles table plot. (default:\
    \ 0.2)"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_min_frequency_alleles_around_cut_to_plot)
- id: out_place_report_in_output_folder
  doc: "If true, report will be written inside the CRISPResso\noutput folder. By default,\
    \ the report will be written\none directory up from the report output. (default:\n\
    False)"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_place_report_in_output_folder)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/crispresso2:2.1.0--py27h3dcb392_0
cwlVersion: v1.1
baseCommand:
- CRISPRessoCompare
