version 1.0

task PanXpy {
  input {
    Boolean? folder_name
    Boolean? species_name
    Boolean? gbk_present
    Boolean? st
    Boolean? meta_info_organism
    Boolean? meta_info_reconcile
    Boolean? ra_xml_max_time
    Boolean? threads
    File? blast_file_path
    File? roar_y_file_path
    File? ortho_finder_file_path
    File? other_tool_fpath
    File? meta_info_fpath
    Boolean? diamond_path
    Boolean? diamond_evalue
    Boolean? diamond_max_target_seqs
    Boolean? diamond_identity
    Boolean? diamond_query_cover
    Boolean? diamond_subject_cover
    Boolean? diamond_divide_conquer
    Boolean? subset_size
    Boolean? diamond_identity_subproblem
    Boolean? diamond_query_cover_subproblem
    Boolean? diamond_subject_cover_subproblem
    Boolean? mcl_inflation
    Boolean? blastn_rna_max_target_seqs
    Boolean? disable_cluster_postprocessing
    Boolean? disable_long_branch_splitting
    Boolean? enable_rna_clustering
    Boolean? factor_core_diversity
    Boolean? split_long_branch_cut_off
    Boolean? explore_paralog_plot
    Boolean? paralog_frac_cut_off
    Boolean? paralog_branch_cut_off
    Boolean? window_size_smoothed
    Boolean? strain_proportion
    Boolean? sigma_scale
    Boolean? core_genome_threshold
    Boolean? core_gene_strain_fpath
    Boolean? simple_tree
    Boolean? merged_gain_loss_output
    Boolean? infer_branch_association
    Boolean? min_strain_fraction_branch_association
    Boolean? min_strain_fraction_presence_association
    Boolean? max_strain_fraction_presence_association
    Boolean? store_locus_tag
    Boolean? raw_locus_tag
    Boolean? optional_table_column
    Boolean? meta_data_config
    Boolean? ra_xml_path
    Boolean? clean_temporary_files
  }
  command <<<
    panX_py \
      ~{if (folder_name) then "--folder_name" else ""} \
      ~{if (species_name) then "--species_name" else ""} \
      ~{if (gbk_present) then "--gbk_present" else ""} \
      ~{if (st) then "-st" else ""} \
      ~{if (meta_info_organism) then "--metainfo_organism" else ""} \
      ~{if (meta_info_reconcile) then "--metainfo_reconcile" else ""} \
      ~{if (ra_xml_max_time) then "--raxml_max_time" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (blast_file_path) then "--blast_file_path" else ""} \
      ~{if (roar_y_file_path) then "--roary_file_path" else ""} \
      ~{if (ortho_finder_file_path) then "--orthofinder_file_path" else ""} \
      ~{if (other_tool_fpath) then "--other_tool_fpath" else ""} \
      ~{if (meta_info_fpath) then "--metainfo_fpath" else ""} \
      ~{if (diamond_path) then "--diamond_path" else ""} \
      ~{if (diamond_evalue) then "--diamond_evalue" else ""} \
      ~{if (diamond_max_target_seqs) then "--diamond_max_target_seqs" else ""} \
      ~{if (diamond_identity) then "--diamond_identity" else ""} \
      ~{if (diamond_query_cover) then "--diamond_query_cover" else ""} \
      ~{if (diamond_subject_cover) then "--diamond_subject_cover" else ""} \
      ~{if (diamond_divide_conquer) then "--diamond_divide_conquer" else ""} \
      ~{if (subset_size) then "--subset_size" else ""} \
      ~{if (diamond_identity_subproblem) then "--diamond_identity_subproblem" else ""} \
      ~{if (diamond_query_cover_subproblem) then "--diamond_query_cover_subproblem" else ""} \
      ~{if (diamond_subject_cover_subproblem) then "--diamond_subject_cover_subproblem" else ""} \
      ~{if (mcl_inflation) then "--mcl_inflation" else ""} \
      ~{if (blastn_rna_max_target_seqs) then "--blastn_RNA_max_target_seqs" else ""} \
      ~{if (disable_cluster_postprocessing) then "--disable_cluster_postprocessing" else ""} \
      ~{if (disable_long_branch_splitting) then "--disable_long_branch_splitting" else ""} \
      ~{if (enable_rna_clustering) then "--enable_RNA_clustering" else ""} \
      ~{if (factor_core_diversity) then "--factor_core_diversity" else ""} \
      ~{if (split_long_branch_cut_off) then "--split_long_branch_cutoff" else ""} \
      ~{if (explore_paralog_plot) then "--explore_paralog_plot" else ""} \
      ~{if (paralog_frac_cut_off) then "--paralog_frac_cutoff" else ""} \
      ~{if (paralog_branch_cut_off) then "--paralog_branch_cutoff" else ""} \
      ~{if (window_size_smoothed) then "--window_size_smoothed" else ""} \
      ~{if (strain_proportion) then "--strain_proportion" else ""} \
      ~{if (sigma_scale) then "--sigma_scale" else ""} \
      ~{if (core_genome_threshold) then "--core_genome_threshold" else ""} \
      ~{if (core_gene_strain_fpath) then "--core_gene_strain_fpath" else ""} \
      ~{if (simple_tree) then "--simple_tree" else ""} \
      ~{if (merged_gain_loss_output) then "--merged_gain_loss_output" else ""} \
      ~{if (infer_branch_association) then "--infer_branch_association" else ""} \
      ~{if (min_strain_fraction_branch_association) then "--min_strain_fraction_branch_association" else ""} \
      ~{if (min_strain_fraction_presence_association) then "--min_strain_fraction_presence_association" else ""} \
      ~{if (max_strain_fraction_presence_association) then "--max_strain_fraction_presence_association" else ""} \
      ~{if (store_locus_tag) then "--store_locus_tag" else ""} \
      ~{if (raw_locus_tag) then "--raw_locus_tag" else ""} \
      ~{if (optional_table_column) then "--optional_table_column" else ""} \
      ~{if (meta_data_config) then "--meta_data_config" else ""} \
      ~{if (ra_xml_path) then "--raxml_path" else ""} \
      ~{if (clean_temporary_files) then "--clean_temporary_files" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    folder_name: "the absolute path for project folder"
    species_name: "species name as prefix for some temporary folders\\n(e.g.: P_aeruginosa)"
    gbk_present: "use nucleotide/amino acid sequence files (fna/faa)\\nwhen no genBank files given (this option does not\\nconsider annotations)"
    st: "[ ...], --steps  [ ...]\\nrun specific steps or run all steps by default"
    meta_info_organism: "add organism information in metadata table."
    meta_info_reconcile: "use reconciled metadata (redundancy removed) instead\\nof original metadata."
    ra_xml_max_time: "RAxML tree optimization: maximal runing time (minutes,\\ndefault:30min)"
    threads: "number of threads"
    blast_file_path: "the absolute path for blast result (e.g.:\\n/path/blast.out)"
    roar_y_file_path: "the absolute path for roary result (e.g.:\\n/path/roary.out)"
    ortho_finder_file_path: "the absolute path for orthofinder result (e.g.:\\n/path/orthofinder.out)"
    other_tool_fpath: "the absolute path for result from other orthology\\ninference tool (e.g.: /path/other_tool.out)"
    meta_info_fpath: "the absolute path for meta_information file (e.g.:\\n/path/meta.out)"
    diamond_path: "alternative diamond path provided by user"
    diamond_evalue: "default: e-value threshold below 0.001"
    diamond_max_target_seqs: "Diamond: maximum number of target sequences per query\\nEstimation: #strain * #max_duplication (50*10=500)"
    diamond_identity: "Diamond: sequence identity threshold to report an\\nalignment. Default: no restriction (0)"
    diamond_query_cover: "Diamond: query sequence coverage threshold to report\\nan alignment. Default: no restriction (0)"
    diamond_subject_cover: "Diamond: subject sequence coverage threshold to report\\nan alignment. Default: no restriction (0)"
    diamond_divide_conquer: "running diamond alignment in divide-and-conquer(DC)\\nalgorithm for large dataset"
    subset_size: "subset_size (number of strains in a subset) for\\ndivide-and-conquer(DC) algorithm. Default:50"
    diamond_identity_subproblem: "Diamond divide-and-conquer subproblem: sequence\\nidentity threshold to report an alignment."
    diamond_query_cover_subproblem: "Diamond divide-and-conquer subproblem: query sequence\\ncoverage threshold to report an alignment"
    diamond_subject_cover_subproblem: "Diamond divide-and-conquer subproblem: subject\\nsequence coverage threshold to report an alignment"
    mcl_inflation: "MCL: inflation parameter (this parameter affects\\ngranularity)"
    blastn_rna_max_target_seqs: "Blastn on RNAs: the maximum number of target sequences\\nper query Estimation: #strain * #max_duplication"
    disable_cluster_postprocessing: "disable postprocessing (split overclustered genes and\\nparalogs, and cluster unclustered genes)"
    disable_long_branch_splitting: "disable splitting long branch"
    enable_rna_clustering: "cluster rRNAs"
    factor_core_diversity: "default: factor used to refine raw core genome\\ndiversity, apply\\n(0.1+2.0*core_diversity)/(1+2.0*core_diversity) to\\ndecide split_long_branch_cutoff"
    split_long_branch_cut_off: "split long branch cutoff provided by user (by default:\\n0.0 as not given):"
    explore_paralog_plot: "default: not plot paralog statistics"
    paralog_frac_cut_off: "fraction of strains required for splitting paralogy.\\nDefault: 0.33"
    paralog_branch_cut_off: "branch_length cutoff used in paralogy splitting"
    window_size_smoothed: "postprocess_unclustered_genes: window size for\\nsmoothed cluster length distribution"
    strain_proportion: "postprocess_unclustered_genes: strain proportion"
    sigma_scale: "postprocess_unclustered_genes: sigma scale"
    core_genome_threshold: "percentage of strains used to decide whether a gene is\\ncore. Default: 1.0 for strictly core gene; < 1.0 for\\nsoft core genes"
    core_gene_strain_fpath: "file path for user-provided subset of strains (core\\ngenes should be present in all strains in this list)"
    simple_tree: "simple tree: does not use treetime for ancestral"
    merged_gain_loss_output: "not split gene presence/absence and gain/loss pattern\\ninto separate files for each cluster"
    infer_branch_association: "infer branch association"
    min_strain_fraction_branch_association: "minimal fraction of the total number of strains for\\nbranch association"
    min_strain_fraction_presence_association: "minimal fraction of the total number of strains for\\npresence/absence association"
    max_strain_fraction_presence_association: "maximal fraction of the total number of strains for\\npresence/absence association"
    store_locus_tag: "store locus_tags in a separate file instead of saving\\nlocus_tags in gene cluster json for large dataset"
    raw_locus_tag: "use raw locus_tag from GenBank instead of strain_ID +\\nlocus_tag"
    optional_table_column: "add customized column in gene cluster json file for\\nvisualization."
    meta_data_config: "file path for pre-defined metadata structure\\n(discrete/continuous data type, etc.)"
    ra_xml_path: "absolute path of raxml"
    clean_temporary_files: "default: keep temporary files\\n"
  }
  output {
    File out_stdout = stdout()
    File out_blast_file_path = "${in_blast_file_path}"
    File out_roar_y_file_path = "${in_roar_y_file_path}"
    File out_ortho_finder_file_path = "${in_ortho_finder_file_path}"
    File out_other_tool_fpath = "${in_other_tool_fpath}"
    File out_meta_info_fpath = "${in_meta_info_fpath}"
  }
}