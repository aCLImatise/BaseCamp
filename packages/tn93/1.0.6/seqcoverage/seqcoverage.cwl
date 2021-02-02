class: CommandLineTool
id: ../../../seqcoverage.cwl
inputs:
- id: in_direct_output_json
  doc: direct the output JSON to a file named OUTPUT (default=stdout)
  type: File
  inputBinding:
    prefix: -o
- id: in_handle_ambigous_characters
  doc: "handle ambigous characters using one of the following strategies (default=skipover)\n\
    average: average ambiguities (e.g. a nucleotide R adds 0.5 to A and G coverage\
    \ for that position);\nignore: ambiguities contribute nothing to coverage counts;"
  type: double
  inputBinding:
    prefix: -a
- id: in_type_expected_defaultdefaultformatdna
  doc: "the type of data expected (default=DEFAULT_FORMAT)\ndna: DNA or RNA (IUPAC);\n\
    protein : protein (IUPAC);"
  type: string
  inputBinding:
    prefix: -t
- id: in_sequence_name_form
  doc: "if sequence name is of the form 'somethingCOUNTS_IN_NAMEinteger' then treat\
    \ the integer as a copy number\nwhen computing coverages (a character, default=COUNTS_IN_NAME):"
  type: long
  inputBinding:
    prefix: -d
- id: in_report_progress_updates
  doc: do not report progress updates and other diagnostics to stderr
  type: boolean
  inputBinding:
    prefix: -q
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_direct_output_json
  doc: direct the output JSON to a file named OUTPUT (default=stdout)
  type: File
  outputBinding:
    glob: $(inputs.in_direct_output_json)
cwlVersion: v1.1
baseCommand:
- seqcoverage
