class: CommandLineTool
id: BASIC.py.cwl
inputs:
- id: in_type_receptor_defaultbcr
  doc: "Type of receptor. Choices: \"BCR\" or \"TCR\" (default:\nBCR)"
  type: string?
  inputBinding:
    prefix: -i
- id: in_launch_threads_run
  doc: "Launch p > 2 threads that will run on separate\nprocessors/cores (default:\
    \ 2)"
  type: long?
  inputBinding:
    prefix: -p
- id: in_name_output_file
  doc: "Name of output file. Note: a \".fasta\" extension will\nbe added (default:\
    \ result.fasta)"
  type: File?
  inputBinding:
    prefix: -n
- id: in_se
  doc: "Single end FASTQ file (optionally gzipped). (example:\nse.fastq)"
  type: File?
  inputBinding:
    prefix: -SE
- id: in_pe_one
  doc: Paired end (left) FASTQ file (optionally gzipped).
  type: long?
  inputBinding:
    prefix: -PE_1
- id: in_options_default_human
  doc: "Options: \"human\" or \"mouse\" (default: human). Note:\nother species are\
    \ possible by adding the appropriate\nBowtie2 indices and following the existing\
    \ db/\ndirectory structure"
  type: Directory?
  inputBinding:
    prefix: -g
- id: in_absolute_path_bowtie
  doc: "Absolute path to bowtie2 executable or directory\ncontaining it"
  type: File?
  inputBinding:
    prefix: -b
- id: in_path_directory_writing
  doc: "Path to directory for writing intermediate files.\n(default: current working\
    \ directory)"
  type: File?
  inputBinding:
    prefix: -t
- id: in_output_directory_default
  doc: 'Output directory (default: current working directory)'
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_allow_ie_terminateif
  doc: "Allow for partial reconstruction i.e. do not terminate\nif one or both chains\
    \ do not assemble."
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_turns_verbosity_more
  doc: Turns on verbosity for more details.
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_path_database_defaults
  doc: "Path to database directory. Defaults to <path of\nBASIC.py>/db"
  type: File?
  inputBinding:
    prefix: -d
- id: in_subsample
  doc: "Use the first <int> number of reads of the input.\nDefault: no limit"
  type: long?
  inputBinding:
    prefix: --subsample
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_name_output_file
  doc: "Name of output file. Note: a \".fasta\" extension will\nbe added (default:\
    \ result.fasta)"
  type: File?
  outputBinding:
    glob: $(inputs.in_name_output_file)
- id: out_output_directory_default
  doc: 'Output directory (default: current working directory)'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory_default)
hints: []
cwlVersion: v1.1
baseCommand:
- BASIC.py
