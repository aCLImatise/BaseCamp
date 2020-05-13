class: CommandLineTool
id: bamPEFragmentSize.cwl
inputs:
- id: table
  doc: In addition to printing read and fragment length metrics to the screen, write
    them to the given file in tabular format.
  type: File
  inputBinding:
    prefix: --table
- id: out_raw_fragment_lengths
  doc: Save the fragment (or read if the input is single-end) length and their associated
    number of occurrences to a tab-separated file. Columns are length, number of occurrences,
    and the sample label.
  type: File
  inputBinding:
    prefix: --outRawFragmentLengths
- id: verbose
  doc: Set if processing data messages are wanted.
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- bamPEFragmentSize
