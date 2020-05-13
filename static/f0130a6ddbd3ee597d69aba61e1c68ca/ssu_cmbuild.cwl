class: CommandLineTool
id: ssu_cmbuild.cwl
inputs:
- id: cm_file_output
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: alignment_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: n
  doc: ': name the CM(s) <s>, (only if single aln in file)'
  type: string
  inputBinding:
    prefix: -n
- id: a
  doc: ': append this CM to <cmfile>'
  type: boolean
  inputBinding:
    prefix: -A
- id: f
  doc: ': force; allow overwriting of <cmfile>'
  type: boolean
  inputBinding:
    prefix: -F
- id: v
  doc: ': be verbose with output'
  type: boolean
  inputBinding:
    prefix: -v
- id: i_ins
  doc: ': allow informative insert emissions, do not zero them'
  type: boolean
  inputBinding:
    prefix: --iins
- id: w_beta
  doc: ": set tail loss prob for calc'ing W (max size of a hit) to <x>"
  type: string
  inputBinding:
    prefix: --Wbeta
- id: devhelp
  doc: ': show list of undocumented developer options'
  type: boolean
  inputBinding:
    prefix: --devhelp
- id: r_search
  doc: ': use RSEARCH parameterization with RIBOSUM matrix file <s>'
  type: string
  inputBinding:
    prefix: --rsearch
- id: binary
  doc: ': save the model(s) in binary format'
  type: boolean
  inputBinding:
    prefix: --binary
- id: rf
  doc: ': use reference coordinate annotation to specify consensus'
  type: boolean
  inputBinding:
    prefix: --rf
- id: gap_thresh
  doc: ': fraction of gaps to allow in a consensus column [0..1]  [0.5]'
  type: string
  inputBinding:
    prefix: --gapthresh
- id: ignorant
  doc: ': strip the structural info from input alignment'
  type: boolean
  inputBinding:
    prefix: --ignorant
- id: wgs_c
  doc: ': Gerstein/Sonnhammer/Chothia tree weights  [default]'
  type: boolean
  inputBinding:
    prefix: --wgsc
- id: w_blosum
  doc: ': Henikoff simple filter weights'
  type: boolean
  inputBinding:
    prefix: --wblosum
- id: wpb
  doc: ': Henikoff position-based weights'
  type: boolean
  inputBinding:
    prefix: --wpb
- id: w_none
  doc: ": don't do any relative weighting; set all to 1"
  type: boolean
  inputBinding:
    prefix: --wnone
- id: w_given
  doc: ': use weights as given in MSA file'
  type: boolean
  inputBinding:
    prefix: --wgiven
- id: pb_switch
  doc: ': set failover to efficient PB wgts at > <n> seqs  [5000]  (n>0)'
  type: string
  inputBinding:
    prefix: --pbswitch
- id: wid
  doc: ': for --wblosum: set identity cutoff  [0.62]  (0<=x<=1)'
  type: string
  inputBinding:
    prefix: --wid
- id: e_ent
  doc: ': adjust eff seq # to achieve relative entropy target  [default]'
  type: boolean
  inputBinding:
    prefix: --eent
- id: en_one
  doc: ': no effective seq # weighting: just use nseq'
  type: boolean
  inputBinding:
    prefix: --enone
- id: ere
  doc: ': for --eent: set CM target relative entropy to <x>  (x>0)'
  type: string
  inputBinding:
    prefix: --ere
- id: e_hmm_re
  doc: ': for --eent: set minimum HMM relative entropy to <x>  (x>0)'
  type: string
  inputBinding:
    prefix: --ehmmre
- id: 'null'
  doc: ': read null (random sequence) model from file <s>'
  type: string
  inputBinding:
    prefix: --null
- id: prior
  doc: ': read priors from file <s>'
  type: string
  inputBinding:
    prefix: --prior
- id: c_target
  doc: ': build (at most) <n> CMs by partitioning MSA into <n> clusters'
  type: string
  inputBinding:
    prefix: --ctarget
- id: cmax_id
  doc: ': max fractional id b/t 2 clusters is <x>, each cluster -> CM'
  type: string
  inputBinding:
    prefix: --cmaxid
- id: call
  doc: ': build a separate CM from every seq in MSA'
  type: boolean
  inputBinding:
    prefix: --call
- id: c_orig
  doc: ': build an additional CM from the original, full MSA'
  type: boolean
  inputBinding:
    prefix: --corig
- id: c_dump
  doc: ': dump the MSA for each cluster (CM) to file <s>'
  type: string
  inputBinding:
    prefix: --cdump
- id: refine
  doc: ': refine input aln w/Expectation-Maximization, save to <s>'
  type: string
  inputBinding:
    prefix: --refine
- id: gibbs
  doc: ': w/--refine, use Gibbs sampling instead of EM'
  type: boolean
  inputBinding:
    prefix: --gibbs
- id: s
  doc: ': w/--gibbs, set RNG seed to <n> (if 0: one-time arbitrary seed)'
  type: string
  inputBinding:
    prefix: -s
- id: l
  doc: ': w/--refine, align locally w.r.t the model'
  type: boolean
  inputBinding:
    prefix: -l
- id: a
  doc: ': print individual sequence scores during MSA refinement'
  type: boolean
  inputBinding:
    prefix: -a
- id: cy_k
  doc: ': w/--refine align w/the CYK algorithm, not optimal accuracy'
  type: boolean
  inputBinding:
    prefix: --cyk
- id: sub
  doc: ': w/--refine, use sub CM for columns b/t HMM start/end points'
  type: boolean
  inputBinding:
    prefix: --sub
- id: non_banded
  doc: ': do not use bands to accelerate alignment with --refine'
  type: boolean
  inputBinding:
    prefix: --nonbanded
- id: tau
  doc: ': set tail loss prob for --hbanded to <x>'
  type: string
  inputBinding:
    prefix: --tau
- id: fins
  doc: ': w/--refine, flush inserts left/right in alignments'
  type: boolean
  inputBinding:
    prefix: --fins
- id: mx_size
  doc: ': set maximum allowable DP matrix size to <x> Mb'
  type: string
  inputBinding:
    prefix: --mxsize
- id: r_dump
  doc: ': w/--refine, print all intermediate alignments to <f>'
  type: string
  inputBinding:
    prefix: --rdump
- id: i_leaved
  doc: ': w/--refine,--cdump, output alnment as interleaved Stockholm'
  type: boolean
  inputBinding:
    prefix: --ileaved
outputs: []
cwlVersion: v1.1
baseCommand:
- ssu-cmbuild
