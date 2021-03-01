class: CommandLineTool
id: blastclust.cwl
inputs:
- id: in_fasta_input_file
  doc: "FASTA input file (program will format the database and remove files in the\
    \ end) [File In]\ndefault = stdin"
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_number_use_default
  doc: "Number of CPU's to use [Integer]\ndefault = 1"
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_output_file_list
  doc: "Output file for list of clusters [File Out]\ndefault = stdout"
  type: File?
  inputBinding:
    prefix: -o
- id: in_length_coverage_threshold
  doc: "Length coverage threshold [Real]\ndefault = 0.9"
  type: boolean?
  inputBinding:
    prefix: -L
- id: in_score_coverage_threshold
  doc: "Score coverage threshold (bit score / length if < 3.0, percentage of identities\
    \ otherwise) [Real]\ndefault = 1.75"
  type: boolean?
  inputBinding:
    prefix: -S
- id: in_require_coverage_neighbours
  doc: "Require coverage on both neighbours? [T/F]\ndefault = TRUE"
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_file_save_neighbours
  doc: File to save all neighbours [File Out]  Optional
  type: File?
  inputBinding:
    prefix: -s
- id: in_file_restore_neighbors
  doc: File to restore neighbors for reclustering [File In]  Optional
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_input_database_optional
  doc: Input as a database [File In]  Optional
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_print_progress_messages
  doc: "Print progress messages (verbose mode) [File Out]\ndefault = stdout"
  type: File?
  inputBinding:
    prefix: -v
- id: in_complete_unfinished_clustering
  doc: "Complete unfinished clustering [T/F]\ndefault = FALSE"
  type: boolean?
  inputBinding:
    prefix: -C
- id: in_restrict_reclustering_i
  doc: Restrict reclustering to id list [File In]  Optional
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_input_proteins_default
  doc: "Is input proteins? [T/F]\ndefault = TRUE"
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_enable_i_parsing
  doc: "Enable id parsing in database formatting? [T/F]\ndefault = TRUE"
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_configuration_file_optional
  doc: Configuration file with advanced options [File In]  Optional
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_word_size_use
  doc: "Word size to use (0 for default: proteins 3, nucleotides 32) [Integer]\ndefault\
    \ = 0\n"
  type: boolean?
  inputBinding:
    prefix: -W
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_list
  doc: "Output file for list of clusters [File Out]\ndefault = stdout"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file_list)
- id: out_file_save_neighbours
  doc: File to save all neighbours [File Out]  Optional
  type: File?
  outputBinding:
    glob: $(inputs.in_file_save_neighbours)
- id: out_print_progress_messages
  doc: "Print progress messages (verbose mode) [File Out]\ndefault = stdout"
  type: File?
  outputBinding:
    glob: $(inputs.in_print_progress_messages)
hints: []
cwlVersion: v1.1
baseCommand:
- blastclust
