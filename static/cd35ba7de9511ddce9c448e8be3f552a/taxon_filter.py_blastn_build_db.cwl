class: CommandLineTool
id: taxon_filter.py_blastn_build_db.cwl
inputs:
- id: in_output_file_prefix
  doc: "Prefix for the output file name (default: inputFasta\nname, sans \".fasta\"\
    \ extension)"
  type: File?
  inputBinding:
    prefix: --outputFilePrefix
- id: in_loglevel
  doc: 'Verboseness of output. [default: DEBUG]'
  type: string?
  inputBinding:
    prefix: --loglevel
- id: in_tmp_dir
  doc: 'Base directory for temp files. [default: /tmp]'
  type: Directory?
  inputBinding:
    prefix: --tmp_dir
- id: in_tmp_dir_keep
  doc: "Keep the tmp_dir if an exception occurs while running.\nDefault is to delete\
    \ all temp files at the end, even\nif there's a failure.\n"
  type: boolean?
  inputBinding:
    prefix: --tmp_dirKeep
- id: in_input_fast_a
  doc: Location of the input FASTA file
  type: string
  inputBinding:
    position: 0
- id: in_output_directory
  doc: Location for the output files
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_prefix
  doc: "Prefix for the output file name (default: inputFasta\nname, sans \".fasta\"\
    \ extension)"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file_prefix)
hints: []
cwlVersion: v1.1
baseCommand:
- taxon_filter.py
- blastn_build_db
