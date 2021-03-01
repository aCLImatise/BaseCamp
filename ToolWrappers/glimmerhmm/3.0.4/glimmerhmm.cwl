class: CommandLineTool
id: glimmerhmm.cwl
inputs:
- id: in_protein_domain_searches
  doc: If protein domain searches are available, read them from file file_name
  type: File?
  inputBinding:
    prefix: -p
- id: in_training_directory_specified
  doc: Training directory is specified by dir_name (introduced for compatibility with
    earlier versions)
  type: Directory?
  inputBinding:
    prefix: -d
- id: in_print_output_filename
  doc: Print output in file_name; if n>1 for top best predictions, output is in file_name.1,
    file_name.2, ... , file_name.n f
  type: File?
  inputBinding:
    prefix: -o
- id: in_print_top_best
  doc: Print top n best predictions
  type: string?
  inputBinding:
    prefix: -n
- id: in_print_output_gff
  doc: Print output in gff format
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_use_svm_predictions
  doc: Don't use svm splice site predictions
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_make_partial_predictions
  doc: Don't make partial gene predictions
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_genome_one_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_training_dir_for_genome_one
  doc: ''
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- glimmerhmm
