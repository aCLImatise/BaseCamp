class: CommandLineTool
id: vmcvmrnme.cwl
inputs:
- id: in_arg_methylation_bed
  doc: "[ --methfile ] arg           Methylation BED files. The BED file is\ngenerated\
    \ by `MCALL` in MOABS. Replicates are\nconcatenated by comma `,`. For example,\
    \ `-m\nr1.bed,r2.bed,r3.bed`."
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_arg_one_specificchromosome
  doc: "[ --chrom ] arg              One specific-chromosome for analysis. Can be\n\
    specified multiple times for multiple\nchromosomes. Default: all chromosomes appear\n\
    in methylation BED files."
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_arg_output_file
  doc: '[ --outfile ] arg            Output file.'
  type: File?
  inputBinding:
    prefix: -o
- id: in_arg_number_discretization
  doc: '[ --state ] arg (=2)         Number of discretization states. Default: 2.'
  type: boolean?
  inputBinding:
    prefix: -k
- id: in_arg_window_size
  doc: '[ --window ] arg (=150)      Window size for genome scan. Default: 150.'
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_arg_minimum_cpgs
  doc: '[ --mincpg ] arg (=3)        Minimum CpGs in a window. Default: 3.'
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_arg_minimum_depth
  doc: '[ --mindepth ] arg (=3)      Minimum depth for a CpG coverage. Default: 3.'
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_arg_number_threads
  doc: '[ --numthreads ] arg (=8)    Number of threads. Default: 8.'
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_arg_vmr_detection
  doc: "[ --vmrmethod ] arg (=0)     VMR detection method. 0: identify VMCs first\n\
    and detect VMRs from consecutive VMCs; 1:\nGenome scan method by fixed-size windows.\n\
    Default: 0."
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_arg_sd_vmc
  doc: '[ --sd ] arg (=0.2)          sd for VMC. Default: 0.2.'
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_arg_nme_vmc
  doc: '[ --nme ] arg (=0.25)        NME for VMC. Default: 0.25.'
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_arg_maximum_distance
  doc: "[ --maxdistvmcs ] arg (=300) Maximum distance between consecutive VMCs for\n\
    VMR. Default: 300."
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_min_sample
  doc: '(=5)            Minimum samples for a CpG. Default: 5.'
  type: long?
  inputBinding:
    prefix: --minsample
- id: in_vmc_file
  doc: VMC file.
  type: File?
  inputBinding:
    prefix: --vmcfile
- id: in_window_file
  doc: VMR file by genome scan.
  type: File?
  inputBinding:
    prefix: --windowfile
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
- vmcvmrnme
