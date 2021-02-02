class: CommandLineTool
id: hmmpfam2.cwl
inputs:
- id: in_nucleic_acid_modelssequence
  doc: ': nucleic acid models/sequence (default protein)'
  type: boolean
  inputBinding:
    prefix: -n
- id: in_sets_alignment_limit
  doc: ': sets alignment output limit to <n> best domain alignments'
  type: string
  inputBinding:
    prefix: -A
- id: in_sets_cutoff_globe
  doc: ': sets E value cutoff (globE) to <x>; default 10'
  type: long
  inputBinding:
    prefix: -E
- id: in_sets_bit_threshold
  doc: ': sets T bit threshold (globT) to <x>; no threshold by default'
  type: string
  inputBinding:
    prefix: -T
- id: in_sets_z_models
  doc: ': sets Z (# models) for E-value calculation'
  type: string
  inputBinding:
    prefix: -Z
- id: in_acc
  doc: ': use HMM accession numbers instead of names in output'
  type: boolean
  inputBinding:
    prefix: --acc
- id: in_compat
  doc: ": make best effort to use last version's output style"
  type: boolean
  inputBinding:
    prefix: --compat
- id: in_cpu
  doc: ': run <n> threads in parallel (if threaded)'
  type: string
  inputBinding:
    prefix: --cpu
- id: in_cut_ga
  doc: ': use Pfam GA gathering threshold cutoffs'
  type: boolean
  inputBinding:
    prefix: --cut_ga
- id: in_cut_nc
  doc: ': use Pfam NC noise threshold cutoffs'
  type: boolean
  inputBinding:
    prefix: --cut_nc
- id: in_cut_tc
  doc: ': use Pfam TC trusted threshold cutoffs'
  type: boolean
  inputBinding:
    prefix: --cut_tc
- id: in_dome
  doc: ': sets domain Eval cutoff (2nd threshold) to <x>'
  type: long
  inputBinding:
    prefix: --domE
- id: in_do_mt
  doc: ': sets domain T bit thresh (2nd threshold) to <x>'
  type: long
  inputBinding:
    prefix: --domT
- id: in_forward
  doc: ': use the full Forward() algorithm instead of Viterbi'
  type: boolean
  inputBinding:
    prefix: --forward
- id: in_in_format
  doc: ': sequence file is in format <s>'
  type: File
  inputBinding:
    prefix: --informat
- id: in_null_two
  doc: ': turn OFF the post hoc second null model'
  type: boolean
  inputBinding:
    prefix: --null2
- id: in_pvm
  doc: ': run on a PVM (Parallel Virtual Machine) cluster'
  type: boolean
  inputBinding:
    prefix: --pvm
- id: in_xnu
  doc: ': turn ON XNU filtering of query protein sequence'
  type: boolean
  inputBinding:
    prefix: --xnu
- id: in_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
- id: in_hmmpfam
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_hmm_database
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_sequence_file_or_database
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hmmpfam2
