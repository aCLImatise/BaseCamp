class: CommandLineTool
id: seidr_stats.cwl
inputs:
- id: in_in_file
  doc: Input SeidrFile [can be positional]
  type: File?
  inputBinding:
    prefix: --in-file
- id: in_arg_index_use
  doc: '[ --index ] arg (=last score)      Index of score to use'
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_arg_use_n
  doc: '[ --nsamples ] arg (=0)            Use N samples for approximations'
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_arg_prclobtwstrevktzlpcsecebcstring_describing
  doc: "[ --metrics ] arg (=PR,CLO,BTW,STR,EV,KTZ,LPC,SEC,EBC)\nString describing\
    \ metrics to calculate"
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_experimental_use_directionality
  doc: '[ --directed ]                     (Experimental) Use directionality'
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_weight_is_distance
  doc: "Edge weight represents a distance\n(rather than similarity)."
  type: boolean?
  inputBinding:
    prefix: --weight-is-distance
- id: in_weight_rank
  doc: Set weight value to rank rather than
  type: boolean?
  inputBinding:
    prefix: --weight-rank
- id: in_arg_auto_directory
  doc: '[ --tempdir ] arg (=auto)          Directory to store temporary data'
  type: boolean?
  inputBinding:
    prefix: -T
- id: in_information_dot
  doc: '--eigenvector-tol arg (=1e-08)        Eigenvector centrality convergence '
  type: string
  inputBinding:
    position: 0
- id: in_tolerance
  doc: -e [ --exact ]                        Calculate exact stats.
  type: string
  inputBinding:
    position: 1
- id: in_score
  doc: 'Common Options:'
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/seidr:0.14.2--mpi_mpich_h6f92565
cwlVersion: v1.1
baseCommand:
- seidr
- stats
