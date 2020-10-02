class: CommandLineTool
id: RNAsoup.cwl
inputs:
- id: in_tree_newick_format
  doc: Tree in NEWICK format
  type: File
  inputBinding:
    prefix: -t
- id: in_fasta_file_sequences
  doc: FASTA file of all sequences in tree
  type: File
  inputBinding:
    prefix: -f
- id: in_file_containing_mfe
  doc: File containing the RNAalifold consensus MFE for each subtree < 500 sequences
  type: File
  inputBinding:
    prefix: -m
- id: in_output_directory_created
  doc: Output directory which is created to store the output
  type: Directory
  inputBinding:
    prefix: -o
- id: in_significance_level_k
  doc: Significance level k
  type: double
  inputBinding:
    prefix: -k
- id: in_print_version_information
  doc: Print version information
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory_created
  doc: Output directory which is created to store the output
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_directory_created)
cwlVersion: v1.1
baseCommand:
- RNAsoup
