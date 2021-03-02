class: CommandLineTool
id: CAT_add_names.cwl
inputs:
- id: in_input_file
  doc: "Path to input file. Can be either classification\noutput file or ORF2LCA output\
    \ file."
  type: boolean?
  inputBinding:
    prefix: --input_file
- id: in_output_file
  doc: Path to output file.
  type: File?
  inputBinding:
    prefix: --output_file
- id: in_taxonomy_folder
  doc: Path to folder that contains taxonomy files.
  type: boolean?
  inputBinding:
    prefix: --taxonomy_folder
- id: in_only_official
  doc: "Only output official rank names (i.e., superkingdom,\nphylum, class, order,\
    \ family, genus, species)."
  type: boolean?
  inputBinding:
    prefix: --only_official
- id: in_exclude_scores
  doc: "Do not include bit-score support scores in the lineage\nof a classification\
    \ output file."
  type: File?
  inputBinding:
    prefix: --exclude_scores
- id: in_force
  doc: Force overwrite existing files.
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_quiet
  doc: Suppress verbosity.
  type: boolean?
  inputBinding:
    prefix: --quiet
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: Path to output file.
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
- id: out_exclude_scores
  doc: "Do not include bit-score support scores in the lineage\nof a classification\
    \ output file."
  type: File?
  outputBinding:
    glob: $(inputs.in_exclude_scores)
hints: []
cwlVersion: v1.1
baseCommand:
- CAT
- add_names
