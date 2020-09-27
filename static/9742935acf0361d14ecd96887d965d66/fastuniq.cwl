class: CommandLineTool
id: fastuniq.cwl
inputs:
- id: in_input_file_list
  doc: ": The input file list of paired FSATQ sequence files [FILE IN]\nMaximum 1000\
    \ pairs"
  type: boolean
  inputBinding:
    prefix: -i
- id: in_output_sequence_format
  doc: ": Output sequence format [q/f/p]\nq : FASTQ format into TWO output files\n\
    f : FASTA format into TWO output files\np : FASTA format into ONE output file\n\
    default = q"
  type: File
  inputBinding:
    prefix: -t
- id: in_first_output_file
  doc: ': The first output file [FILE OUT]'
  type: File
  inputBinding:
    prefix: -o
- id: in_second_output_file
  doc: ": The second output file [FILE OUT]\nOptional. ONLY required when output sequence\
    \ format(-t) is specify as\n[q] or [f]."
  type: File
  inputBinding:
    prefix: -p
- id: in_types_sequence_descriptions
  doc: ": Types of sequence descriptions for output [0/1]\n0 : The raw descriptions\n\
    1 : New serial numbers assigned by FastUniq\ndefault = 0"
  type: boolean
  inputBinding:
    prefix: -c
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_sequence_format
  doc: ": Output sequence format [q/f/p]\nq : FASTQ format into TWO output files\n\
    f : FASTA format into TWO output files\np : FASTA format into ONE output file\n\
    default = q"
  type: File
  outputBinding:
    glob: $(inputs.in_output_sequence_format)
- id: out_first_output_file
  doc: ': The first output file [FILE OUT]'
  type: File
  outputBinding:
    glob: $(inputs.in_first_output_file)
- id: out_second_output_file
  doc: ": The second output file [FILE OUT]\nOptional. ONLY required when output sequence\
    \ format(-t) is specify as\n[q] or [f]."
  type: File
  outputBinding:
    glob: $(inputs.in_second_output_file)
cwlVersion: v1.1
baseCommand:
- fastuniq
