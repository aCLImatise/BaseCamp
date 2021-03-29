class: CommandLineTool
id: tomsimilarity.cwl
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
- id: in_var_2
  doc: '[ --method ] arg (=pearson)        Correlation method: [bicor, pearson]'
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_report_absolute_values
  doc: '[ --absolute ]                     Report absolute values'
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_deprecated_transform_data
  doc: '[ --scale ]                        (deprecated) Transform data to z-scores'
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_transform_data_zscores
  doc: '[ --no-scale ]                     Do not transform data to z-scores'
  type: boolean?
  inputBinding:
    prefix: -S
- id: in_arg_soft_threshold_apply
  doc: "[ --sft ] arg (=0)                 Soft threshold to apply (0 for\nautodetection)"
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_arg_maximum_power
  doc: "[ --max-power ] arg (=30)          Maximum power to check for SFT test in\n\
    auto detection mode"
  type: boolean?
  inputBinding:
    prefix: -M
- id: in_arg_soft_threshold_r
  doc: "[ --sft-cutoff ] arg (=0.8)        Soft threshold R^2 cutoff in\nautodetection\
    \ mode"
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_arg_signed_unsigned
  doc: '[ --tom-type ] arg (=signed)       TOM type: unsigned, signed,'
  type: boolean?
  inputBinding:
    prefix: -T
- id: in_arg_file_containing_gene_names_ofinterest
  doc: "[ --targets ] arg                  File containing gene names of genes of\n\
    interest. The network will only be\ncalculated using these as the sources\nof\
    \ potential connections."
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_arg_tomscorestsvoutput_file
  doc: "[ --outfile ] arg (=tom_scores.tsv)\nOutput file path"
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
- id: in_signed_hybrid
  doc: 'Common Options:'
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
- id: out_arg_tomscorestsvoutput_file
  doc: "[ --outfile ] arg (=tom_scores.tsv)\nOutput file path"
  type: File?
  outputBinding:
    glob: $(inputs.in_arg_tomscorestsvoutput_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/seidr:0.14.2--mpi_mpich_h6f92565
cwlVersion: v1.1
baseCommand:
- tomsimilarity
