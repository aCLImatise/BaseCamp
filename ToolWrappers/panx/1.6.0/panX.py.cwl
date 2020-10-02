class: CommandLineTool
id: panX.py.cwl
inputs:
- id: in_fn
  doc: ', --folder_name   the absolute path for project folder'
  type: boolean
  inputBinding:
    prefix: -fn
- id: in_sl
  doc: ", --species_name\nspecies name as prefix for some temporary folders\n(e.g.:\
    \ P_aeruginosa)"
  type: boolean
  inputBinding:
    prefix: -sl
- id: in_gbk_present
  doc: "use nucleotide/amino acid sequence files (fna/faa)\nwhen no genBank files\
    \ given (this option does not\nconsider annotations)"
  type: boolean
  inputBinding:
    prefix: --gbk_present
- id: in_st
  doc: "[ ...], --steps  [ ...]\nrun specific steps or run all steps by default"
  type: boolean
  inputBinding:
    prefix: -st
- id: in_meta_info_organism
  doc: add organism information in metadata table.
  type: boolean
  inputBinding:
    prefix: --metainfo_organism
- id: in_meta_info_reconcile
  doc: "use reconciled metadata (redundancy removed) instead\nof original metadata."
  type: boolean
  inputBinding:
    prefix: --metainfo_reconcile
- id: in_rt
  doc: ", --raxml_max_time\nRAxML tree optimization: maximal runing time (minutes,\n\
    default:30min)"
  type: boolean
  inputBinding:
    prefix: -rt
- id: in__threads_number
  doc: ', --threads        number of threads'
  type: boolean
  inputBinding:
    prefix: -t
- id: in_bp
  doc: ", --blast_file_path\nthe absolute path for blast result (e.g.:\n/path/blast.out)"
  type: File
  inputBinding:
    prefix: -bp
- id: in_rp
  doc: ", --roary_file_path\nthe absolute path for roary result (e.g.:\n/path/roary.out)"
  type: File
  inputBinding:
    prefix: -rp
- id: in_op
  doc: ", --orthofinder_file_path\nthe absolute path for orthofinder result (e.g.:\n\
    /path/orthofinder.out)"
  type: File
  inputBinding:
    prefix: -op
- id: in_otp
  doc: ", --other_tool_fpath\nthe absolute path for result from other orthology\n\
    inference tool (e.g.: /path/other_tool.out)"
  type: File
  inputBinding:
    prefix: -otp
- id: in_mi
  doc: ", --metainfo_fpath\nthe absolute path for meta_information file (e.g.:\n/path/meta.out)"
  type: File
  inputBinding:
    prefix: -mi
- id: in_dmp
  doc: ", --diamond_path\nalternative diamond path provided by user"
  type: boolean
  inputBinding:
    prefix: -dmp
- id: in_dme
  doc: ", --diamond_evalue\ndefault: e-value threshold below 0.001"
  type: boolean
  inputBinding:
    prefix: -dme
- id: in_dmt
  doc: ", --diamond_max_target_seqs\nDiamond: maximum number of target sequences per\
    \ query\nEstimation: #strain * #max_duplication (50*10=500)"
  type: boolean
  inputBinding:
    prefix: -dmt
- id: in_dmi
  doc: ", --diamond_identity\nDiamond: sequence identity threshold to report an\n\
    alignment. Default: no restriction (0)"
  type: boolean
  inputBinding:
    prefix: -dmi
- id: in_dm_qc
  doc: ", --diamond_query_cover\nDiamond: query sequence coverage threshold to report\n\
    an alignment. Default: no restriction (0)"
  type: boolean
  inputBinding:
    prefix: -dmqc
- id: in_d_msc
  doc: ", --diamond_subject_cover\nDiamond: subject sequence coverage threshold to\
    \ report\nan alignment. Default: no restriction (0)"
  type: boolean
  inputBinding:
    prefix: -dmsc
- id: in_diamond_divide_conquer
  doc: "running diamond alignment in divide-and-conquer(DC)\nalgorithm for large dataset"
  type: boolean
  inputBinding:
    prefix: --diamond_divide_conquer
- id: in_dcs
  doc: ", --subset_size\nsubset_size (number of strains in a subset) for\ndivide-and-conquer(DC)\
    \ algorithm. Default:50"
  type: boolean
  inputBinding:
    prefix: -dcs
- id: in_dmsi
  doc: ", --diamond_identity_subproblem\nDiamond divide-and-conquer subproblem: sequence\n\
    identity threshold to report an alignment."
  type: boolean
  inputBinding:
    prefix: -dmsi
- id: in_dms_qc
  doc: ", --diamond_query_cover_subproblem\nDiamond divide-and-conquer subproblem:\
    \ query sequence\ncoverage threshold to report an alignment"
  type: boolean
  inputBinding:
    prefix: -dmsqc
- id: in_dms_sc
  doc: ", --diamond_subject_cover_subproblem\nDiamond divide-and-conquer subproblem:\
    \ subject\nsequence coverage threshold to report an alignment"
  type: boolean
  inputBinding:
    prefix: -dmssc
- id: in_imcl
  doc: ", --mcl_inflation\nMCL: inflation parameter (this parameter affects\ngranularity)"
  type: boolean
  inputBinding:
    prefix: -imcl
- id: in_bmt
  doc: ", --blastn_RNA_max_target_seqs\nBlastn on RNAs: the maximum number of target\
    \ sequences\nper query Estimation: #strain * #max_duplication"
  type: boolean
  inputBinding:
    prefix: -bmt
- id: in_disable_cluster_postprocessing
  doc: "disable postprocessing (split overclustered genes and\nparalogs, and cluster\
    \ unclustered genes)"
  type: boolean
  inputBinding:
    prefix: --disable_cluster_postprocessing
- id: in_disable_long_branch_splitting
  doc: disable splitting long branch
  type: boolean
  inputBinding:
    prefix: --disable_long_branch_splitting
- id: in_enable_rna_clustering
  doc: cluster rRNAs
  type: boolean
  inputBinding:
    prefix: --enable_RNA_clustering
- id: in_fcd
  doc: ", --factor_core_diversity\ndefault: factor used to refine raw core genome\n\
    diversity, apply\n(0.1+2.0*core_diversity)/(1+2.0*core_diversity) to\ndecide split_long_branch_cutoff"
  type: boolean
  inputBinding:
    prefix: -fcd
- id: in_slb
  doc: ", --split_long_branch_cutoff\nsplit long branch cutoff provided by user (by\
    \ default:\n0.0 as not given):"
  type: boolean
  inputBinding:
    prefix: -slb
- id: in_explore_paralog_plot
  doc: 'default: not plot paralog statistics'
  type: boolean
  inputBinding:
    prefix: --explore_paralog_plot
- id: in_pfc
  doc: ", --paralog_frac_cutoff\nfraction of strains required for splitting paralogy.\n\
    Default: 0.33"
  type: boolean
  inputBinding:
    prefix: -pfc
- id: in_pbc
  doc: ", --paralog_branch_cutoff\nbranch_length cutoff used in paralogy splitting"
  type: boolean
  inputBinding:
    prefix: -pbc
- id: in_ws
  doc: ", --window_size_smoothed\npostprocess_unclustered_genes: window size for\n\
    smoothed cluster length distribution"
  type: boolean
  inputBinding:
    prefix: -ws
- id: in_spr
  doc: ", --strain_proportion\npostprocess_unclustered_genes: strain proportion"
  type: boolean
  inputBinding:
    prefix: -spr
- id: in_ss
  doc: ', --sigma_scale   postprocess_unclustered_genes: sigma scale'
  type: boolean
  inputBinding:
    prefix: -ss
- id: in_cg
  doc: ", --core_genome_threshold\npercentage of strains used to decide whether a\
    \ gene is\ncore. Default: 1.0 for strictly core gene; < 1.0 for\nsoft core genes"
  type: boolean
  inputBinding:
    prefix: -cg
- id: in_csf
  doc: ", --core_gene_strain_fpath\nfile path for user-provided subset of strains\
    \ (core\ngenes should be present in all strains in this list)"
  type: boolean
  inputBinding:
    prefix: -csf
- id: in_simple_tree
  doc: 'simple tree: does not use treetime for ancestral'
  type: boolean
  inputBinding:
    prefix: --simple_tree
- id: in_merged_gain_loss_output
  doc: "not split gene presence/absence and gain/loss pattern\ninto separate files\
    \ for each cluster"
  type: boolean
  inputBinding:
    prefix: --merged_gain_loss_output
- id: in_infer_branch_association
  doc: infer branch association
  type: boolean
  inputBinding:
    prefix: --infer_branch_association
- id: in_bam_in
  doc: ", --min_strain_fraction_branch_association\nminimal fraction of the total\
    \ number of strains for\nbranch association"
  type: boolean
  inputBinding:
    prefix: -bamin
- id: in_pam_in
  doc: ", --min_strain_fraction_presence_association\nminimal fraction of the total\
    \ number of strains for\npresence/absence association"
  type: boolean
  inputBinding:
    prefix: -pamin
- id: in_pa_max
  doc: ", --max_strain_fraction_presence_association\nmaximal fraction of the total\
    \ number of strains for\npresence/absence association"
  type: boolean
  inputBinding:
    prefix: -pamax
- id: in_store_locus_tag
  doc: "store locus_tags in a separate file instead of saving\nlocus_tags in gene\
    \ cluster json for large dataset"
  type: boolean
  inputBinding:
    prefix: --store_locus_tag
- id: in_raw_locus_tag
  doc: "use raw locus_tag from GenBank instead of strain_ID +\nlocus_tag"
  type: boolean
  inputBinding:
    prefix: --raw_locus_tag
- id: in_optional_table_column
  doc: "add customized column in gene cluster json file for\nvisualization."
  type: boolean
  inputBinding:
    prefix: --optional_table_column
- id: in_mtf
  doc: ", --meta_data_config\nfile path for pre-defined metadata structure\n(discrete/continuous\
    \ data type, etc.)"
  type: boolean
  inputBinding:
    prefix: -mtf
- id: in_rx_m
  doc: ', --raxml_path   absolute path of raxml'
  type: boolean
  inputBinding:
    prefix: -rxm
- id: in_clean_temporary_files
  doc: "default: keep temporary files\n"
  type: boolean
  inputBinding:
    prefix: --clean_temporary_files
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_bp
  doc: ", --blast_file_path\nthe absolute path for blast result (e.g.:\n/path/blast.out)"
  type: File
  outputBinding:
    glob: $(inputs.in_bp)
- id: out_rp
  doc: ", --roary_file_path\nthe absolute path for roary result (e.g.:\n/path/roary.out)"
  type: File
  outputBinding:
    glob: $(inputs.in_rp)
- id: out_op
  doc: ", --orthofinder_file_path\nthe absolute path for orthofinder result (e.g.:\n\
    /path/orthofinder.out)"
  type: File
  outputBinding:
    glob: $(inputs.in_op)
- id: out_otp
  doc: ", --other_tool_fpath\nthe absolute path for result from other orthology\n\
    inference tool (e.g.: /path/other_tool.out)"
  type: File
  outputBinding:
    glob: $(inputs.in_otp)
- id: out_mi
  doc: ", --metainfo_fpath\nthe absolute path for meta_information file (e.g.:\n/path/meta.out)"
  type: File
  outputBinding:
    glob: $(inputs.in_mi)
cwlVersion: v1.1
baseCommand:
- panX.py
