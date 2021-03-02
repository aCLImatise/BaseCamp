class: CommandLineTool
id: panX.py.cwl
inputs:
- id: in_folder_name
  doc: the absolute path for project folder
  type: boolean?
  inputBinding:
    prefix: --folder_name
- id: in_species_name
  doc: "species name as prefix for some temporary folders\n(e.g.: P_aeruginosa)"
  type: boolean?
  inputBinding:
    prefix: --species_name
- id: in_gbk_present
  doc: "use nucleotide/amino acid sequence files (fna/faa)\nwhen no genBank files\
    \ given (this option does not\nconsider annotations)"
  type: boolean?
  inputBinding:
    prefix: --gbk_present
- id: in_st
  doc: "[ ...], --steps  [ ...]\nrun specific steps or run all steps by default"
  type: boolean?
  inputBinding:
    prefix: -st
- id: in_meta_info_organism
  doc: add organism information in metadata table.
  type: boolean?
  inputBinding:
    prefix: --metainfo_organism
- id: in_meta_info_reconcile
  doc: "use reconciled metadata (redundancy removed) instead\nof original metadata."
  type: boolean?
  inputBinding:
    prefix: --metainfo_reconcile
- id: in_ra_xml_max_time
  doc: "RAxML tree optimization: maximal runing time (minutes,\ndefault:30min)"
  type: boolean?
  inputBinding:
    prefix: --raxml_max_time
- id: in_threads
  doc: number of threads
  type: boolean?
  inputBinding:
    prefix: --threads
- id: in_blast_file_path
  doc: "the absolute path for blast result (e.g.:\n/path/blast.out)"
  type: File?
  inputBinding:
    prefix: --blast_file_path
- id: in_roar_y_file_path
  doc: "the absolute path for roary result (e.g.:\n/path/roary.out)"
  type: File?
  inputBinding:
    prefix: --roary_file_path
- id: in_ortho_finder_file_path
  doc: "the absolute path for orthofinder result (e.g.:\n/path/orthofinder.out)"
  type: File?
  inputBinding:
    prefix: --orthofinder_file_path
- id: in_other_tool_fpath
  doc: "the absolute path for result from other orthology\ninference tool (e.g.: /path/other_tool.out)"
  type: File?
  inputBinding:
    prefix: --other_tool_fpath
- id: in_meta_info_fpath
  doc: "the absolute path for meta_information file (e.g.:\n/path/meta.out)"
  type: File?
  inputBinding:
    prefix: --metainfo_fpath
- id: in_diamond_path
  doc: alternative diamond path provided by user
  type: boolean?
  inputBinding:
    prefix: --diamond_path
- id: in_diamond_evalue
  doc: 'default: e-value threshold below 0.001'
  type: boolean?
  inputBinding:
    prefix: --diamond_evalue
- id: in_diamond_max_target_seqs
  doc: "Diamond: maximum number of target sequences per query\nEstimation: #strain\
    \ * #max_duplication (50*10=500)"
  type: boolean?
  inputBinding:
    prefix: --diamond_max_target_seqs
- id: in_diamond_identity
  doc: "Diamond: sequence identity threshold to report an\nalignment. Default: no\
    \ restriction (0)"
  type: boolean?
  inputBinding:
    prefix: --diamond_identity
- id: in_diamond_query_cover
  doc: "Diamond: query sequence coverage threshold to report\nan alignment. Default:\
    \ no restriction (0)"
  type: boolean?
  inputBinding:
    prefix: --diamond_query_cover
- id: in_diamond_subject_cover
  doc: "Diamond: subject sequence coverage threshold to report\nan alignment. Default:\
    \ no restriction (0)"
  type: boolean?
  inputBinding:
    prefix: --diamond_subject_cover
- id: in_diamond_divide_conquer
  doc: "running diamond alignment in divide-and-conquer(DC)\nalgorithm for large dataset"
  type: boolean?
  inputBinding:
    prefix: --diamond_divide_conquer
- id: in_subset_size
  doc: "subset_size (number of strains in a subset) for\ndivide-and-conquer(DC) algorithm.\
    \ Default:50"
  type: boolean?
  inputBinding:
    prefix: --subset_size
- id: in_diamond_identity_subproblem
  doc: "Diamond divide-and-conquer subproblem: sequence\nidentity threshold to report\
    \ an alignment."
  type: boolean?
  inputBinding:
    prefix: --diamond_identity_subproblem
- id: in_diamond_query_cover_subproblem
  doc: "Diamond divide-and-conquer subproblem: query sequence\ncoverage threshold\
    \ to report an alignment"
  type: boolean?
  inputBinding:
    prefix: --diamond_query_cover_subproblem
- id: in_diamond_subject_cover_subproblem
  doc: "Diamond divide-and-conquer subproblem: subject\nsequence coverage threshold\
    \ to report an alignment"
  type: boolean?
  inputBinding:
    prefix: --diamond_subject_cover_subproblem
- id: in_mcl_inflation
  doc: "MCL: inflation parameter (this parameter affects\ngranularity)"
  type: boolean?
  inputBinding:
    prefix: --mcl_inflation
- id: in_blastn_rna_max_target_seqs
  doc: "Blastn on RNAs: the maximum number of target sequences\nper query Estimation:\
    \ #strain * #max_duplication"
  type: boolean?
  inputBinding:
    prefix: --blastn_RNA_max_target_seqs
- id: in_disable_cluster_postprocessing
  doc: "disable postprocessing (split overclustered genes and\nparalogs, and cluster\
    \ unclustered genes)"
  type: boolean?
  inputBinding:
    prefix: --disable_cluster_postprocessing
- id: in_disable_long_branch_splitting
  doc: disable splitting long branch
  type: boolean?
  inputBinding:
    prefix: --disable_long_branch_splitting
- id: in_enable_rna_clustering
  doc: cluster rRNAs
  type: boolean?
  inputBinding:
    prefix: --enable_RNA_clustering
- id: in_factor_core_diversity
  doc: "default: factor used to refine raw core genome\ndiversity, apply\n(0.1+2.0*core_diversity)/(1+2.0*core_diversity)\
    \ to\ndecide split_long_branch_cutoff"
  type: boolean?
  inputBinding:
    prefix: --factor_core_diversity
- id: in_split_long_branch_cut_off
  doc: "split long branch cutoff provided by user (by default:\n0.0 as not given):"
  type: boolean?
  inputBinding:
    prefix: --split_long_branch_cutoff
- id: in_explore_paralog_plot
  doc: 'default: not plot paralog statistics'
  type: boolean?
  inputBinding:
    prefix: --explore_paralog_plot
- id: in_paralog_frac_cut_off
  doc: "fraction of strains required for splitting paralogy.\nDefault: 0.33"
  type: boolean?
  inputBinding:
    prefix: --paralog_frac_cutoff
- id: in_paralog_branch_cut_off
  doc: branch_length cutoff used in paralogy splitting
  type: boolean?
  inputBinding:
    prefix: --paralog_branch_cutoff
- id: in_window_size_smoothed
  doc: "postprocess_unclustered_genes: window size for\nsmoothed cluster length distribution"
  type: boolean?
  inputBinding:
    prefix: --window_size_smoothed
- id: in_strain_proportion
  doc: 'postprocess_unclustered_genes: strain proportion'
  type: boolean?
  inputBinding:
    prefix: --strain_proportion
- id: in_sigma_scale
  doc: 'postprocess_unclustered_genes: sigma scale'
  type: boolean?
  inputBinding:
    prefix: --sigma_scale
- id: in_core_genome_threshold
  doc: "percentage of strains used to decide whether a gene is\ncore. Default: 1.0\
    \ for strictly core gene; < 1.0 for\nsoft core genes"
  type: boolean?
  inputBinding:
    prefix: --core_genome_threshold
- id: in_core_gene_strain_fpath
  doc: "file path for user-provided subset of strains (core\ngenes should be present\
    \ in all strains in this list)"
  type: boolean?
  inputBinding:
    prefix: --core_gene_strain_fpath
- id: in_simple_tree
  doc: 'simple tree: does not use treetime for ancestral'
  type: boolean?
  inputBinding:
    prefix: --simple_tree
- id: in_merged_gain_loss_output
  doc: "not split gene presence/absence and gain/loss pattern\ninto separate files\
    \ for each cluster"
  type: boolean?
  inputBinding:
    prefix: --merged_gain_loss_output
- id: in_infer_branch_association
  doc: infer branch association
  type: boolean?
  inputBinding:
    prefix: --infer_branch_association
- id: in_min_strain_fraction_branch_association
  doc: "minimal fraction of the total number of strains for\nbranch association"
  type: boolean?
  inputBinding:
    prefix: --min_strain_fraction_branch_association
- id: in_min_strain_fraction_presence_association
  doc: "minimal fraction of the total number of strains for\npresence/absence association"
  type: boolean?
  inputBinding:
    prefix: --min_strain_fraction_presence_association
- id: in_max_strain_fraction_presence_association
  doc: "maximal fraction of the total number of strains for\npresence/absence association"
  type: boolean?
  inputBinding:
    prefix: --max_strain_fraction_presence_association
- id: in_store_locus_tag
  doc: "store locus_tags in a separate file instead of saving\nlocus_tags in gene\
    \ cluster json for large dataset"
  type: boolean?
  inputBinding:
    prefix: --store_locus_tag
- id: in_raw_locus_tag
  doc: "use raw locus_tag from GenBank instead of strain_ID +\nlocus_tag"
  type: boolean?
  inputBinding:
    prefix: --raw_locus_tag
- id: in_optional_table_column
  doc: "add customized column in gene cluster json file for\nvisualization."
  type: boolean?
  inputBinding:
    prefix: --optional_table_column
- id: in_meta_data_config
  doc: "file path for pre-defined metadata structure\n(discrete/continuous data type,\
    \ etc.)"
  type: boolean?
  inputBinding:
    prefix: --meta_data_config
- id: in_ra_xml_path
  doc: absolute path of raxml
  type: boolean?
  inputBinding:
    prefix: --raxml_path
- id: in_clean_temporary_files
  doc: "default: keep temporary files\n"
  type: boolean?
  inputBinding:
    prefix: --clean_temporary_files
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_blast_file_path
  doc: "the absolute path for blast result (e.g.:\n/path/blast.out)"
  type: File?
  outputBinding:
    glob: $(inputs.in_blast_file_path)
- id: out_roar_y_file_path
  doc: "the absolute path for roary result (e.g.:\n/path/roary.out)"
  type: File?
  outputBinding:
    glob: $(inputs.in_roar_y_file_path)
- id: out_ortho_finder_file_path
  doc: "the absolute path for orthofinder result (e.g.:\n/path/orthofinder.out)"
  type: File?
  outputBinding:
    glob: $(inputs.in_ortho_finder_file_path)
- id: out_other_tool_fpath
  doc: "the absolute path for result from other orthology\ninference tool (e.g.: /path/other_tool.out)"
  type: File?
  outputBinding:
    glob: $(inputs.in_other_tool_fpath)
- id: out_meta_info_fpath
  doc: "the absolute path for meta_information file (e.g.:\n/path/meta.out)"
  type: File?
  outputBinding:
    glob: $(inputs.in_meta_info_fpath)
hints: []
cwlVersion: v1.1
baseCommand:
- panX.py
