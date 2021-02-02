class: CommandLineTool
id: combineKmers.cwl
inputs:
- id: in_arg_file_tab
  doc: '[ --samples ] arg    file with tab separated sample name and kmer file'
  type: boolean
  inputBinding:
    prefix: -r
- id: in_arg_output_file
  doc: '[ --output ] arg     output file prefix'
  type: File
  inputBinding:
    prefix: -o
- id: in_min_samples
  doc: (=1)  minimum number of samples kmer must occur in to be
  type: long
  inputBinding:
    prefix: --min_samples
- id: in_printed
  doc: -h [ --help ]           full help message
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_output_file
  doc: '[ --output ] arg     output file prefix'
  type: File
  outputBinding:
    glob: $(inputs.in_arg_output_file)
cwlVersion: v1.1
baseCommand:
- combineKmers
