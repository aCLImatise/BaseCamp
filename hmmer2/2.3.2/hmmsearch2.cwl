#!/usr/bin/env cwl-runner

baseCommand:
- hmmsearch2
class: CommandLineTool
cwlVersion: v1.0
id: hmmsearch2
inputs:
- doc: ': sets alignment output limit to <n> best domain alignments'
  id: a
  inputBinding:
    prefix: -A
  type: string
- doc: ': sets E value cutoff (globE) to <= x'
  id: e
  inputBinding:
    prefix: -E
  type: string
- doc: ': sets T bit threshold (globT) to >= x'
  id: t
  inputBinding:
    prefix: -T
  type: string
- doc: ': sets Z (# seqs) for E-value calculation'
  id: z
  inputBinding:
    prefix: -Z
  type: string
- doc: ": make best effort to use last version's output style"
  id: compat
  inputBinding:
    prefix: --compat
  type: boolean
- doc: ': run <n> threads in parallel (if threaded)'
  id: cpu
  inputBinding:
    prefix: --cpu
  type: string
- doc: ': use Pfam GA gathering threshold cutoffs'
  id: cut_ga
  inputBinding:
    prefix: --cut_ga
  type: boolean
- doc: ': use Pfam NC noise threshold cutoffs'
  id: cut_nc
  inputBinding:
    prefix: --cut_nc
  type: boolean
- doc: ': use Pfam TC trusted threshold cutoffs'
  id: cut_tc
  inputBinding:
    prefix: --cut_tc
  type: boolean
- doc: ': sets domain Eval cutoff (2nd threshold) to <= x'
  id: dome
  inputBinding:
    prefix: --domE
  type: string
- doc: ': sets domain T bit thresh (2nd threshold) to >= x'
  id: do_mt
  inputBinding:
    prefix: --domT
  type: string
- doc: ': use the full Forward() algorithm instead of Viterbi'
  id: forward
  inputBinding:
    prefix: --forward
  type: boolean
- doc: ': sequence file is in format <s>'
  id: in_format
  inputBinding:
    prefix: --informat
  type: string
- doc: ': turn OFF the post hoc second null model'
  id: null2
  inputBinding:
    prefix: --null2
  type: boolean
- doc: ': run on a Parallel Virtual Machine (PVM)'
  id: pvm
  inputBinding:
    prefix: --pvm
  type: boolean
- doc: ': turn ON XNU filtering of target protein sequences'
  id: xnu
  inputBinding:
    prefix: --xnu
  type: boolean
