class: CommandLineTool
id: mageckGSEA.cwl
inputs:
- id: in_reverse_value
  doc: Reverse the order of the gene.
  type: boolean?
  inputBinding:
    prefix: --reverse_value
- id: in_sort_by_p
  doc: Sort the pathways by p value.
  type: boolean?
  inputBinding:
    prefix: --sort_byp
- id: in_score_column
  doc: "The column for gene scores. If you just want to use the ranking of the\ngene\
    \ (located at the 1st column), use 0. The column number starts from\n0. Default:\
    \ 0."
  type: long?
  inputBinding:
    prefix: --score_column
- id: in_perm_time
  doc: Permutations, default 1000.
  type: long?
  inputBinding:
    prefix: --perm_time
- id: in_name_pathway_tested
  doc: "Name of the pathway to be tested. If not found, will test all\npathways."
  type: string?
  inputBinding:
    prefix: --pathway_name
- id: in_output_file
  doc: The name of the output file. Use - to print to standard output.
  type: File?
  inputBinding:
    prefix: --output_file
- id: in_rank_file
  doc: "(required)  Rank file. The first column of the rank file must be the\ngene\
    \ name."
  type: File?
  inputBinding:
    prefix: --rank_file
- id: in_gmt_file
  doc: (required)  The pathway annotation in GMT format.
  type: File?
  inputBinding:
    prefix: --gmt_file
- id: in_var_8
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: The name of the output file. Use - to print to standard output.
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mageck:0.5.9.4--py38hed8969a_0
cwlVersion: v1.1
baseCommand:
- mageckGSEA
