class: CommandLineTool
id: SelectSequencesFromMSA.cwl
inputs:
- id: in_input_clustal_path
  doc: Path to input clustal file
  type: File
  inputBinding:
    prefix: --inputclustalpath
- id: in_output_path
  doc: "Path to output directory. Default:\ncurrent working directory"
  type: File
  inputBinding:
    prefix: --outputpath
- id: in_output_file_name
  doc: 'Output filename. Default:'
  type: File
  inputBinding:
    prefix: --outputfilename
- id: in_seq_ence_number
  doc: "Number of sequences in the output\nalignment. (Default: 6)"
  type: long
  inputBinding:
    prefix: --seqencenumber
- id: in_optimal_identity
  doc: "Optimize for this percentage of mean\npairwise identity (Default: 80)"
  type: long
  inputBinding:
    prefix: --optimalidentity
- id: in_maximal_idenity
  doc: "Sequences with a higher percentage of\npairwise Identity will be removed.\n\
    (Default: 95)"
  type: long
  inputBinding:
    prefix: --maximalidenity
- id: in_reference_sequence
  doc: "The first sequence (=reference\nsequence) is always present in the output\n\
    alignment per default. Default: True"
  type: boolean
  inputBinding:
    prefix: --referencesequence
- id: in_distance_matrix_path
  doc: "Path to distance matrix output file,\nonly internal for interal sequence\n\
    selection, e.g. /home/user/distmat\n(Default: )"
  type: File
  inputBinding:
    prefix: --distancematrixpath
- id: in_reformat_id_option
  doc: "Defines how sequence id is reformated,\ne.g. fitting for RNAcode or not (Default:\n\
    RNAcode)"
  type: string
  inputBinding:
    prefix: --reformatidoption
- id: in_verbose
  doc: Loud verbosity
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: Quiet verbosity
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_results_dot_selected
  doc: -e --toogleexternalselectsequences  Use only replacement of alignment
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_path
  doc: "Path to output directory. Default:\ncurrent working directory"
  type: File
  outputBinding:
    glob: $(inputs.in_output_path)
- id: out_output_file_name
  doc: 'Output filename. Default:'
  type: File
  outputBinding:
    glob: $(inputs.in_output_file_name)
- id: out_distance_matrix_path
  doc: "Path to distance matrix output file,\nonly internal for interal sequence\n\
    selection, e.g. /home/user/distmat\n(Default: )"
  type: File
  outputBinding:
    glob: $(inputs.in_distance_matrix_path)
cwlVersion: v1.1
baseCommand:
- SelectSequencesFromMSA
