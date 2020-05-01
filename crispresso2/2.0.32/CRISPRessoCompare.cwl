#!/usr/bin/env cwl-runner

baseCommand:
- CRISPRessoCompare
class: CommandLineTool
cwlVersion: v1.0
id: crispressocompare
inputs:
- doc: First output folder with CRISPResso analysis
  id: cris_presso_output_folder_1
  inputBinding:
    position: 0
  type: string
- doc: Second output folder with CRISPResso analysis
  id: cris_presso_output_folder_2
  inputBinding:
    position: 1
  type: string
- doc: 'two CRISPResso analyses-                     '
  id: comparison
  inputBinding:
    prefix: -Comparison
  type: string
- doc: 'Minimum % reads required to report an allele in the alleles table plot. (default:
    0.2)'
  id: min_frequency_alleles_around_cut_to_plot
  inputBinding:
    prefix: --min_frequency_alleles_around_cut_to_plot
  type: long
- doc: 'Maximum number of rows to report in the alleles table plot. (default: 50)'
  id: max_rows_alleles_around_cut_to_plot
  inputBinding:
    prefix: --max_rows_alleles_around_cut_to_plot
  type: long
- doc: 'Suppress output report (default: False)'
  id: suppress_report
  inputBinding:
    prefix: --suppress_report
  type: boolean
- doc: 'If true, report will be written inside the CRISPResso output folder. By default,
    the report will be written one directory up from the report output. (default:
    False)'
  id: place_report_in_output_folder
  inputBinding:
    prefix: --place_report_in_output_folder
  type: boolean
- doc: 'Show debug messages (default: False)'
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
