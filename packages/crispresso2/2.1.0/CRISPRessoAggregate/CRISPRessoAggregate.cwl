class: CommandLineTool
id: CRISPRessoAggregate.cwl
inputs:
- id: in_aggregation
  doc: CRISPResso Run Data-
  type: string?
  inputBinding:
    prefix: -Aggregation
- id: in_prefix
  doc: "Prefix for CRISPResso folders to aggregate (may be\nspecified multiple times)"
  type: string?
  inputBinding:
    prefix: --prefix
- id: in_suffix
  doc: Suffix for CRISPResso folders to aggregate
  type: string?
  inputBinding:
    prefix: --suffix
- id: in_name
  doc: Output name of the report
  type: string?
  inputBinding:
    prefix: --name
- id: in_min_reads_for_inclusion
  doc: "Minimum number of reads for a run to be included in\nthe run summary"
  type: long?
  inputBinding:
    prefix: --min_reads_for_inclusion
- id: in_place_report_in_output_folder
  doc: "If true, report will be written inside the CRISPResso\noutput folder. By default,\
    \ the report will be written\none directory up from the report output."
  type: Directory?
  inputBinding:
    prefix: --place_report_in_output_folder
- id: in_suppress_report
  doc: Suppress output report
  type: boolean?
  inputBinding:
    prefix: --suppress_report
- id: in_suppress_plots
  doc: Suppress output plots
  type: boolean?
  inputBinding:
    prefix: --suppress_plots
- id: in_debug
  doc: Show debug messages
  type: boolean?
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_place_report_in_output_folder
  doc: "If true, report will be written inside the CRISPResso\noutput folder. By default,\
    \ the report will be written\none directory up from the report output."
  type: Directory?
  outputBinding:
    glob: $(inputs.in_place_report_in_output_folder)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/crispresso2:2.1.0--py27h3dcb392_0
cwlVersion: v1.1
baseCommand:
- CRISPRessoAggregate
