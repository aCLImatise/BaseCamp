class: CommandLineTool
id: CopomuS.py.cwl
inputs:
- id: in_query
  doc: The query sequence.
  type: string?
  inputBinding:
    prefix: --query
- id: in_target
  doc: The target sequence.
  type: string?
  inputBinding:
    prefix: --target
- id: in_qid_xpos_zero
  doc: 'The starting index for the query. (Default: 1)'
  type: long?
  inputBinding:
    prefix: --qIdxPos0
- id: in_tid_xpos_zero
  doc: 'The starting index for the target. (Default: 1)'
  type: long?
  inputBinding:
    prefix: --tIdxPos0
- id: in_measure
  doc: "Which measure to add to the output, can be used\nmultiple times. Output will\
    \ be sorted in order of\nmeasures specified. (Default: ['mfeCover', 'E',\n'minDeltaE'])"
  type: string?
  inputBinding:
    prefix: --measure
- id: in_candidate_selection
  doc: "Defines the method used to select candidate base\npairs. (Default: mfe)"
  type: string?
  inputBinding:
    prefix: --candidateSelection
- id: in_candidate_filter
  doc: "Filters candidate base pairs, can be used multiple\ntimes. (Default: [])"
  type: string?
  inputBinding:
    prefix: --candidateFilter
- id: in_generator
  doc: "Defines the method used for generating mutated\nsequences. (Default: flip)"
  type: string?
  inputBinding:
    prefix: --generator
- id: in_mutation_encoding
  doc: "Allows direct candidate selection by specifying a\nmutation encoding. Overwrites\
    \ options -s, -f, and -g"
  type: string?
  inputBinding:
    prefix: --mutationEncoding
- id: in_file_output_written
  doc: "[OUTPUT], --output [OUTPUT]\nWhich file the output should be written to. (Default:\n\
    STDOUT)"
  type: File?
  inputBinding:
    prefix: -o
- id: in_delimiter
  doc: "Defines the delimiter used to separate columns in the\noutput, default tab.\
    \ (Default: \\t)"
  type: string?
  inputBinding:
    prefix: --delimiter
- id: in_parameter_file
  doc: "Optional parameter file for IntaRNA to provide further\nparameters and prediction\
    \ constraints."
  type: File?
  inputBinding:
    prefix: --parameterFile
- id: in_threads
  doc: Threads used for IntaRNA call
  type: string?
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_file_output_written
  doc: "[OUTPUT], --output [OUTPUT]\nWhich file the output should be written to. (Default:\n\
    STDOUT)"
  type: File?
  outputBinding:
    glob: $(inputs.in_file_output_written)
hints: []
cwlVersion: v1.1
baseCommand:
- CopomuS.py
