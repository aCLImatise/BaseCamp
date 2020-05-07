class: CommandLineTool
id: ReadSeq_random_sample.cwl
inputs:
- id: num_selection
  doc: number of sequence to select for each sample. Default is the smallest sample
    size. Limit to the default value.
  type: string
  inputBinding:
    prefix: --num-selection
- id: subregion_length
  doc: If specified, radomly choose a subregion with the required length from the
    sequence.  If a selected sequence is shorter than the specified length, that sequence
    will not be included in the output,  which may result in not equal number of sequences
    in some samples.
  type: string
  inputBinding:
    prefix: --subregion_length
outputs: []
cwlVersion: v1.1
baseCommand:
- ReadSeq
- random-sample
