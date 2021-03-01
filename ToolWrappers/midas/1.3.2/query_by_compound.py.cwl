class: CommandLineTool
id: query_by_compound.py.cwl
inputs:
- id: in_input_sample_directories
  doc: "Input to sample directories output by run_midas.py\nCan be a list of directories,\
    \ a directory containing all samples, or a file with paths\nSee '-t' for details"
  type: File?
  inputBinding:
    prefix: -i
- id: in_list_i_commaseparated
  doc: "list: -i is a comma-separated list (ex: /path/to/samples/sample_1,/path/to/samples/sample_2)\n\
    dir: -i is a directory containing all samples (ex: /path/to/samples)\nfile: -i\
    \ is a file containing paths to sample directories (ex: /path/to/sample_paths.txt)"
  type: string?
  inputBinding:
    prefix: -t
- id: in_path_output_file
  doc: Path to output file (/dev/stdout)
  type: File?
  inputBinding:
    prefix: -o
- id: in_path_midas_reference
  doc: "Path to MIDAS reference database\nBy default, the MIDAS_DB environmental variable\
    \ is used"
  type: File?
  inputBinding:
    prefix: -d
- id: in_kegg_compound_identifier
  doc: KEGG Compound identifier
  type: string?
  inputBinding:
    prefix: -c
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_path_output_file
  doc: Path to output file (/dev/stdout)
  type: File?
  outputBinding:
    glob: $(inputs.in_path_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- query_by_compound.py
