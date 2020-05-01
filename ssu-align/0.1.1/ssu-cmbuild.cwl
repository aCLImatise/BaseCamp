#!/usr/bin/env cwl-runner

baseCommand:
- ssu-cmbuild
class: CommandLineTool
cwlVersion: v1.0
id: ssu-cmbuild
inputs:
- doc: ''
  id: cm_file_output
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: alignment_file
  inputBinding:
    position: 1
  type: string
- doc: ': name the CM(s) <s>, (only if single aln in file)'
  id: n
  inputBinding:
    prefix: -n
  type: string
- doc: ': append this CM to <cmfile>'
  id: a
  inputBinding:
    prefix: -A
  type: boolean
- doc: ': force; allow overwriting of <cmfile>'
  id: f
  inputBinding:
    prefix: -F
  type: boolean
- doc: ': be verbose with output'
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: ': allow informative insert emissions, do not zero them'
  id: i_ins
  inputBinding:
    prefix: --iins
  type: boolean
- doc: ": set tail loss prob for calc'ing W (max size of a hit) to <x>"
  id: w_beta
  inputBinding:
    prefix: --Wbeta
  type: string
- doc: ': show list of undocumented developer options'
  id: devhelp
  inputBinding:
    prefix: --devhelp
  type: boolean
- doc: ': use RSEARCH parameterization with RIBOSUM matrix file <s>'
  id: r_search
  inputBinding:
    prefix: --rsearch
  type: string
- doc: ': save the model(s) in binary format'
  id: binary
  inputBinding:
    prefix: --binary
  type: boolean
- doc: ': use reference coordinate annotation to specify consensus'
  id: rf
  inputBinding:
    prefix: --rf
  type: boolean
- doc: ': fraction of gaps to allow in a consensus column [0..1]  [0.5]'
  id: gap_thresh
  inputBinding:
    prefix: --gapthresh
  type: string
- doc: ': strip the structural info from input alignment'
  id: ignorant
  inputBinding:
    prefix: --ignorant
  type: boolean
- doc: ': Gerstein/Sonnhammer/Chothia tree weights  [default]'
  id: wgs_c
  inputBinding:
    prefix: --wgsc
  type: boolean
- doc: ': Henikoff simple filter weights'
  id: w_blosum
  inputBinding:
    prefix: --wblosum
  type: boolean
- doc: ': Henikoff position-based weights'
  id: wpb
  inputBinding:
    prefix: --wpb
  type: boolean
- doc: ": don't do any relative weighting; set all to 1"
  id: w_none
  inputBinding:
    prefix: --wnone
  type: boolean
- doc: ': use weights as given in MSA file'
  id: w_given
  inputBinding:
    prefix: --wgiven
  type: boolean
- doc: ': set failover to efficient PB wgts at > <n> seqs  [5000]  (n>0)'
  id: pb_switch
  inputBinding:
    prefix: --pbswitch
  type: string
- doc: ': for --wblosum: set identity cutoff  [0.62]  (0<=x<=1)'
  id: wid
  inputBinding:
    prefix: --wid
  type: string
- doc: ': adjust eff seq # to achieve relative entropy target  [default]'
  id: e_ent
  inputBinding:
    prefix: --eent
  type: boolean
- doc: ': no effective seq # weighting: just use nseq'
  id: en_one
  inputBinding:
    prefix: --enone
  type: boolean
- doc: ': for --eent: set CM target relative entropy to <x>  (x>0)'
  id: ere
  inputBinding:
    prefix: --ere
  type: string
- doc: ': for --eent: set minimum HMM relative entropy to <x>  (x>0)'
  id: e_hmm_re
  inputBinding:
    prefix: --ehmmre
  type: string
- doc: ': read null (random sequence) model from file <s>'
  id: 'null'
  inputBinding:
    prefix: --null
  type: string
- doc: ': read priors from file <s>'
  id: prior
  inputBinding:
    prefix: --prior
  type: string
- doc: ': build (at most) <n> CMs by partitioning MSA into <n> clusters'
  id: c_target
  inputBinding:
    prefix: --ctarget
  type: string
- doc: ': max fractional id b/t 2 clusters is <x>, each cluster -> CM'
  id: cmax_id
  inputBinding:
    prefix: --cmaxid
  type: string
- doc: ': build a separate CM from every seq in MSA'
  id: call
  inputBinding:
    prefix: --call
  type: boolean
- doc: ': build an additional CM from the original, full MSA'
  id: c_orig
  inputBinding:
    prefix: --corig
  type: boolean
- doc: ': dump the MSA for each cluster (CM) to file <s>'
  id: c_dump
  inputBinding:
    prefix: --cdump
  type: string
- doc: ': refine input aln w/Expectation-Maximization, save to <s>'
  id: refine
  inputBinding:
    prefix: --refine
  type: string
- doc: ': w/--refine, use Gibbs sampling instead of EM'
  id: gibbs
  inputBinding:
    prefix: --gibbs
  type: boolean
- doc: ': w/--gibbs, set RNG seed to <n> (if 0: one-time arbitrary seed)'
  id: s
  inputBinding:
    prefix: -s
  type: string
- doc: ': w/--refine, align locally w.r.t the model'
  id: l
  inputBinding:
    prefix: -l
  type: boolean
- doc: ': print individual sequence scores during MSA refinement'
  id: a
  inputBinding:
    prefix: -a
  type: boolean
- doc: ': w/--refine align w/the CYK algorithm, not optimal accuracy'
  id: cy_k
  inputBinding:
    prefix: --cyk
  type: boolean
- doc: ': w/--refine, use sub CM for columns b/t HMM start/end points'
  id: sub
  inputBinding:
    prefix: --sub
  type: boolean
- doc: ': do not use bands to accelerate alignment with --refine'
  id: non_banded
  inputBinding:
    prefix: --nonbanded
  type: boolean
- doc: ': set tail loss prob for --hbanded to <x>'
  id: tau
  inputBinding:
    prefix: --tau
  type: string
- doc: ': w/--refine, flush inserts left/right in alignments'
  id: fins
  inputBinding:
    prefix: --fins
  type: boolean
- doc: ': set maximum allowable DP matrix size to <x> Mb'
  id: mx_size
  inputBinding:
    prefix: --mxsize
  type: string
- doc: ': w/--refine, print all intermediate alignments to <f>'
  id: r_dump
  inputBinding:
    prefix: --rdump
  type: string
- doc: ': w/--refine,--cdump, output alnment as interleaved Stockholm'
  id: i_leaved
  inputBinding:
    prefix: --ileaved
  type: boolean
