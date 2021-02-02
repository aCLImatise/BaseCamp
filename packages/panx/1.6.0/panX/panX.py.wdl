version 1.0

task PanXpy {
  input {
    Boolean? fn
    Boolean? sl
    Boolean? gbk_present
    Boolean? st
    Boolean? meta_info_organism
    Boolean? meta_info_reconcile
    Boolean? rt
    Boolean? _threads_number
    File? bp
    File? rp
    File? op
    File? otp
    File? mi
    Boolean? dmp
    Boolean? dme
    Boolean? dmt
    Boolean? dmi
    Boolean? dm_qc
    Boolean? d_msc
    Boolean? diamond_divide_conquer
    Boolean? dcs
    Boolean? dmsi
    Boolean? dms_qc
    Boolean? dms_sc
    Boolean? imcl
    Boolean? bmt
    Boolean? disable_cluster_postprocessing
    Boolean? disable_long_branch_splitting
    Boolean? enable_rna_clustering
    Boolean? fcd
    Boolean? slb
    Boolean? explore_paralog_plot
    Boolean? pfc
    Boolean? pbc
    Boolean? ws
    Boolean? spr
    Boolean? ss
    Boolean? cg
    Boolean? csf
    Boolean? simple_tree
    Boolean? merged_gain_loss_output
    Boolean? infer_branch_association
    Boolean? bam_in
    Boolean? pam_in
    Boolean? pa_max
    Boolean? store_locus_tag
    Boolean? raw_locus_tag
    Boolean? optional_table_column
    Boolean? mtf
    Boolean? rx_m
    Boolean? clean_temporary_files
  }
  command <<<
    panX_py \
      ~{if (fn) then "-fn" else ""} \
      ~{if (sl) then "-sl" else ""} \
      ~{if (gbk_present) then "--gbk_present" else ""} \
      ~{if (st) then "-st" else ""} \
      ~{if (meta_info_organism) then "--metainfo_organism" else ""} \
      ~{if (meta_info_reconcile) then "--metainfo_reconcile" else ""} \
      ~{if (rt) then "-rt" else ""} \
      ~{if (_threads_number) then "-t" else ""} \
      ~{if (bp) then "-bp" else ""} \
      ~{if (rp) then "-rp" else ""} \
      ~{if (op) then "-op" else ""} \
      ~{if (otp) then "-otp" else ""} \
      ~{if (mi) then "-mi" else ""} \
      ~{if (dmp) then "-dmp" else ""} \
      ~{if (dme) then "-dme" else ""} \
      ~{if (dmt) then "-dmt" else ""} \
      ~{if (dmi) then "-dmi" else ""} \
      ~{if (dm_qc) then "-dmqc" else ""} \
      ~{if (d_msc) then "-dmsc" else ""} \
      ~{if (diamond_divide_conquer) then "--diamond_divide_conquer" else ""} \
      ~{if (dcs) then "-dcs" else ""} \
      ~{if (dmsi) then "-dmsi" else ""} \
      ~{if (dms_qc) then "-dmsqc" else ""} \
      ~{if (dms_sc) then "-dmssc" else ""} \
      ~{if (imcl) then "-imcl" else ""} \
      ~{if (bmt) then "-bmt" else ""} \
      ~{if (disable_cluster_postprocessing) then "--disable_cluster_postprocessing" else ""} \
      ~{if (disable_long_branch_splitting) then "--disable_long_branch_splitting" else ""} \
      ~{if (enable_rna_clustering) then "--enable_RNA_clustering" else ""} \
      ~{if (fcd) then "-fcd" else ""} \
      ~{if (slb) then "-slb" else ""} \
      ~{if (explore_paralog_plot) then "--explore_paralog_plot" else ""} \
      ~{if (pfc) then "-pfc" else ""} \
      ~{if (pbc) then "-pbc" else ""} \
      ~{if (ws) then "-ws" else ""} \
      ~{if (spr) then "-spr" else ""} \
      ~{if (ss) then "-ss" else ""} \
      ~{if (cg) then "-cg" else ""} \
      ~{if (csf) then "-csf" else ""} \
      ~{if (simple_tree) then "--simple_tree" else ""} \
      ~{if (merged_gain_loss_output) then "--merged_gain_loss_output" else ""} \
      ~{if (infer_branch_association) then "--infer_branch_association" else ""} \
      ~{if (bam_in) then "-bamin" else ""} \
      ~{if (pam_in) then "-pamin" else ""} \
      ~{if (pa_max) then "-pamax" else ""} \
      ~{if (store_locus_tag) then "--store_locus_tag" else ""} \
      ~{if (raw_locus_tag) then "--raw_locus_tag" else ""} \
      ~{if (optional_table_column) then "--optional_table_column" else ""} \
      ~{if (mtf) then "-mtf" else ""} \
      ~{if (rx_m) then "-rxm" else ""} \
      ~{if (clean_temporary_files) then "--clean_temporary_files" else ""}
  >>>
  parameter_meta {
    fn: ", --folder_name   the absolute path for project folder"
    sl: ", --species_name\\nspecies name as prefix for some temporary folders\\n(e.g.: P_aeruginosa)"
    gbk_present: "use nucleotide/amino acid sequence files (fna/faa)\\nwhen no genBank files given (this option does not\\nconsider annotations)"
    st: "[ ...], --steps  [ ...]\\nrun specific steps or run all steps by default"
    meta_info_organism: "add organism information in metadata table."
    meta_info_reconcile: "use reconciled metadata (redundancy removed) instead\\nof original metadata."
    rt: ", --raxml_max_time\\nRAxML tree optimization: maximal runing time (minutes,\\ndefault:30min)"
    _threads_number: ", --threads        number of threads"
    bp: ", --blast_file_path\\nthe absolute path for blast result (e.g.:\\n/path/blast.out)"
    rp: ", --roary_file_path\\nthe absolute path for roary result (e.g.:\\n/path/roary.out)"
    op: ", --orthofinder_file_path\\nthe absolute path for orthofinder result (e.g.:\\n/path/orthofinder.out)"
    otp: ", --other_tool_fpath\\nthe absolute path for result from other orthology\\ninference tool (e.g.: /path/other_tool.out)"
    mi: ", --metainfo_fpath\\nthe absolute path for meta_information file (e.g.:\\n/path/meta.out)"
    dmp: ", --diamond_path\\nalternative diamond path provided by user"
    dme: ", --diamond_evalue\\ndefault: e-value threshold below 0.001"
    dmt: ", --diamond_max_target_seqs\\nDiamond: maximum number of target sequences per query\\nEstimation: #strain * #max_duplication (50*10=500)"
    dmi: ", --diamond_identity\\nDiamond: sequence identity threshold to report an\\nalignment. Default: no restriction (0)"
    dm_qc: ", --diamond_query_cover\\nDiamond: query sequence coverage threshold to report\\nan alignment. Default: no restriction (0)"
    d_msc: ", --diamond_subject_cover\\nDiamond: subject sequence coverage threshold to report\\nan alignment. Default: no restriction (0)"
    diamond_divide_conquer: "running diamond alignment in divide-and-conquer(DC)\\nalgorithm for large dataset"
    dcs: ", --subset_size\\nsubset_size (number of strains in a subset) for\\ndivide-and-conquer(DC) algorithm. Default:50"
    dmsi: ", --diamond_identity_subproblem\\nDiamond divide-and-conquer subproblem: sequence\\nidentity threshold to report an alignment."
    dms_qc: ", --diamond_query_cover_subproblem\\nDiamond divide-and-conquer subproblem: query sequence\\ncoverage threshold to report an alignment"
    dms_sc: ", --diamond_subject_cover_subproblem\\nDiamond divide-and-conquer subproblem: subject\\nsequence coverage threshold to report an alignment"
    imcl: ", --mcl_inflation\\nMCL: inflation parameter (this parameter affects\\ngranularity)"
    bmt: ", --blastn_RNA_max_target_seqs\\nBlastn on RNAs: the maximum number of target sequences\\nper query Estimation: #strain * #max_duplication"
    disable_cluster_postprocessing: "disable postprocessing (split overclustered genes and\\nparalogs, and cluster unclustered genes)"
    disable_long_branch_splitting: "disable splitting long branch"
    enable_rna_clustering: "cluster rRNAs"
    fcd: ", --factor_core_diversity\\ndefault: factor used to refine raw core genome\\ndiversity, apply\\n(0.1+2.0*core_diversity)/(1+2.0*core_diversity) to\\ndecide split_long_branch_cutoff"
    slb: ", --split_long_branch_cutoff\\nsplit long branch cutoff provided by user (by default:\\n0.0 as not given):"
    explore_paralog_plot: "default: not plot paralog statistics"
    pfc: ", --paralog_frac_cutoff\\nfraction of strains required for splitting paralogy.\\nDefault: 0.33"
    pbc: ", --paralog_branch_cutoff\\nbranch_length cutoff used in paralogy splitting"
    ws: ", --window_size_smoothed\\npostprocess_unclustered_genes: window size for\\nsmoothed cluster length distribution"
    spr: ", --strain_proportion\\npostprocess_unclustered_genes: strain proportion"
    ss: ", --sigma_scale   postprocess_unclustered_genes: sigma scale"
    cg: ", --core_genome_threshold\\npercentage of strains used to decide whether a gene is\\ncore. Default: 1.0 for strictly core gene; < 1.0 for\\nsoft core genes"
    csf: ", --core_gene_strain_fpath\\nfile path for user-provided subset of strains (core\\ngenes should be present in all strains in this list)"
    simple_tree: "simple tree: does not use treetime for ancestral"
    merged_gain_loss_output: "not split gene presence/absence and gain/loss pattern\\ninto separate files for each cluster"
    infer_branch_association: "infer branch association"
    bam_in: ", --min_strain_fraction_branch_association\\nminimal fraction of the total number of strains for\\nbranch association"
    pam_in: ", --min_strain_fraction_presence_association\\nminimal fraction of the total number of strains for\\npresence/absence association"
    pa_max: ", --max_strain_fraction_presence_association\\nmaximal fraction of the total number of strains for\\npresence/absence association"
    store_locus_tag: "store locus_tags in a separate file instead of saving\\nlocus_tags in gene cluster json for large dataset"
    raw_locus_tag: "use raw locus_tag from GenBank instead of strain_ID +\\nlocus_tag"
    optional_table_column: "add customized column in gene cluster json file for\\nvisualization."
    mtf: ", --meta_data_config\\nfile path for pre-defined metadata structure\\n(discrete/continuous data type, etc.)"
    rx_m: ", --raxml_path   absolute path of raxml"
    clean_temporary_files: "default: keep temporary files\\n"
  }
  output {
    File out_stdout = stdout()
    File out_bp = "${in_bp}"
    File out_rp = "${in_rp}"
    File out_op = "${in_op}"
    File out_otp = "${in_otp}"
    File out_mi = "${in_mi}"
  }
}