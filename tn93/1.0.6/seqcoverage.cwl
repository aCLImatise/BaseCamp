class: CommandLineTool
id: ../../../seqcoverage.cwl
inputs:
- id: direct_output_json
  doc: direct the output JSON to a file named OUTPUT (default=stdout)
  type: string
  inputBinding:
    prefix: -o
- id: handle_ambigous_characters
  doc: 'handle ambigous characters using one of the following strategies (default=skipover)
    average: average ambiguities (e.g. a nucleotide R adds 0.5 to A and G coverage
    for that position); ignore: ambiguities contribute nothing to coverage counts;'
  type: string
  inputBinding:
    prefix: -a
- id: type_data_expected
  doc: 'the type of data expected (default=DEFAULT_FORMAT) dna: DNA or RNA (IUPAC);
    protein : protein (IUPAC);'
  type: string
  inputBinding:
    prefix: -t
- id: sequence_name_form
  doc: "if sequence name is of the form 'somethingCOUNTS_IN_NAMEinteger' then treat\
    \ the integer as a copy number when computing coverages (a character, default=COUNTS_IN_NAME):"
  type: string
  inputBinding:
    prefix: -d
- id: report_progress_updates
  doc: 'do not report progress updates and other diagnostics to stderr '
  type: boolean
  inputBinding:
    prefix: -q
outputs: []
cwlVersion: v1.1
baseCommand:
- seqcoverage
