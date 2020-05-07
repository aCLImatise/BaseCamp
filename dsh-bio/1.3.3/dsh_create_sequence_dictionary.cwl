class: CommandLineTool
id: dsh_create_sequence_dictionary.cwl
inputs:
- id: about
  doc: display about message [optional]
  type: boolean
  inputBinding:
    prefix: --about
- id: input_fast_a_file
  doc: '[class java.io.File]  input FASTA file, default stdin [optional]'
  type: boolean
  inputBinding:
    prefix: --input-fasta-file
- id: output_sequence_dictionary_file
  doc: '[class java.io.File]  output SequenceDictionary .dict file, default stdout
    [optional]'
  type: boolean
  inputBinding:
    prefix: --output-sequence-dictionary-file
outputs: []
cwlVersion: v1.1
baseCommand:
- dsh-create-sequence-dictionary
