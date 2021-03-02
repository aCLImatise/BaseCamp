class: CommandLineTool
id: cpgcdifenrich.cwl
inputs:
- id: in_arg_comparison_files
  doc: "[ --compfile ] arg           Comparison files. The comparison file is\ngenerated\
    \ by `MCOMP` in MOABS. For example,\n`-c H001VsNL -c H002VsNL`."
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_arg_specific_chromosome
  doc: "[ --chrom ] arg              A specific chromosome for analysis. Can be\n\
    specified multiple times for multiple\nchromosomes. The size can be encoded for\
    \ a\nchromosome. For example, `-c chr1:248956422\n-c chr2:242193529`. The size\
    \ can be used to\nsplit a chromosome for running in small\nbatches. Default: all\
    \ chromosomes appear in\ncomparison files."
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_arg_split_length
  doc: "[ --length ] arg (=20000000) Split length of coordinates in a chromomsome.\n\
    This is necessary for many replicates with a\nlimited memory. To enable small-batch\n\
    running, size info should be specificed by\n`-r|--chrom`. Because the size of\
    \ chr1 in\nhg38 is >200 million, 1/10th (20M) can be\ngood to go. Default: 20000000."
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_arg_number_default
  doc: '[ --numbins ] arg (=100)     Number of bins. Default: 100.'
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_arg_number_threads
  doc: '[ --numthreads ] arg (=10)   Number of threads. Default: 10.'
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_kld_thr
  doc: "(=0.67957)         KL-divergence threshold for a DMC. A quarter\nof nats.\
    \ Default: 0.67957."
  type: double?
  inputBinding:
    prefix: --kldthr
- id: in_cd_if_thr
  doc: '(=0.2)            CDIF threshold for a DMC. Default: 0.2.'
  type: double?
  inputBinding:
    prefix: --cdifthr
- id: in_max_zero_cd_if
  doc: "(=0.05)       Maximum percent of zero CDIFs for a DMC. A\nCpG with both positive\
    \ and negative CDIFs\nwill be ignored. A negative value will not\ncheck zero CDIFs.\
    \ Default: 5%."
  type: double?
  inputBinding:
    prefix: --maxzerocdif
- id: in_max_dist_dmcs
  doc: "(=300)        Maximum distance between consecutive DMCs for\na DMR. Default:\
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
- cpgcdifenrich
