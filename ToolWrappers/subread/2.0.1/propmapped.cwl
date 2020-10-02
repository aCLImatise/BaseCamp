class: CommandLineTool
id: propmapped.cwl
inputs:
- id: in_input_file_containing
  doc: "An input file containing read mapping results. Both SAM or BAM\nformats are\
    \ supported."
  type: File
  inputBinding:
    prefix: -i
- id: in_name_output_file
  doc: Name of output file including mapping statistics.
  type: File
  inputBinding:
    prefix: -o
- id: in_specified_fragments_read
  doc: "If specified, fragments (read pairs) will be counted instead of\nindividual\
    \ reads. This option is only applicable for paired-end\nreads."
  type: boolean
  inputBinding:
    prefix: -f
- id: in_specified_only_properly
  doc: "If specified, only properly paired reads will be counted. This\noption is\
    \ only applicable for paired-end reads.\n"
  type: boolean
  inputBinding:
    prefix: -p
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_name_output_file
  doc: Name of output file including mapping statistics.
  type: File
  outputBinding:
    glob: $(inputs.in_name_output_file)
cwlVersion: v1.1
baseCommand:
- propmapped
