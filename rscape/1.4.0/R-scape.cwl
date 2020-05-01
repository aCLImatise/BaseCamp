#!/usr/bin/env cwl-runner

baseCommand:
- R-scape
class: CommandLineTool
cwlVersion: v1.0
id: r-scape
inputs:
- doc: ''
  id: rna
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: structural
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: covariation
  inputBinding:
    position: 2
  type: string
- doc: ''
  id: above
  inputBinding:
    position: 3
  type: string
- doc: ''
  id: phylogenetic
  inputBinding:
    position: 4
  type: string
- doc: ''
  id: expectation
  inputBinding:
    position: 5
  type: string
- doc: ''
  id: msa_file
  inputBinding:
    position: 6
  type: string
- doc: ': Eval: max expected number of covNBPs allowed  [0.05]  (x>=0)'
  id: e
  inputBinding:
    prefix: -E
  type: string
- doc: ': two-set test: basepairs / all other pairs. Requires a given structure'
  id: s
  inputBinding:
    prefix: -s
  type: boolean
- doc: ': This is a structural RNA of unknown structure'
  id: structured
  inputBinding:
    prefix: --structured
  type: boolean
- doc: ': basepair-set sample size is all contacts (default for amino acids)'
  id: sample_contacts
  inputBinding:
    prefix: --samplecontacts
  type: boolean
- doc: ': basepair-set sample size is all 12-type basepairs (default for RNA/DNA)'
  id: sample_bp
  inputBinding:
    prefix: --samplebp
  type: boolean
- doc: ': basepair-set sample size is WWc basepairs only'
  id: sample_wc
  inputBinding:
    prefix: --samplewc
  type: boolean
- doc: ': obtain the structure with maximum covariation'
  id: fold
  inputBinding:
    prefix: --fold
  type: boolean
- doc: ': specify a directory for all output files'
  id: outdir
  inputBinding:
    prefix: --outdir
  type: string
- doc: ': specify a filename for all outputs'
  id: out_name
  inputBinding:
    prefix: --outname
  type: string
- doc: ': make R2R plot all position in the alignment'
  id: r2r_all
  inputBinding:
    prefix: --r2rall
  type: boolean
- doc: ': be verbose'
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: ': window size  (n>0)'
  id: window
  inputBinding:
    prefix: --window
  type: string
- doc: ': window slide  [50]  (n>0)'
  id: slide
  inputBinding:
    prefix: --slide
  type: string
- doc: ': if file has more than one msa, analyze only the first one'
  id: one_msa
  inputBinding:
    prefix: --onemsa
  type: boolean
- doc: ': do not produce R2R and dotplot outputs'
  id: no_figures
  inputBinding:
    prefix: --nofigures
  type: boolean
- doc: ': write .roc file'
  id: roc
  inputBinding:
    prefix: --roc
  type: boolean
- doc: ': filter out seqs <x*seq_cons residues  (0<x<=1.0)'
  id: f
  inputBinding:
    prefix: -F
  type: string
- doc: ': require seqs to have < <x> id  [1.0]  (0<x<=1.0)'
  id: i
  inputBinding:
    prefix: -I
  type: string
- doc: ': require seqs to have >= <x> id  (0<=x<1.0)'
  id: i
  inputBinding:
    prefix: -i
  type: string
- doc: ': min alignment position to analyze [1..alen]  (n>0)'
  id: t_start
  inputBinding:
    prefix: --tstart
  type: string
- doc: ': max alignment position to analyze [1..alen]  (n>0)'
  id: tend
  inputBinding:
    prefix: --tend
  type: string
- doc: ': analyze only consensus (seq_cons) positions'
  id: consensus
  inputBinding:
    prefix: --consensus
  type: boolean
- doc: ': take n random sequences from the alignment, all if NULL  (n>0)'
  id: sub_msa
  inputBinding:
    prefix: --submsa
  type: string
- doc: ': minimum number of sequences in the alignment  (n>0)'
  id: n_seq_min
  inputBinding:
    prefix: --nseqmin
  type: string
- doc: ': keep columns with < <x> fraction of gaps  [0.75]  (0<=x<=1)'
  id: gap_thresh
  inputBinding:
    prefix: --gapthresh
  type: string
- doc: ': minimum avgid of the given alignment  (0<x<=1.0)'
  id: mini_d
  inputBinding:
    prefix: --minid
  type: string
- doc: ': maximum avgid of the given alignment  (0<x<=1.0)'
  id: max_id
  inputBinding:
    prefix: --maxid
  type: string
- doc: ': provide external tree to use'
  id: tree_file
  inputBinding:
    prefix: --treefile
  type: string
- doc: ': shuffle the residues in a column'
  id: v_shuffle
  inputBinding:
    prefix: --vshuffle
  type: boolean
- doc: ': shuffle the columns of the alignment'
  id: c_shuffle
  inputBinding:
    prefix: --cshuffle
  type: boolean
- doc: ': max distance for contact definition  [8.0]  (x>0)'
  id: cnt_maxd
  inputBinding:
    prefix: --cntmaxD
  type: string
- doc: ': read pdb file from file <f>'
  id: pdb_file
  inputBinding:
    prefix: --pdbfile
  type: string
- doc: ': min (j-i+1) for contact definition  [1]  (n>0)'
  id: cnt_mind
  inputBinding:
    prefix: --cntmind
  type: string
- doc: ': use only structural info in pdbfile, ignore msa annotation if any'
  id: only_pdb
  inputBinding:
    prefix: --onlypdb
  type: boolean
- doc: ': specify format'
  id: in_format
  inputBinding:
    prefix: --informat
  type: string
- doc: ': number of shuffled alignments  (n>0)'
  id: n_shuffle
  inputBinding:
    prefix: --nshuffle
  type: string
- doc: ': CHI  ASC corrected statistic'
  id: chia
  inputBinding:
    prefix: --CHIa
  type: boolean
- doc: ': CHI  APC corrected statistic'
  id: chip
  inputBinding:
    prefix: --CHIp
  type: boolean
- doc: ': CHI  statistic'
  id: chi
  inputBinding:
    prefix: --CHI
  type: boolean
- doc: ': GT   ASC corrected statistic'
  id: gta
  inputBinding:
    prefix: --GTa
  type: boolean
- doc: ': GT   APC corrected statistic  [TRUE]'
  id: gtp
  inputBinding:
    prefix: --GTp
  type: boolean
- doc: ': GT   statistic'
  id: gt
  inputBinding:
    prefix: --GT
  type: boolean
- doc: ': MI   ASC corrected statistic'
  id: mia
  inputBinding:
    prefix: --MIa
  type: boolean
- doc: ': MI   APC corrected statistic'
  id: mip
  inputBinding:
    prefix: --MIp
  type: boolean
- doc: ': MI   statistic'
  id: mi
  inputBinding:
    prefix: --MI
  type: boolean
- doc: ': MIr  ASC corrected statistic'
  id: mira
  inputBinding:
    prefix: --MIra
  type: boolean
- doc: ': MIr  APC corrected statistic'
  id: mir_p
  inputBinding:
    prefix: --MIrp
  type: boolean
- doc: ': MIr  statistic'
  id: mir
  inputBinding:
    prefix: --MIr
  type: boolean
- doc: ': MIg  ASC corrected statistic'
  id: miga
  inputBinding:
    prefix: --MIga
  type: boolean
- doc: ': MIg  APC corrected statistic'
  id: mi_gp
  inputBinding:
    prefix: --MIgp
  type: boolean
- doc: ': MIg  statistic'
  id: mig
  inputBinding:
    prefix: --MIg
  type: boolean
- doc: ': OMES ASC corrected statistic'
  id: o_mesa
  inputBinding:
    prefix: --OMESa
  type: boolean
- doc: ': OMES APC corrected statistic'
  id: om_esp
  inputBinding:
    prefix: --OMESp
  type: boolean
- doc: ': OMES statistic'
  id: omes
  inputBinding:
    prefix: --OMES
  type: boolean
- doc: ': RNAalifold ASC corrected statistic'
  id: rafa
  inputBinding:
    prefix: --RAFa
  type: boolean
- doc: ': RNAalifold APC corrected statistic'
  id: r_afp
  inputBinding:
    prefix: --RAFp
  type: boolean
- doc: ': RNAalifold statistic'
  id: raf
  inputBinding:
    prefix: --RAF
  type: boolean
- doc: ': RNAalifold-stacking ASC corrected statistic'
  id: raf_sa
  inputBinding:
    prefix: --RAFSa
  type: boolean
- doc: ': RNAalifold-stacking APC corrected statistic'
  id: raf_sp
  inputBinding:
    prefix: --RAFSp
  type: boolean
- doc: ': RNAalifold-stacking  statistic'
  id: raf_s
  inputBinding:
    prefix: --RAFS
  type: boolean
- doc: ': Correlation Coefficient with Frobenius norm ASC corrected statistic'
  id: ccfa
  inputBinding:
    prefix: --CCFa
  type: boolean
- doc: ': Correlation Coefficient with Frobenious norm  APC corrected statistic'
  id: ccfp
  inputBinding:
    prefix: --CCFp
  type: boolean
- doc: ': Correlation Coefficient with Frobenious norm   statistic'
  id: ccf
  inputBinding:
    prefix: --CCF
  type: boolean
- doc: ': POTTS Frobenious ASC corrected statistic'
  id: ptf_p
  inputBinding:
    prefix: --PTFp
  type: boolean
- doc: ': POTTS Averages   ASC corrected statistic'
  id: p_tap
  inputBinding:
    prefix: --PTAp
  type: boolean
- doc: ': POTTS DI         ASC corrected statistic'
  id: pt_dp
  inputBinding:
    prefix: --PTDp
  type: boolean
- doc: ': use 16 covariation classes'
  id: c16
  inputBinding:
    prefix: --C16
  type: boolean
- doc: ': use 2 covariation classes'
  id: c2
  inputBinding:
    prefix: --C2
  type: boolean
- doc: ': use C2 if nseq <= nseqthresh otherwise use C16  [TRUE]'
  id: c_select
  inputBinding:
    prefix: --CSELECT
  type: boolean
- doc: ': sort results by cov score, no null model involved'
  id: naive
  inputBinding:
    prefix: --naive
  type: boolean
- doc: ': nullphylo  statistics  [TRUE]'
  id: null_phylo
  inputBinding:
    prefix: --nullphylo
  type: boolean
- doc: ': non parameteric correlate  [TRUE]'
  id: non_param
  inputBinding:
    prefix: --nonparam
  type: boolean
- doc: ': potts couplings'
  id: potts
  inputBinding:
    prefix: --potts
  type: boolean
- doc: ': use DNA alphabet'
  id: dna
  inputBinding:
    prefix: --dna
  type: boolean
- doc: ': use RNA alphabet'
  id: rna
  inputBinding:
    prefix: --rna
  type: boolean
- doc: ': use protein alphabet'
  id: amino
  inputBinding:
    prefix: --amino
  type: boolean
- doc: ": potts regularization parameters for training hi's  [0.01]  (x>=0)"
  id: pt_muh
  inputBinding:
    prefix: --ptmuh
  type: string
- doc: ": potts regularization parameters for training eij's  [0.20]  (x>=0)"
  id: pt_mue
  inputBinding:
    prefix: --ptmue
  type: string
- doc: ': potts option for training'
  id: plm
  inputBinding:
    prefix: --PLM
  type: boolean
- doc: ': potts option for training'
  id: a_plm
  inputBinding:
    prefix: --APLM
  type: boolean
- doc: ': write inferred potts parameters'
  id: out_potts
  inputBinding:
    prefix: --outpotts
  type: boolean
- doc: ': reproduce gremlin'
  id: gremlin
  inputBinding:
    prefix: --gremlin
  type: boolean
- doc: ': write actual msa used'
  id: out_msa
  inputBinding:
    prefix: --outmsa
  type: boolean
- doc: ': write phylogenetic tree used'
  id: out_tree
  inputBinding:
    prefix: --outtree
  type: boolean
- doc: ': write null alignments'
  id: out_null
  inputBinding:
    prefix: --outnull
  type: boolean
- doc: ': output msa with all branges'
  id: all_branch
  inputBinding:
    prefix: --allbranch
  type: boolean
- doc: ': verbose output'
  id: v_output
  inputBinding:
    prefix: --voutput
  type: boolean
- doc: ': calculate empirical power curve'
  id: power
  inputBinding:
    prefix: --power
  type: string
- doc: ': calculate power using double substitutions, default is single substitutions'
  id: double_subs
  inputBinding:
    prefix: --doublesubs
  type: boolean
- doc: ': minimum hairpin loop length. If i-j is the closing pair: minhloop = j-1-1.
    Default is 0  (n>=0)'
  id: minh_loop
  inputBinding:
    prefix: --minhloop
  type: string
- doc: ': tolerance  [1e-6]'
  id: to_l
  inputBinding:
    prefix: --tol
  type: string
- doc: ': set RNG seed to <n>. Use 0 for a random seed.  [42]  (n>=0)'
  id: seed
  inputBinding:
    prefix: --seed
  type: string
- doc: ': pmass for censored histogram of cov scores  [0.0005]  (0<x<=1)'
  id: pm_ass
  inputBinding:
    prefix: --pmass
  type: string
