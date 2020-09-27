class: CommandLineTool
id: ssu_cmbuild.cwl
inputs:
- id: in_name_cms_s
  doc: ': name the CM(s) <s>, (only if single aln in file)'
  type: File
  inputBinding:
    prefix: -n
- id: in_append_cm_cmfile
  doc: ': append this CM to <cmfile>'
  type: boolean
  inputBinding:
    prefix: -A
- id: in_force_allow_overwriting
  doc: ': force; allow overwriting of <cmfile>'
  type: boolean
  inputBinding:
    prefix: -F
- id: in__verbose_output
  doc: ': be verbose with output'
  type: boolean
  inputBinding:
    prefix: -v
- id: in_i_ins
  doc: ': allow informative insert emissions, do not zero them'
  type: boolean
  inputBinding:
    prefix: --iins
- id: in_w_beta
  doc: ": set tail loss prob for calc'ing W (max size of a hit) to <x>"
  type: long
  inputBinding:
    prefix: --Wbeta
- id: in_devhelp
  doc: ': show list of undocumented developer options'
  type: boolean
  inputBinding:
    prefix: --devhelp
- id: in_r_search
  doc: ': use RSEARCH parameterization with RIBOSUM matrix file <s>'
  type: File
  inputBinding:
    prefix: --rsearch
- id: in_binary
  doc: ': save the model(s) in binary format'
  type: boolean
  inputBinding:
    prefix: --binary
- id: in_rf
  doc: ': use reference coordinate annotation to specify consensus'
  type: boolean
  inputBinding:
    prefix: --rf
- id: in_gap_thresh
  doc: ': fraction of gaps to allow in a consensus column [0..1]  [0.5]'
  type: double
  inputBinding:
    prefix: --gapthresh
- id: in_ignorant
  doc: ': strip the structural info from input alignment'
  type: boolean
  inputBinding:
    prefix: --ignorant
- id: in_wgs_c
  doc: ': Gerstein/Sonnhammer/Chothia tree weights  [default]'
  type: boolean
  inputBinding:
    prefix: --wgsc
- id: in_w_blosum
  doc: ': Henikoff simple filter weights'
  type: boolean
  inputBinding:
    prefix: --wblosum
- id: in_wpb
  doc: ': Henikoff position-based weights'
  type: boolean
  inputBinding:
    prefix: --wpb
- id: in_w_none
  doc: ": don't do any relative weighting; set all to 1"
  type: boolean
  inputBinding:
    prefix: --wnone
- id: in_w_given
  doc: ': use weights as given in MSA file'
  type: boolean
  inputBinding:
    prefix: --wgiven
- id: in_pb_switch
  doc: ': set failover to efficient PB wgts at > <n> seqs  [5000]  (n>0)'
  type: long
  inputBinding:
    prefix: --pbswitch
- id: in_wid
  doc: ': for --wblosum: set identity cutoff  [0.62]  (0<=x<=1)'
  type: double
  inputBinding:
    prefix: --wid
- id: in_e_ent
  doc: ': adjust eff seq # to achieve relative entropy target  [default]'
  type: boolean
  inputBinding:
    prefix: --eent
- id: in_en_one
  doc: ': no effective seq # weighting: just use nseq'
  type: boolean
  inputBinding:
    prefix: --enone
- id: in_ere
  doc: ': for --eent: set CM target relative entropy to <x>  (x>0)'
  type: long
  inputBinding:
    prefix: --ere
- id: in_e_hmm_re
  doc: ': for --eent: set minimum HMM relative entropy to <x>  (x>0)'
  type: long
  inputBinding:
    prefix: --ehmmre
- id: in_null
  doc: ': read null (random sequence) model from file <s>'
  type: File
  inputBinding:
    prefix: --null
- id: in_prior
  doc: ': read priors from file <s>'
  type: File
  inputBinding:
    prefix: --prior
- id: in_c_target
  doc: ': build (at most) <n> CMs by partitioning MSA into <n> clusters'
  type: string
  inputBinding:
    prefix: --ctarget
- id: in_cmax_id
  doc: ': max fractional id b/t 2 clusters is <x>, each cluster -> CM'
  type: long
  inputBinding:
    prefix: --cmaxid
- id: in_call
  doc: ': build a separate CM from every seq in MSA'
  type: boolean
  inputBinding:
    prefix: --call
- id: in_c_orig
  doc: ': build an additional CM from the original, full MSA'
  type: boolean
  inputBinding:
    prefix: --corig
- id: in_c_dump
  doc: ': dump the MSA for each cluster (CM) to file <s>'
  type: File
  inputBinding:
    prefix: --cdump
- id: in_refine
  doc: ': refine input aln w/Expectation-Maximization, save to <s>'
  type: string
  inputBinding:
    prefix: --refine
- id: in_gibbs
  doc: ': w/--refine, use Gibbs sampling instead of EM'
  type: boolean
  inputBinding:
    prefix: --gibbs
- id: in_wgibbs_set_seed
  doc: ': w/--gibbs, set RNG seed to <n> (if 0: one-time arbitrary seed)'
  type: long
  inputBinding:
    prefix: -s
- id: in_wrefine_align_locally
  doc: ': w/--refine, align locally w.r.t the model'
  type: boolean
  inputBinding:
    prefix: -l
- id: in_print_individual_sequence
  doc: ': print individual sequence scores during MSA refinement'
  type: boolean
  inputBinding:
    prefix: -a
- id: in_cy_k
  doc: ': w/--refine align w/the CYK algorithm, not optimal accuracy'
  type: boolean
  inputBinding:
    prefix: --cyk
- id: in_sub
  doc: ': w/--refine, use sub CM for columns b/t HMM start/end points'
  type: boolean
  inputBinding:
    prefix: --sub
- id: in_non_banded
  doc: ': do not use bands to accelerate alignment with --refine'
  type: boolean
  inputBinding:
    prefix: --nonbanded
- id: in_tau
  doc: ': set tail loss prob for --hbanded to <x>'
  type: string
  inputBinding:
    prefix: --tau
- id: in_fins
  doc: ': w/--refine, flush inserts left/right in alignments'
  type: boolean
  inputBinding:
    prefix: --fins
- id: in_mx_size
  doc: ': set maximum allowable DP matrix size to <x> Mb'
  type: long
  inputBinding:
    prefix: --mxsize
- id: in_r_dump
  doc: ': w/--refine, print all intermediate alignments to <f>'
  type: string
  inputBinding:
    prefix: --rdump
- id: in_i_leaved
  doc: ': w/--refine,--cdump, output alnment as interleaved Stockholm'
  type: boolean
  inputBinding:
    prefix: --ileaved
- id: in_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
- id: in_cm_file_output
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_alignment_file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ssu-cmbuild
