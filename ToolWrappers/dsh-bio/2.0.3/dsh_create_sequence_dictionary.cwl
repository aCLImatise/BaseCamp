class: CommandLineTool
id: dsh_create_sequence_dictionary.cwl
inputs:
- id: in_about
  doc: display about message [optional]
  type: boolean?
  inputBinding:
    prefix: --about
- id: in_input_fast_a_file
  doc: '[class java.io.File]  input FASTA file, default stdin [optional]'
  type: boolean?
  inputBinding:
    prefix: --input-fasta-file
- id: in_output_sequence_dictionary_file
  doc: '[class java.io.File]  output SequenceDictionary .dict file, default stdout
    [optional]'
  type: File?
  inputBinding:
    prefix: --output-sequence-dictionary-file
- id: in_args
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_sequence_dictionary_file
  doc: '[class java.io.File]  output SequenceDictionary .dict file, default stdout
    [optional]'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_sequence_dictionary_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dsh-bio:2.0.3--0
cwlVersion: v1.1
baseCommand:
- dsh-create-sequence-dictionary
