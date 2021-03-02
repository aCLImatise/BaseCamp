class: CommandLineTool
id: kinwalker.cwl
inputs:
- id: in_in_it_structure
  doc: Start with a structure other than the open chain.
  type: boolean?
  inputBinding:
    prefix: --init_structure
- id: in_interrupt
  doc: Allow interrupted folding trajectories when the barrier is exceeded.
  type: boolean?
  inputBinding:
    prefix: --interrupt
- id: in_print_front_dot
  doc: "Creates PS plots of front progression with index i, named front_trajectory($i).ps.\n\
    -t, --test          Use test sequence.\n-v, --verbose       Verbose mode. Print\
    \ debugging messages about program progress."
  type: boolean?
  inputBinding:
    prefix: --printfront.
- id: in_barrier_heuristic
  doc: "'M' Morgan-Higgs,'S' limits small stacks,'B' Barriers,'A' all, then take minimum.\
    \ Default: >M<"
  type: boolean?
  inputBinding:
    prefix: --barrier_heuristic
- id: in_dangle
  doc: 'Dangle value of 0,1,2 as in the ViennaRNA package. Default: >0<'
  type: boolean?
  inputBinding:
    prefix: --dangle
- id: in_grouping
  doc: "How barrier_heuristic 'M' treats conflict groups(\"standard\" or \"regroup\"\
    ). Default: >standard<"
  type: boolean?
  inputBinding:
    prefix: --grouping
- id: in_look_ahead
  doc: '#BP that MorganHiggs forms its subpaths from. Default: >1<'
  type: boolean?
  inputBinding:
    prefix: --lookahead
- id: in_max_keep
  doc: "Breadth of breadth first seerch in barrier_heuristic='B'. Default: >1<"
  type: boolean?
  inputBinding:
    prefix: --maxkeep
- id: in_no_lonely
  doc: 'Value of noLonelyPairs as in ViennaRNA. Default: >2<'
  type: boolean?
  inputBinding:
    prefix: --nolonely
- id: in_transcribed
  doc: '#bases initially transcribed, <0 means all is transcribed. Default: >1<)'
  type: boolean?
  inputBinding:
    prefix: --transcribed
- id: in_transcription_rate
  doc: '#bases transcribed per second. Default: >200.000000<)'
  type: boolean?
  inputBinding:
    prefix: --transcription_rate
- id: in_window_size
  doc: 'Max size of substructures considered for folding events during transcription,
    0= all are considered. Default: >0<)'
  type: boolean?
  inputBinding:
    prefix: --windowsize
- id: in_seq_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_outfile
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/viennarna:2.4.17--py36hd181a71_0
cwlVersion: v1.1
baseCommand:
- kinwalker
