class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/hmmsearch2.cwl
inputs:
- id: sets_alignment_limit
  doc: ': sets alignment output limit to <n> best domain alignments'
  type: string
  inputBinding:
    prefix: -A
- id: sets_cutoff_globe
  doc: ': sets E value cutoff (globE) to <= x'
  type: string
  inputBinding:
    prefix: -E
- id: sets_t_bit_threshold
  doc: ': sets T bit threshold (globT) to >= x'
  type: string
  inputBinding:
    prefix: -T
- id: sets_z_seqs
  doc: ': sets Z (# seqs) for E-value calculation'
  type: string
  inputBinding:
    prefix: -Z
- id: compat
  doc: ": make best effort to use last version's output style"
  type: boolean
  inputBinding:
    prefix: --compat
- id: cpu
  doc: ': run <n> threads in parallel (if threaded)'
  type: string
  inputBinding:
    prefix: --cpu
- id: cut_ga
  doc: ': use Pfam GA gathering threshold cutoffs'
  type: boolean
  inputBinding:
    prefix: --cut_ga
- id: cut_nc
  doc: ': use Pfam NC noise threshold cutoffs'
  type: boolean
  inputBinding:
    prefix: --cut_nc
- id: cut_tc
  doc: ': use Pfam TC trusted threshold cutoffs'
  type: boolean
  inputBinding:
    prefix: --cut_tc
- id: dome
  doc: ': sets domain Eval cutoff (2nd threshold) to <= x'
  type: string
  inputBinding:
    prefix: --domE
- id: do_mt
  doc: ': sets domain T bit thresh (2nd threshold) to >= x'
  type: string
  inputBinding:
    prefix: --domT
- id: forward
  doc: ': use the full Forward() algorithm instead of Viterbi'
  type: boolean
  inputBinding:
    prefix: --forward
- id: in_format
  doc: ': sequence file is in format <s>'
  type: string
  inputBinding:
    prefix: --informat
- id: null_two
  doc: ': turn OFF the post hoc second null model'
  type: boolean
  inputBinding:
    prefix: --null2
- id: pvm
  doc: ': run on a Parallel Virtual Machine (PVM)'
  type: boolean
  inputBinding:
    prefix: --pvm
- id: xnu
  doc: ': turn ON XNU filtering of target protein sequences'
  type: boolean
  inputBinding:
    prefix: --xnu
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
- id: hmm_search
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: hmm_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: sequence_file_or_database
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- hmmsearch2
