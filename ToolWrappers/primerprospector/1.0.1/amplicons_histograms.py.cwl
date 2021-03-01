class: CommandLineTool
id: amplicons_histograms.py.cwl
inputs:
- id: in_verbose
  doc: "Print information during execution -- useful for\ndebugging [default: False]"
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_output_dir
  doc: "Specify output directory for amplicons and reads.\n[default: .]"
  type: Directory?
  inputBinding:
    prefix: --output_dir
- id: in_all_files
  doc: "Generate histograms for all files ending with\n_amplicons.fasta in the directory\
    \ specified with the\n-f parameter [default: False]"
  type: boolean?
  inputBinding:
    prefix: --all_files
- id: in_tax_a_map
  doc: "Filepath to taxonomy mapping file, used to separate\ngraphs according to domain.\
    \ [default: none]"
  type: File?
  inputBinding:
    prefix: --taxa_map
- id: in_amplicons_file_path
  doc: "Target amplicons files.  Separate multiple files with\na colon. [REQUIRED]\n"
  type: File?
  inputBinding:
    prefix: --amplicons_filepath
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: "Specify output directory for amplicons and reads.\n[default: .]"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_dir)
hints: []
cwlVersion: v1.1
baseCommand:
- amplicons_histograms.py
