class: CommandLineTool
id: R_scape.cwl
inputs:
- id: rna
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: structural
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: covariation
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: above
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: phylogenetic
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: expectation
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: msa_file
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: e
  doc: ': Eval: max expected number of covNBPs allowed  [0.05]  (x>=0)'
  type: string
  inputBinding:
    prefix: -E
- id: s
  doc: ': two-set test: basepairs / all other pairs. Requires a given structure'
  type: boolean
  inputBinding:
    prefix: -s
- id: structured
  doc: ': This is a structural RNA of unknown structure'
  type: boolean
  inputBinding:
    prefix: --structured
- id: sample_contacts
  doc: ': basepair-set sample size is all contacts (default for amino acids)'
  type: boolean
  inputBinding:
    prefix: --samplecontacts
- id: sample_bp
  doc: ': basepair-set sample size is all 12-type basepairs (default for RNA/DNA)'
  type: boolean
  inputBinding:
    prefix: --samplebp
- id: sample_wc
  doc: ': basepair-set sample size is WWc basepairs only'
  type: boolean
  inputBinding:
    prefix: --samplewc
- id: fold
  doc: ': obtain the structure with maximum covariation'
  type: boolean
  inputBinding:
    prefix: --fold
- id: outdir
  doc: ': specify a directory for all output files'
  type: string
  inputBinding:
    prefix: --outdir
- id: out_name
  doc: ': specify a filename for all outputs'
  type: string
  inputBinding:
    prefix: --outname
- id: r2r_all
  doc: ': make R2R plot all position in the alignment'
  type: boolean
  inputBinding:
    prefix: --r2rall
- id: v
  doc: ': be verbose'
  type: boolean
  inputBinding:
    prefix: -v
- id: window
  doc: ': window size  (n>0)'
  type: string
  inputBinding:
    prefix: --window
- id: slide
  doc: ': window slide  [50]  (n>0)'
  type: string
  inputBinding:
    prefix: --slide
- id: one_msa
  doc: ': if file has more than one msa, analyze only the first one'
  type: boolean
  inputBinding:
    prefix: --onemsa
- id: no_figures
  doc: ': do not produce R2R and dotplot outputs'
  type: boolean
  inputBinding:
    prefix: --nofigures
- id: roc
  doc: ': write .roc file'
  type: boolean
  inputBinding:
    prefix: --roc
- id: f
  doc: ': filter out seqs <x*seq_cons residues  (0<x<=1.0)'
  type: string
  inputBinding:
    prefix: -F
- id: i
  doc: ': require seqs to have < <x> id  [1.0]  (0<x<=1.0)'
  type: string
  inputBinding:
    prefix: -I
- id: i
  doc: ': require seqs to have >= <x> id  (0<=x<1.0)'
  type: string
  inputBinding:
    prefix: -i
- id: t_start
  doc: ': min alignment position to analyze [1..alen]  (n>0)'
  type: string
  inputBinding:
    prefix: --tstart
- id: tend
  doc: ': max alignment position to analyze [1..alen]  (n>0)'
  type: string
  inputBinding:
    prefix: --tend
- id: consensus
  doc: ': analyze only consensus (seq_cons) positions'
  type: boolean
  inputBinding:
    prefix: --consensus
- id: sub_msa
  doc: ': take n random sequences from the alignment, all if NULL  (n>0)'
  type: string
  inputBinding:
    prefix: --submsa
- id: n_seq_min
  doc: ': minimum number of sequences in the alignment  (n>0)'
  type: string
  inputBinding:
    prefix: --nseqmin
- id: gap_thresh
  doc: ': keep columns with < <x> fraction of gaps  [0.75]  (0<=x<=1)'
  type: string
  inputBinding:
    prefix: --gapthresh
- id: mini_d
  doc: ': minimum avgid of the given alignment  (0<x<=1.0)'
  type: string
  inputBinding:
    prefix: --minid
- id: max_id
  doc: ': maximum avgid of the given alignment  (0<x<=1.0)'
  type: string
  inputBinding:
    prefix: --maxid
- id: tree_file
  doc: ': provide external tree to use'
  type: string
  inputBinding:
    prefix: --treefile
- id: v_shuffle
  doc: ': shuffle the residues in a column'
  type: boolean
  inputBinding:
    prefix: --vshuffle
- id: c_shuffle
  doc: ': shuffle the columns of the alignment'
  type: boolean
  inputBinding:
    prefix: --cshuffle
- id: cnt_maxd
  doc: ': max distance for contact definition  [8.0]  (x>0)'
  type: string
  inputBinding:
    prefix: --cntmaxD
- id: pdb_file
  doc: ': read pdb file from file <f>'
  type: string
  inputBinding:
    prefix: --pdbfile
- id: cnt_mind
  doc: ': min (j-i+1) for contact definition  [1]  (n>0)'
  type: string
  inputBinding:
    prefix: --cntmind
- id: only_pdb
  doc: ': use only structural info in pdbfile, ignore msa annotation if any'
  type: boolean
  inputBinding:
    prefix: --onlypdb
- id: in_format
  doc: ': specify format'
  type: string
  inputBinding:
    prefix: --informat
- id: n_shuffle
  doc: ': number of shuffled alignments  (n>0)'
  type: string
  inputBinding:
    prefix: --nshuffle
- id: chia
  doc: ': CHI  ASC corrected statistic'
  type: boolean
  inputBinding:
    prefix: --CHIa
- id: chip
  doc: ': CHI  APC corrected statistic'
  type: boolean
  inputBinding:
    prefix: --CHIp
- id: chi
  doc: ': CHI  statistic'
  type: boolean
  inputBinding:
    prefix: --CHI
- id: gta
  doc: ': GT   ASC corrected statistic'
  type: boolean
  inputBinding:
    prefix: --GTa
- id: gtp
  doc: ': GT   APC corrected statistic  [TRUE]'
  type: boolean
  inputBinding:
    prefix: --GTp
- id: gt
  doc: ': GT   statistic'
  type: boolean
  inputBinding:
    prefix: --GT
- id: mia
  doc: ': MI   ASC corrected statistic'
  type: boolean
  inputBinding:
    prefix: --MIa
- id: mip
  doc: ': MI   APC corrected statistic'
  type: boolean
  inputBinding:
    prefix: --MIp
- id: mi
  doc: ': MI   statistic'
  type: boolean
  inputBinding:
    prefix: --MI
- id: mira
  doc: ': MIr  ASC corrected statistic'
  type: boolean
  inputBinding:
    prefix: --MIra
- id: mir_p
  doc: ': MIr  APC corrected statistic'
  type: boolean
  inputBinding:
    prefix: --MIrp
- id: mir
  doc: ': MIr  statistic'
  type: boolean
  inputBinding:
    prefix: --MIr
- id: miga
  doc: ': MIg  ASC corrected statistic'
  type: boolean
  inputBinding:
    prefix: --MIga
- id: mi_gp
  doc: ': MIg  APC corrected statistic'
  type: boolean
  inputBinding:
    prefix: --MIgp
- id: mig
  doc: ': MIg  statistic'
  type: boolean
  inputBinding:
    prefix: --MIg
- id: o_mesa
  doc: ': OMES ASC corrected statistic'
  type: boolean
  inputBinding:
    prefix: --OMESa
- id: om_esp
  doc: ': OMES APC corrected statistic'
  type: boolean
  inputBinding:
    prefix: --OMESp
- id: omes
  doc: ': OMES statistic'
  type: boolean
  inputBinding:
    prefix: --OMES
- id: rafa
  doc: ': RNAalifold ASC corrected statistic'
  type: boolean
  inputBinding:
    prefix: --RAFa
- id: r_afp
  doc: ': RNAalifold APC corrected statistic'
  type: boolean
  inputBinding:
    prefix: --RAFp
- id: raf
  doc: ': RNAalifold statistic'
  type: boolean
  inputBinding:
    prefix: --RAF
- id: raf_sa
  doc: ': RNAalifold-stacking ASC corrected statistic'
  type: boolean
  inputBinding:
    prefix: --RAFSa
- id: raf_sp
  doc: ': RNAalifold-stacking APC corrected statistic'
  type: boolean
  inputBinding:
    prefix: --RAFSp
- id: raf_s
  doc: ': RNAalifold-stacking  statistic'
  type: boolean
  inputBinding:
    prefix: --RAFS
- id: ccfa
  doc: ': Correlation Coefficient with Frobenius norm ASC corrected statistic'
  type: boolean
  inputBinding:
    prefix: --CCFa
- id: ccfp
  doc: ': Correlation Coefficient with Frobenious norm  APC corrected statistic'
  type: boolean
  inputBinding:
    prefix: --CCFp
- id: ccf
  doc: ': Correlation Coefficient with Frobenious norm   statistic'
  type: boolean
  inputBinding:
    prefix: --CCF
- id: ptf_p
  doc: ': POTTS Frobenious ASC corrected statistic'
  type: boolean
  inputBinding:
    prefix: --PTFp
- id: p_tap
  doc: ': POTTS Averages   ASC corrected statistic'
  type: boolean
  inputBinding:
    prefix: --PTAp
- id: pt_dp
  doc: ': POTTS DI         ASC corrected statistic'
  type: boolean
  inputBinding:
    prefix: --PTDp
- id: c16
  doc: ': use 16 covariation classes'
  type: boolean
  inputBinding:
    prefix: --C16
- id: c2
  doc: ': use 2 covariation classes'
  type: boolean
  inputBinding:
    prefix: --C2
- id: c_select
  doc: ': use C2 if nseq <= nseqthresh otherwise use C16  [TRUE]'
  type: boolean
  inputBinding:
    prefix: --CSELECT
- id: naive
  doc: ': sort results by cov score, no null model involved'
  type: boolean
  inputBinding:
    prefix: --naive
- id: null_phylo
  doc: ': nullphylo  statistics  [TRUE]'
  type: boolean
  inputBinding:
    prefix: --nullphylo
- id: non_param
  doc: ': non parameteric correlate  [TRUE]'
  type: boolean
  inputBinding:
    prefix: --nonparam
- id: potts
  doc: ': potts couplings'
  type: boolean
  inputBinding:
    prefix: --potts
- id: dna
  doc: ': use DNA alphabet'
  type: boolean
  inputBinding:
    prefix: --dna
- id: rna
  doc: ': use RNA alphabet'
  type: boolean
  inputBinding:
    prefix: --rna
- id: amino
  doc: ': use protein alphabet'
  type: boolean
  inputBinding:
    prefix: --amino
- id: pt_muh
  doc: ": potts regularization parameters for training hi's  [0.01]  (x>=0)"
  type: string
  inputBinding:
    prefix: --ptmuh
- id: pt_mue
  doc: ": potts regularization parameters for training eij's  [0.20]  (x>=0)"
  type: string
  inputBinding:
    prefix: --ptmue
- id: plm
  doc: ': potts option for training'
  type: boolean
  inputBinding:
    prefix: --PLM
- id: a_plm
  doc: ': potts option for training'
  type: boolean
  inputBinding:
    prefix: --APLM
- id: out_potts
  doc: ': write inferred potts parameters'
  type: boolean
  inputBinding:
    prefix: --outpotts
- id: gremlin
  doc: ': reproduce gremlin'
  type: boolean
  inputBinding:
    prefix: --gremlin
- id: out_msa
  doc: ': write actual msa used'
  type: boolean
  inputBinding:
    prefix: --outmsa
- id: out_tree
  doc: ': write phylogenetic tree used'
  type: boolean
  inputBinding:
    prefix: --outtree
- id: out_null
  doc: ': write null alignments'
  type: boolean
  inputBinding:
    prefix: --outnull
- id: all_branch
  doc: ': output msa with all branges'
  type: boolean
  inputBinding:
    prefix: --allbranch
- id: v_output
  doc: ': verbose output'
  type: boolean
  inputBinding:
    prefix: --voutput
- id: power
  doc: ': calculate empirical power curve'
  type: string
  inputBinding:
    prefix: --power
- id: double_subs
  doc: ': calculate power using double substitutions, default is single substitutions'
  type: boolean
  inputBinding:
    prefix: --doublesubs
- id: minh_loop
  doc: ': minimum hairpin loop length. If i-j is the closing pair: minhloop = j-1-1.
    Default is 0  (n>=0)'
  type: string
  inputBinding:
    prefix: --minhloop
- id: to_l
  doc: ': tolerance  [1e-6]'
  type: string
  inputBinding:
    prefix: --tol
- id: seed
  doc: ': set RNG seed to <n>. Use 0 for a random seed.  [42]  (n>=0)'
  type: string
  inputBinding:
    prefix: --seed
- id: pm_ass
  doc: ': pmass for censored histogram of cov scores  [0.0005]  (0<x<=1)'
  type: string
  inputBinding:
    prefix: --pmass
outputs: []
cwlVersion: v1.1
baseCommand:
- R-scape
