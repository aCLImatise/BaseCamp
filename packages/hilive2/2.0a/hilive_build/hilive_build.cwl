class: CommandLineTool
id: hilive_build.cwl
inputs:
- id: in_print_licensing_information
  doc: '[ --license ]         Print licensing information and exit'
  type: boolean
  inputBinding:
    prefix: -l
- id: in_arg_reference_genomes
  doc: "[ --input ] arg       Reference genome(s) in (multi-)FASTA format.\n[REQUIRED]"
  type: boolean
  inputBinding:
    prefix: -i
- id: in_arg_output_file
  doc: "[ --out-prefix ] arg  Output file prefix. Several files with the same\nprefix\
    \ will be created. [REQUIRED]"
  type: File
  inputBinding:
    prefix: -o
- id: in_do_not_convert_spaces
  doc: "Do not convert all spaces in reference ids to\nunderscores [Default: converting\
    \ is on]"
  type: boolean
  inputBinding:
    prefix: --do-not-convert-spaces
- id: in_trim_after_space
  doc: "Trim all reference ids after first space [Default:\nfalse]\n"
  type: boolean
  inputBinding:
    prefix: --trim-after-space
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_output_file
  doc: "[ --out-prefix ] arg  Output file prefix. Several files with the same\nprefix\
    \ will be created. [REQUIRED]"
  type: File
  outputBinding:
    glob: $(inputs.in_arg_output_file)
cwlVersion: v1.1
baseCommand:
- hilive-build
