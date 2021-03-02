class: CommandLineTool
id: strip_it.cwl
inputs:
- id: in_input
  doc: "Specifies the file containing the input molecules. The format of the\nfile\
    \ is specified by its file extension or by the --inputFormat option.\nGzipped\
    \ files are also read."
  type: File?
  inputBinding:
    prefix: --input
- id: in_output
  doc: "Specifies the file to which the extracted scaffolds are written.\nThe file\
    \ is a text file with on each row the original molecule\nand the generated scaffolds\
    \ in SMILES format. If this option is\nnot provided, then all scaffolds are written\
    \ to standard output."
  type: File?
  inputBinding:
    prefix: --output
- id: in_input_format
  doc: "Specifies the input file format. If not provided then the format\nis determined\
    \ from the file extension."
  type: File?
  inputBinding:
    prefix: --inputFormat
- id: in_scaffolds
  doc: "Specifies the file in which the required scaffolds have been defined.\nIf\
    \ not provided then all scaffolds are calculated."
  type: File?
  inputBinding:
    prefix: --scaffolds
- id: in_no_log
  doc: Suppresses the output of additional information to standard error.
  type: boolean?
  inputBinding:
    prefix: --noLog
- id: in_noheader
  doc: Suppresses the header line in the output.
  type: boolean?
  inputBinding:
    prefix: --noHeader
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Specifies the file to which the extracted scaffolds are written.\nThe file\
    \ is a text file with on each row the original molecule\nand the generated scaffolds\
    \ in SMILES format. If this option is\nnot provided, then all scaffolds are written\
    \ to standard output."
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- strip-it
