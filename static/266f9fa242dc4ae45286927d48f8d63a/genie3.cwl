class: CommandLineTool
id: genie3.cwl
inputs:
- id: in_arg_expression_table
  doc: '[ --infile ] arg                   The expression table (without headers)'
  type: boolean?
  inputBinding:
    prefix: -i
- id: in__arg_file_containing_gene_names
  doc: '[ --genes ] arg                    File containing gene names'
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_deprecated_transform_data
  doc: '[ --scale ]                        (deprecated) Transform data to z-scores'
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_no_scale
  doc: Do not transform data to z-scores
  type: boolean?
  inputBinding:
    prefix: --no-scale
- id: in_arg_node_size
  doc: '[ --min-node-size ] arg (=5)       Minimum node size'
  type: boolean?
  inputBinding:
    prefix: -N
- id: in_arg_minimal_proportion
  doc: '[ --min-prop ] arg (=0.1)          Minimal proportion in random forest'
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_arg_alpha_value
  doc: '[ --alpha ] arg (=0.5)             Alpha value for random forests'
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_arg_number_random
  doc: '[ --ntree ] arg (=1000)            Number of random forest trees to grow'
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_arg_sqrtm_number
  doc: '[ --mtry ] arg (=sqrt(m))          Number of features to sample in each'
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_arg_number_genes
  doc: '[ --batch-size ] arg (=0)          Number of genes in MPI batch'
  type: boolean?
  inputBinding:
    prefix: -B
- id: in_arg_directory_path
  doc: '[ --tempdir ] arg                  Temporary directory path'
  type: boolean?
  inputBinding:
    prefix: -T
- id: in_arg_number_openmp
  doc: '[ --threads ] arg (=2)             Number of OpenMP threads per MPI task'
  type: boolean?
  inputBinding:
    prefix: -O
- id: in_force_overwrite_output
  doc: '[ --force ]                        Force overwrite if output already'
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_arg_geniescorestsvoutput_file
  doc: "[ --outfile ] arg (=genie3_scores.tsv)\nOutput file path"
  type: File?
  inputBinding:
    prefix: -o
- id: in_save_resume
  doc: Path to a file that stores job resume
  type: File?
  inputBinding:
    prefix: --save-resume
- id: in_arg_verbosity_level
  doc: '[ --verbosity ] arg (=3)           Verbosity level (lower is less verbose)'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_print_program_version
  doc: '[ --version ]                      Print the program version'
  type: boolean?
  inputBinding:
    prefix: -V
- id: in_tree
  doc: 'MPI Options:'
  type: string
  inputBinding:
    position: 0
- id: in_exists
  doc: '-t [ --targets ] arg                  File containing gene names of genes
    of '
  type: string
  inputBinding:
    position: 0
- id: in_info_dot
  doc: --resume-from arg                     Try to resume job from this file.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_geniescorestsvoutput_file
  doc: "[ --outfile ] arg (=genie3_scores.tsv)\nOutput file path"
  type: File?
  outputBinding:
    glob: $(inputs.in_arg_geniescorestsvoutput_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/seidr:0.14.2--mpi_mpich_h6f92565
cwlVersion: v1.1
baseCommand:
- genie3
