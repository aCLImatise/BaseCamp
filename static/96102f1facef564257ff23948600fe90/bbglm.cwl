class: CommandLineTool
id: bbglm.cwl
inputs:
- id: in_arg_methylation_bed
  doc: "[ --methfile ] arg           Methylation BED files. The BED file is\ngenerated\
    \ by `MCALL` in MOABS. Replicates in\na group are concatenated by comma `,`.\n\
    Multiple groups can be specified. For\nexample, `-m g1_r1.bed,g1_r2.bed -m g2_r1.bed\n\
    -m g3_r1.bed,g3_r2.bed,g3_r3.bed`."
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_arg_specific_chromosome
  doc: "[ --chrom ] arg              A specific chromosome for analysis. Can be\n\
    specified multiple times for multiple\nchromosomes. The size can be encoded for\
    \ a\nchromosome. For example, `-c chr1:248956422\n-c chr2:242193529`. The size\
    \ can be used to\nsplit a chromosome for running in small\nbatches. Default: all\
    \ chromosomes appear in\nmethylation files."
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_arg_split_length
  doc: "[ --length ] arg (=20000000) Split length of coordinates in a chromomsome.\n\
    This is necessary for many replicates with a\nlimited memory. To enable small-batch\n\
    running, size info should be specificed by\n`-c|--chrom`. Because the size of\
    \ chr1 in\nhg38 is >200 million, 1/10th (20M) can be\ngood to go. Default: 20000000."
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_arg_minimum_depth
  doc: '[ --mindepth ] arg (=1)      Minimum depth for a CpG coverage. Default: 1.'
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_arg_number_read
  doc: '[ --readthreads ] arg (=10)  Number of read threads. Default: 10.'
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_arg_number_batch
  doc: '[ --batchthreads ] arg (=5)  Number of batch threads. Default: 5.'
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_q_val
  doc: '(=0.05)              Q-value threshold for DMC. Default: 0.05.'
  type: double?
  inputBinding:
    prefix: --qval
- id: in_nominal_diff
  doc: "(=0.2)        Nominal methylation difference threshold for\nDMC. Default:\
    \ 0.2."
  type: double?
  inputBinding:
    prefix: --nominaldiff
- id: in_max_dist_dmcs
  doc: "(=300)        Maximum distance between consecutive DMCs for\nDMR. Default:\
    \ 300."
  type: long?
  inputBinding:
    prefix: --maxdistdmcs
- id: in_mind_mc
  doc: '(=3)               Minimum number ofDMCs in a DMR. Default: 3.'
  type: long?
  inputBinding:
    prefix: --mindmc
- id: in_arg_output_file
  doc: '[ --outfile ] arg            Output file.'
  type: File?
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_output_file
  doc: '[ --outfile ] arg            Output file.'
  type: File?
  outputBinding:
    glob: $(inputs.in_arg_output_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mmult:0.0.0.2--r40h8b68381_0
cwlVersion: v1.1
baseCommand:
- bbglm
