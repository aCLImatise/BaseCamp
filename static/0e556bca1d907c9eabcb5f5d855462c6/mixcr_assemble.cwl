class: CommandLineTool
id: mixcr_assemble.cwl
inputs:
- id: in_overwrite_if_required
  doc: "Overwrite output file if it is corrupted or if it was generated from\ndifferent\
    \ input file or with different parameters. -f / --force-overwrite\noverrides this\
    \ option."
  type: boolean?
  inputBinding:
    prefix: --overwrite-if-required
- id: in_verbose
  doc: Verbose warning messages.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_write_alignments
  doc: "If this option is specified, output file will be written in \"Clones &\nAlignments\"\
    \ format (*.clna), containing clones and all corresponding\nalignments. This file\
    \ then can be used to build wider contigs for clonal\nsequence and extract original\
    \ reads for each clone (if\n-OsaveOriginalReads=true was use on 'align' stage)."
  type: File?
  inputBinding:
    prefix: --write-alignments
- id: in_force_overwrite
  doc: Force overwrite of output file(s).
  type: File?
  inputBinding:
    prefix: --force-overwrite
- id: in_json_report
  doc: JSON formatted report file
  type: File?
  inputBinding:
    prefix: --json-report
- id: in_no_warnings
  doc: Suppress all warning messages.
  type: boolean?
  inputBinding:
    prefix: --no-warnings
- id: in_stringstring_overrides_default
  doc: <String=String>       Overrides default parameter values.
  type: boolean?
  inputBinding:
    prefix: -O
- id: in_parameters
  doc: Clone assembling parameters
  type: string?
  inputBinding:
    prefix: --parameters
- id: in_report
  doc: "Report file (human readable version, see -j / --json-report for machine\n\
    readable report)"
  type: File?
  inputBinding:
    prefix: --report
- id: in_threads
  doc: Processing threads
  type: string?
  inputBinding:
    prefix: --threads
- id: in_af
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -af
- id: in_scr
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_assemble
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_assembler_parameters_name
  doc: ''
  type: string?
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_write_alignments
  doc: "If this option is specified, output file will be written in \"Clones &\nAlignments\"\
    \ format (*.clna), containing clones and all corresponding\nalignments. This file\
    \ then can be used to build wider contigs for clonal\nsequence and extract original\
    \ reads for each clone (if\n-OsaveOriginalReads=true was use on 'align' stage)."
  type: File?
  outputBinding:
    glob: $(inputs.in_write_alignments)
- id: out_force_overwrite
  doc: Force overwrite of output file(s).
  type: File?
  outputBinding:
    glob: $(inputs.in_force_overwrite)
hints: []
cwlVersion: v1.1
baseCommand:
- mixcr
- assemble
