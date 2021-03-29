class: CommandLineTool
id: seidr_import.cwl
inputs:
- id: in_i
  doc: "[ --infile ] arg        Input file name ['-' for stdin]"
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_var_1
  doc: '[ --format ] arg        The input file format [el, lm, m, ara]'
  type: boolean?
  inputBinding:
    prefix: -F
- id: in_arg_gene_file
  doc: '[ --genes ] arg         Gene file for input'
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_arg_output_file
  doc: '[ --outfile ] arg       Output file name'
  type: File?
  inputBinding:
    prefix: -o
- id: in_arg_import_name
  doc: '[ --name ] arg          Import name (algorithm name)'
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_rank_absolute_scores
  doc: '[ --absolute ]          Rank on absolute of scores'
  type: boolean?
  inputBinding:
    prefix: -A
- id: in_rank_scores_highest
  doc: '[ --reverse ]           Rank scores in descending order (highest first)'
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_drop_edges_weight
  doc: '[ --drop-zero ]         Drop edges with a weight of zero from the network'
  type: boolean?
  inputBinding:
    prefix: -z
- id: in_force_edges_interpreted
  doc: '[ --undirected ]        Force all edges to be interpreted as undirected'
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_arg_number_openmp
  doc: '[ --threads ] arg (=1)  Number of OpenMP threads for parallel sorting'
  type: boolean?
  inputBinding:
    prefix: -O
- id: in_force_overwrite_output
  doc: '[ --force ]             Force overwrite output file if it exists'
  type: File?
  inputBinding:
    prefix: -f
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_output_file
  doc: '[ --outfile ] arg       Output file name'
  type: File?
  outputBinding:
    glob: $(inputs.in_arg_output_file)
- id: out_force_overwrite_output
  doc: '[ --force ]             Force overwrite output file if it exists'
  type: File?
  outputBinding:
    glob: $(inputs.in_force_overwrite_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/seidr:0.14.2--mpi_mpich_h6f92565
cwlVersion: v1.1
baseCommand:
- seidr
- import
