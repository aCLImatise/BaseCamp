class: CommandLineTool
id: seidr_cluster_enrichment.cwl
inputs:
- id: in_arg_first_clustergene_mapping
  doc: '[ --first ] arg                    First cluster->gene mapping'
  type: boolean?
  inputBinding:
    prefix: '-1'
- id: in_arg_clustergene_mapping_bepositional
  doc: "[ --second ] arg                   Another cluster->gene mapping [can be\n\
    positional]"
  type: boolean?
  inputBinding:
    prefix: '-2'
- id: in_arg_output_delimiter
  doc: '[ --delim ] arg (=,)               Output delimiter'
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_arg_seidrcompareclustdefalphaadjusted_pvalue
  doc: "[ --alpha ] arg (=SEIDR_COMPARE_CLUST_DEF_ALPHA)\nAdjusted p-value cutoff"
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_arg_minimum_members
  doc: '[ --min-members ] arg (=20)        Minimum members of a cluster'
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_arg_maximum_members
  doc: '[ --max-members ] arg (=200)       Maximum members of a cluster'
  type: boolean?
  inputBinding:
    prefix: -M
- id: in_force_overwrite_output
  doc: '[ --force ]                        Force overwrite output file if it'
  type: File?
  inputBinding:
    prefix: -f
- id: in_o
  doc: "[ --outfile ] arg (=-)             Output file name ['-' for stdout]"
  type: File?
  inputBinding:
    prefix: -o
- id: in_exists
  doc: -h [ --help ]                         Show this help message
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_force_overwrite_output
  doc: '[ --force ]                        Force overwrite output file if it'
  type: File?
  outputBinding:
    glob: $(inputs.in_force_overwrite_output)
- id: out_o
  doc: "[ --outfile ] arg (=-)             Output file name ['-' for stdout]"
  type: File?
  outputBinding:
    glob: $(inputs.in_o)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/seidr:0.14.2--mpi_mpich_h6f92565
cwlVersion: v1.1
baseCommand:
- seidr
- cluster-enrichment
