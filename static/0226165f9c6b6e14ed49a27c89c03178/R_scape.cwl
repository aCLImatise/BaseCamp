class: CommandLineTool
id: R_scape.cwl
inputs:
- id: in_eval_max_expected
  doc: ': Eval: max expected number of covNBPs allowed  [0.05]  (x>=0)'
  type: long?
  inputBinding:
    prefix: -E
- id: in_test_basepairs_other
  doc: ': two-set test: basepairs / all other pairs. Requires a given structure'
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_structured
  doc: ': This is a structural RNA of unknown structure'
  type: boolean?
  inputBinding:
    prefix: --structured
- id: in_sample_contacts
  doc: ': basepair-set sample size is all contacts (default for amino acids)'
  type: boolean?
  inputBinding:
    prefix: --samplecontacts
- id: in_sample_bp
  doc: ': basepair-set sample size is all 12-type basepairs (default for RNA/DNA)'
  type: boolean?
  inputBinding:
    prefix: --samplebp
- id: in_sample_wc
  doc: ': basepair-set sample size is WWc basepairs only'
  type: boolean?
  inputBinding:
    prefix: --samplewc
- id: in_fold
  doc: ': obtain the structure with maximum covariation'
  type: boolean?
  inputBinding:
    prefix: --fold
- id: in_outdir
  doc: ': specify a directory for all output files'
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_out_name
  doc: ': specify a filename for all outputs'
  type: File?
  inputBinding:
    prefix: --outname
- id: in_rtw_or_all
  doc: ': make R2R plot all position in the alignment'
  type: boolean?
  inputBinding:
    prefix: --r2rall
- id: in__be_verbose
  doc: ': be verbose'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_window
  doc: ': window size  (n>0)'
  type: long?
  inputBinding:
    prefix: --window
- id: in_slide
  doc: ': window slide  [50]  (n>0)'
  type: long?
  inputBinding:
    prefix: --slide
- id: in_one_msa
  doc: ': if file has more than one msa, analyze only the first one'
  type: boolean?
  inputBinding:
    prefix: --onemsa
- id: in_no_figures
  doc: ': do not produce R2R and dotplot outputs'
  type: boolean?
  inputBinding:
    prefix: --nofigures
- id: in_roc
  doc: ': write .roc file'
  type: boolean?
  inputBinding:
    prefix: --roc
- id: in_filter_xseqcons_residues
  doc: ': filter out seqs <x*seq_cons residues  (0<x<=1.0)'
  type: double?
  inputBinding:
    prefix: -F
- id: in_require_d_
  doc: ': require seqs to have < <x> id  [1.0]  (0<x<=1.0)'
  type: double?
  inputBinding:
    prefix: -I
- id: in_require_seqs_
  doc: ': require seqs to have >= <x> id  (0<=x<1.0)'
  type: double?
  inputBinding:
    prefix: -i
- id: in_t_start
  doc: ': min alignment position to analyze [1..alen]  (n>0)'
  type: long?
  inputBinding:
    prefix: --tstart
- id: in_tend
  doc: ': max alignment position to analyze [1..alen]  (n>0)'
  type: long?
  inputBinding:
    prefix: --tend
- id: in_consensus
  doc: ': analyze only consensus (seq_cons) positions'
  type: boolean?
  inputBinding:
    prefix: --consensus
- id: in_sub_msa
  doc: ': take n random sequences from the alignment, all if NULL  (n>0)'
  type: long?
  inputBinding:
    prefix: --submsa
- id: in_n_seq_min
  doc: ': minimum number of sequences in the alignment  (n>0)'
  type: long?
  inputBinding:
    prefix: --nseqmin
- id: in_gap_thresh
  doc: ': keep columns with < <x> fraction of gaps  [0.75]  (0<=x<=1)'
  type: double?
  inputBinding:
    prefix: --gapthresh
- id: in_mini_d
  doc: ': minimum avgid of the given alignment  (0<x<=1.0)'
  type: double?
  inputBinding:
    prefix: --minid
- id: in_max_id
  doc: ': maximum avgid of the given alignment  (0<x<=1.0)'
  type: double?
  inputBinding:
    prefix: --maxid
- id: in_tree_file
  doc: ': provide external tree to use'
  type: string?
  inputBinding:
    prefix: --treefile
- id: in_v_shuffle
  doc: ': shuffle the residues in a column'
  type: boolean?
  inputBinding:
    prefix: --vshuffle
- id: in_c_shuffle
  doc: ': shuffle the columns of the alignment'
  type: boolean?
  inputBinding:
    prefix: --cshuffle
- id: in_cnt_maxd
  doc: ': max distance for contact definition  [8.0]  (x>0)'
  type: long?
  inputBinding:
    prefix: --cntmaxD
- id: in_pdb_file
  doc: ': read pdb file from file <f>'
  type: File?
  inputBinding:
    prefix: --pdbfile
- id: in_cnt_mind
  doc: ': min (j-i+1) for contact definition  [1]  (n>0)'
  type: long?
  inputBinding:
    prefix: --cntmind
- id: in_only_pdb
  doc: ': use only structural info in pdbfile, ignore msa annotation if any'
  type: boolean?
  inputBinding:
    prefix: --onlypdb
- id: in_in_format
  doc: ': specify format'
  type: string?
  inputBinding:
    prefix: --informat
- id: in_n_shuffle
  doc: ': number of shuffled alignments  (n>0)'
  type: long?
  inputBinding:
    prefix: --nshuffle
- id: in_chia
  doc: ': CHI  ASC corrected statistic'
  type: boolean?
  inputBinding:
    prefix: --CHIa
- id: in_chip
  doc: ': CHI  APC corrected statistic'
  type: boolean?
  inputBinding:
    prefix: --CHIp
- id: in_chi
  doc: ': CHI  statistic'
  type: boolean?
  inputBinding:
    prefix: --CHI
- id: in_gta
  doc: ': GT   ASC corrected statistic'
  type: boolean?
  inputBinding:
    prefix: --GTa
- id: in_gtp
  doc: ': GT   APC corrected statistic  [TRUE]'
  type: boolean?
  inputBinding:
    prefix: --GTp
- id: in_gt
  doc: ': GT   statistic'
  type: boolean?
  inputBinding:
    prefix: --GT
- id: in_mia
  doc: ': MI   ASC corrected statistic'
  type: boolean?
  inputBinding:
    prefix: --MIa
- id: in_mip
  doc: ': MI   APC corrected statistic'
  type: boolean?
  inputBinding:
    prefix: --MIp
- id: in_mi
  doc: ': MI   statistic'
  type: boolean?
  inputBinding:
    prefix: --MI
- id: in_mira
  doc: ': MIr  ASC corrected statistic'
  type: boolean?
  inputBinding:
    prefix: --MIra
- id: in_mir_p
  doc: ': MIr  APC corrected statistic'
  type: boolean?
  inputBinding:
    prefix: --MIrp
- id: in_mir
  doc: ': MIr  statistic'
  type: boolean?
  inputBinding:
    prefix: --MIr
- id: in_miga
  doc: ': MIg  ASC corrected statistic'
  type: boolean?
  inputBinding:
    prefix: --MIga
- id: in_mi_gp
  doc: ': MIg  APC corrected statistic'
  type: boolean?
  inputBinding:
    prefix: --MIgp
- id: in_mig
  doc: ': MIg  statistic'
  type: boolean?
  inputBinding:
    prefix: --MIg
- id: in_o_mesa
  doc: ': OMES ASC corrected statistic'
  type: boolean?
  inputBinding:
    prefix: --OMESa
- id: in_om_esp
  doc: ': OMES APC corrected statistic'
  type: boolean?
  inputBinding:
    prefix: --OMESp
- id: in_omes
  doc: ': OMES statistic'
  type: boolean?
  inputBinding:
    prefix: --OMES
- id: in_rafa
  doc: ': RNAalifold ASC corrected statistic'
  type: boolean?
  inputBinding:
    prefix: --RAFa
- id: in_r_afp
  doc: ': RNAalifold APC corrected statistic'
  type: boolean?
  inputBinding:
    prefix: --RAFp
- id: in_raf
  doc: ': RNAalifold statistic'
  type: boolean?
  inputBinding:
    prefix: --RAF
- id: in_raf_sa
  doc: ': RNAalifold-stacking ASC corrected statistic'
  type: boolean?
  inputBinding:
    prefix: --RAFSa
- id: in_raf_sp
  doc: ': RNAalifold-stacking APC corrected statistic'
  type: boolean?
  inputBinding:
    prefix: --RAFSp
- id: in_raf_s
  doc: ': RNAalifold-stacking  statistic'
  type: boolean?
  inputBinding:
    prefix: --RAFS
- id: in_ccfa
  doc: ': Correlation Coefficient with Frobenius norm ASC corrected statistic'
  type: boolean?
  inputBinding:
    prefix: --CCFa
- id: in_ccfp
  doc: ': Correlation Coefficient with Frobenious norm  APC corrected statistic'
  type: boolean?
  inputBinding:
    prefix: --CCFp
- id: in_ccf
  doc: ': Correlation Coefficient with Frobenious norm   statistic'
  type: boolean?
  inputBinding:
    prefix: --CCF
- id: in_ptf_p
  doc: ': POTTS Frobenious ASC corrected statistic'
  type: boolean?
  inputBinding:
    prefix: --PTFp
- id: in_p_tap
  doc: ': POTTS Averages   ASC corrected statistic'
  type: boolean?
  inputBinding:
    prefix: --PTAp
- id: in_pt_dp
  doc: ': POTTS DI         ASC corrected statistic'
  type: boolean?
  inputBinding:
    prefix: --PTDp
- id: in_cone_six
  doc: ': use 16 covariation classes'
  type: boolean?
  inputBinding:
    prefix: --C16
- id: in_c_two
  doc: ': use 2 covariation classes'
  type: boolean?
  inputBinding:
    prefix: --C2
- id: in_c_select
  doc: ': use C2 if nseq <= nseqthresh otherwise use C16  [TRUE]'
  type: boolean?
  inputBinding:
    prefix: --CSELECT
- id: in_naive
  doc: ': sort results by cov score, no null model involved'
  type: boolean?
  inputBinding:
    prefix: --naive
- id: in_null_phylo
  doc: ': nullphylo  statistics  [TRUE]'
  type: boolean?
  inputBinding:
    prefix: --nullphylo
- id: in_non_param
  doc: ': non parameteric correlate  [TRUE]'
  type: boolean?
  inputBinding:
    prefix: --nonparam
- id: in_potts
  doc: ': potts couplings'
  type: boolean?
  inputBinding:
    prefix: --potts
- id: in_dna
  doc: ': use DNA alphabet'
  type: boolean?
  inputBinding:
    prefix: --dna
- id: in_use_rna_alphabet
  doc: ': use RNA alphabet'
  type: boolean?
  inputBinding:
    prefix: --rna
- id: in_amino
  doc: ': use protein alphabet'
  type: boolean?
  inputBinding:
    prefix: --amino
- id: in_pt_muh
  doc: ": potts regularization parameters for training hi's  [0.01]  (x>=0)"
  type: double?
  inputBinding:
    prefix: --ptmuh
- id: in_pt_mue
  doc: ": potts regularization parameters for training eij's  [0.20]  (x>=0)"
  type: double?
  inputBinding:
    prefix: --ptmue
- id: in_plm
  doc: ': potts option for training'
  type: boolean?
  inputBinding:
    prefix: --PLM
- id: in_a_plm
  doc: ': potts option for training'
  type: boolean?
  inputBinding:
    prefix: --APLM
- id: in_out_potts
  doc: ': write inferred potts parameters'
  type: boolean?
  inputBinding:
    prefix: --outpotts
- id: in_gremlin
  doc: ': reproduce gremlin'
  type: boolean?
  inputBinding:
    prefix: --gremlin
- id: in_out_msa
  doc: ': write actual msa used'
  type: boolean?
  inputBinding:
    prefix: --outmsa
- id: in_out_tree
  doc: ': write phylogenetic tree used'
  type: boolean?
  inputBinding:
    prefix: --outtree
- id: in_out_null
  doc: ': write null alignments'
  type: boolean?
  inputBinding:
    prefix: --outnull
- id: in_all_branch
  doc: ': output msa with all branges'
  type: boolean?
  inputBinding:
    prefix: --allbranch
- id: in_v_output
  doc: ': verbose output'
  type: boolean?
  inputBinding:
    prefix: --voutput
- id: in_power
  doc: ': calculate empirical power curve'
  type: string?
  inputBinding:
    prefix: --power
- id: in_double_subs
  doc: ': calculate power using double substitutions, default is single substitutions'
  type: boolean?
  inputBinding:
    prefix: --doublesubs
- id: in_minh_loop
  doc: ': minimum hairpin loop length. If i-j is the closing pair: minhloop = j-1-1.
    Default is 0  (n>=0)'
  type: long?
  inputBinding:
    prefix: --minhloop
- id: in_seed
  doc: ': set RNG seed to <n>. Use 0 for a random seed.  [42]  (n>=0)'
  type: long?
  inputBinding:
    prefix: --seed
- id: in_pm_ass
  doc: ': pmass for censored histogram of cov scores  [0.0005]  (0<x<=1)'
  type: double?
  inputBinding:
    prefix: --pmass
- id: in_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -options
- id: in_var_93
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_structural
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_covariation
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_above
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_phylogenetic
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_expectation
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_msa_file
  doc: ''
  type: string
  inputBinding:
    position: 6
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: ': specify a directory for all output files'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
hints: []
cwlVersion: v1.1
baseCommand:
- R-scape
