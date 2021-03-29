class: CommandLineTool
id: anoverence.cwl
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
- id: in_arg_file_containing_metadata
  doc: '[ --features ] arg                 File containing experiment metadata'
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_arg_weight_knockout
  doc: '[ --weight ] arg (=1.0)            Weight for knockout genes'
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_arg_file_containing_gene_names_ofinterest
  doc: "[ --targets ] arg                  File containing gene names of genes of\n\
    interest. The network will only be\ncalculated using these as the sources\nof\
    \ potential connections."
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_arg_anovascorestsvoutput_file
  doc: "[ --outfile ] arg (=anova_scores.tsv)\nOutput file path"
  type: File?
  inputBinding:
    prefix: -o
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
- id: in_exists
  doc: -V [ --version ]                      Print the program version
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_anovascorestsvoutput_file
  doc: "[ --outfile ] arg (=anova_scores.tsv)\nOutput file path"
  type: File?
  outputBinding:
    glob: $(inputs.in_arg_anovascorestsvoutput_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/seidr:0.14.2--mpi_mpich_h6f92565
cwlVersion: v1.1
baseCommand:
- anoverence
