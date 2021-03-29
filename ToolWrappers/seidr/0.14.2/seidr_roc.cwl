class: CommandLineTool
id: seidr_roc.cwl
inputs:
- id: in_arg_gold_standard
  doc: '[ --gold ] arg                 Gold standard (true edges) input file'
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_n
  doc: '[ --network ] arg              Input SeidrFile [can be positional]'
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_arg_last_score
  doc: '[ --index ] arg (=last score)  Index of score to use'
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_arg_number_consider
  doc: '[ --edges ] arg (=all)         Number of top edges to consider'
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_arg_fraction_include
  doc: '[ --fraction ] arg (=all)      Fraction of gold standard edges to include'
  type: boolean?
  inputBinding:
    prefix: -E
- id: in_arg_number_print
  doc: '[ --points ] arg (=all)        Number of data points to print'
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_arg_list_transcription
  doc: '[ --tfs ] arg                  List of transcription factors to consider'
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_arg_true_negative
  doc: '[ --neg ] arg                  True negative edges'
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_calculate_roc_scores
  doc: '[ --all ]                      Calculate ROC for all scores in the'
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_arg_number_openmp
  doc: '[ --threads ] arg (=1)         Number of OpenMP threads for parallel'
  type: boolean?
  inputBinding:
    prefix: -O
- id: in_force_overwrite_output
  doc: '[ --force ]                    Force overwrite output file if it exists'
  type: File?
  inputBinding:
    prefix: -f
- id: in_var_11
  doc: "[ --outfile ] arg (=-)         Output file name ['-' for stdout]"
  type: File?
  inputBinding:
    prefix: -o
- id: in_sei_dr_file
  doc: 'OpenMP Options:'
  type: string
  inputBinding:
    position: 0
- id: in_sorting
  doc: 'Common Options:'
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_force_overwrite_output
  doc: '[ --force ]                    Force overwrite output file if it exists'
  type: File?
  outputBinding:
    glob: $(inputs.in_force_overwrite_output)
- id: out_var_11
  doc: "[ --outfile ] arg (=-)         Output file name ['-' for stdout]"
  type: File?
  outputBinding:
    glob: $(inputs.in_var_11)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/seidr:0.14.2--mpi_mpich_h6f92565
cwlVersion: v1.1
baseCommand:
- seidr
- roc
