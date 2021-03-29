class: CommandLineTool
id: mi.cwl
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
- id: in_arg_spline_order
  doc: '[ --spline ] arg (=3)              Spline order'
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_arg_auto_number
  doc: '[ --bins ] arg (=auto)             Number of bins'
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_arg_saveload_raw
  doc: '[ --mi-file ] arg                  Save/load raw MI to/from this file'
  type: boolean?
  inputBinding:
    prefix: -M
- id: in_var_5
  doc: '[ --mode ] arg (=RAW)              Post processing [RAW, CLR, ARACNE]'
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
- id: in_arg_miscorestsv_output
  doc: '[ --outfile ] arg (=mi_scores.tsv) Output file path'
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
- id: out_arg_miscorestsv_output
  doc: '[ --outfile ] arg (=mi_scores.tsv) Output file path'
  type: File?
  outputBinding:
    glob: $(inputs.in_arg_miscorestsv_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/seidr:0.14.2--mpi_mpich_h6f92565
cwlVersion: v1.1
baseCommand:
- mi
