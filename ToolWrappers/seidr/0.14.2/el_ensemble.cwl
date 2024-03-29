class: CommandLineTool
id: el_ensemble.cwl
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
- id: in_arg_maximum_number
  doc: '[ --nlambda ] arg (=10)            The maximum number of lambda values'
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_arg_minimum_lambda
  doc: '[ --min-lambda ] arg (=0.3)        The minimum lambda as a fraction of the'
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_arg_ensemble_size
  doc: '[ --ensemble ] arg (=1000)         The ensemble size'
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_arg_predictorsthe_minimum
  doc: "[ --min-predictor-size ] arg (=20% of predictors)\nThe minimum absolute number\
    \ of\npredictors (genes) to be sampled."
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_arg_predictorsthe_maximum
  doc: "[ --max-predictor-size ] arg (=80% of predictors)\nThe maximum absolute number\
    \ of\npredictors (genes) to be sampled"
  type: boolean?
  inputBinding:
    prefix: -P
- id: in_arg_minimum_absolute
  doc: "[ --min-experiment-size ] arg (=20% of experiments)\nThe minimum absolute\
    \ number of\nexperiments (samples) to be sampled"
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_arg_maximum_absolute
  doc: "[ --max-experiment-size ] arg (=80% of experiments)\nThe maximum absolute\
    \ number of\nexperiments (samples) to be sampled"
  type: boolean?
  inputBinding:
    prefix: -X
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
- id: in_arg_file_containing_gene_names_ofinterest
  doc: "[ --targets ] arg                  File containing gene names of genes of\n\
    interest. The network will only be\ncalculated using these as the sources\nof\
    \ potential connections."
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_arg_elnetscorestsvoutput_file
  doc: "[ --outfile ] arg (=elnet_scores.tsv)\nOutput file path"
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
- id: in_force_overwrite_output
  doc: '[ --force ]                        Force overwrite if output already'
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_maximum_dot
  doc: -a [ --alpha ] arg (=0.3)             The elastic net mixing value alpha. 1.0
  type: string
  inputBinding:
    position: 0
- id: in_info_dot
  doc: --resume-from arg                     Try to resume job from this file.
  type: string
  inputBinding:
    position: 0
- id: in_exists
  doc: -V [ --version ]                      Print the program version
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_elnetscorestsvoutput_file
  doc: "[ --outfile ] arg (=elnet_scores.tsv)\nOutput file path"
  type: File?
  outputBinding:
    glob: $(inputs.in_arg_elnetscorestsvoutput_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/seidr:0.14.2--mpi_mpich_h6f92565
cwlVersion: v1.1
baseCommand:
- el-ensemble
