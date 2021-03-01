version 1.0

task PegasusCluster {
  input {
    Int? threads
    Boolean? processed
    String? channel
    Int? black_list
    Boolean? select_singlets
    String? remap_singlets
    Int? subset_singlets
    String? genome
    String? focus
    String? append
    File? output_loom
    File? output_h_five_ad
    Int? min_genes
    Int? max_genes
    Int? min_um_is
    Int? max_um_is
    Int? mi_to_prefix
    Float? percent_mi_to
    Float? gene_percent_cells
    Boolean? output_filtration_results
    Boolean? plot_filtration_results
    Int? plot_filtration_fig_size
    Int? min_genes_before_filtration
    Int? counts_per_cell_after
    String? select_hv_f_flavor
    Float? select_hv_f_n_genes
    Boolean? no_select_hv_f
    Boolean? plot_hv_f
    Boolean? correct_batch_effect
    Int? correction_method
    Int? batch_group_by
    Int? harmony_n_clusters
    Int? random_state
    Directory? temp_folder
    String? calc_signature_scores
    Int? pc_a_n
    Boolean? pc_a_robust
    Int? knn_k
    Boolean? knn_full_speed
    Boolean? kb_et
    String? kb_et_batch
    Float? kb_et_alpha
    Int? kb_et_k
    Boolean? diff_map
    Int? diff_map_ndc
    String? diff_map_solver
    Int? diff_map_max_t
    Boolean? diff_map_to_three_d
    String? calculate_pseudo_time
    Boolean? louvain
    Float? louvain_resolution
    String? louvain_class_label
    Boolean? leiden
    Float? leiden_resolution
    Int? leiden_niter
    String? leiden_class_label
    Boolean? spectral_louvain
    String? spectral_louvain_basis
    Int? spectral_louvain_n_clusters
    Int? spectral_louvain_n_clusters_two
    Int? spectral_louvain_nin_it
    Float? spectral_louvain_resolution
    String? spectral_louvain_class_label
    Boolean? spectral_leiden
    String? spectral_leiden_basis
    Int? spectral_leiden_n_clusters
    Int? spectral_leiden_n_clusters_two
    Int? spectral_leiden_nin_it
    Float? spectral_leiden_resolution
    String? spectral_leiden_class_label
    Boolean? tsn_e
    Int? tsn_e_perplexity
    Int? tsn_e_initialization
    Boolean? u_map
    Int? u_map_k
    Int? u_map_min_dist
    Float? u_map_spread
    Boolean? fle
    Int? fle_k
    Float? fle_target_change_per_node
    Int? fle_target_steps
    Int? fle_memory
    Float? net_down_sample_fraction
    Int? net_down_sample_k
    Float? net_down_sample_alpha
    Int? net_regressor_l_two_penalty
    Boolean? net_u_map
    Float? net_u_map_polish_learning_rate
    Int? net_u_map_polish_n_epochs
    String? net_u_map_out_basis
    Boolean? net_fle
    Int? net_fle_polish_target_steps
    String? net_fle_out_basis
    Boolean? infer_doublets
    Int? expected_doublet_rate
    Int? dbl_cluster_attr
    Boolean? cite_seq
    Boolean? cite_seq_u_map
    Int? cite_seq_u_map_exclude
    String input_file
    String output_name
    String output_name_dot_zarr_dot_zip
  }
  command <<<
    pegasus cluster \
      ~{input_file} \
      ~{output_name} \
      ~{output_name_dot_zarr_dot_zip} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (processed) then "--processed" else ""} \
      ~{if defined(channel) then ("--channel " +  '"' + channel + '"') else ""} \
      ~{if defined(black_list) then ("--black-list " +  '"' + black_list + '"') else ""} \
      ~{if (select_singlets) then "--select-singlets" else ""} \
      ~{if defined(remap_singlets) then ("--remap-singlets " +  '"' + remap_singlets + '"') else ""} \
      ~{if defined(subset_singlets) then ("--subset-singlets " +  '"' + subset_singlets + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(focus) then ("--focus " +  '"' + focus + '"') else ""} \
      ~{if defined(append) then ("--append " +  '"' + append + '"') else ""} \
      ~{if (output_loom) then "--output-loom" else ""} \
      ~{if (output_h_five_ad) then "--output-h5ad" else ""} \
      ~{if defined(min_genes) then ("--min-genes " +  '"' + min_genes + '"') else ""} \
      ~{if defined(max_genes) then ("--max-genes " +  '"' + max_genes + '"') else ""} \
      ~{if defined(min_um_is) then ("--min-umis " +  '"' + min_um_is + '"') else ""} \
      ~{if defined(max_um_is) then ("--max-umis " +  '"' + max_um_is + '"') else ""} \
      ~{if defined(mi_to_prefix) then ("--mito-prefix " +  '"' + mi_to_prefix + '"') else ""} \
      ~{if defined(percent_mi_to) then ("--percent-mito " +  '"' + percent_mi_to + '"') else ""} \
      ~{if defined(gene_percent_cells) then ("--gene-percent-cells " +  '"' + gene_percent_cells + '"') else ""} \
      ~{if (output_filtration_results) then "--output-filtration-results" else ""} \
      ~{if (plot_filtration_results) then "--plot-filtration-results" else ""} \
      ~{if defined(plot_filtration_fig_size) then ("--plot-filtration-figsize " +  '"' + plot_filtration_fig_size + '"') else ""} \
      ~{if defined(min_genes_before_filtration) then ("--min-genes-before-filtration " +  '"' + min_genes_before_filtration + '"') else ""} \
      ~{if defined(counts_per_cell_after) then ("--counts-per-cell-after " +  '"' + counts_per_cell_after + '"') else ""} \
      ~{if defined(select_hv_f_flavor) then ("--select-hvf-flavor " +  '"' + select_hv_f_flavor + '"') else ""} \
      ~{if defined(select_hv_f_n_genes) then ("--select-hvf-ngenes " +  '"' + select_hv_f_n_genes + '"') else ""} \
      ~{if (no_select_hv_f) then "--no-select-hvf" else ""} \
      ~{if (plot_hv_f) then "--plot-hvf" else ""} \
      ~{if (correct_batch_effect) then "--correct-batch-effect" else ""} \
      ~{if defined(correction_method) then ("--correction-method " +  '"' + correction_method + '"') else ""} \
      ~{if defined(batch_group_by) then ("--batch-group-by " +  '"' + batch_group_by + '"') else ""} \
      ~{if defined(harmony_n_clusters) then ("--harmony-nclusters " +  '"' + harmony_n_clusters + '"') else ""} \
      ~{if defined(random_state) then ("--random-state " +  '"' + random_state + '"') else ""} \
      ~{if defined(temp_folder) then ("--temp-folder " +  '"' + temp_folder + '"') else ""} \
      ~{if defined(calc_signature_scores) then ("--calc-signature-scores " +  '"' + calc_signature_scores + '"') else ""} \
      ~{if defined(pc_a_n) then ("--pca-n " +  '"' + pc_a_n + '"') else ""} \
      ~{if (pc_a_robust) then "--pca-robust" else ""} \
      ~{if defined(knn_k) then ("--knn-K " +  '"' + knn_k + '"') else ""} \
      ~{if (knn_full_speed) then "--knn-full-speed" else ""} \
      ~{if (kb_et) then "--kBET" else ""} \
      ~{if defined(kb_et_batch) then ("--kBET-batch " +  '"' + kb_et_batch + '"') else ""} \
      ~{if defined(kb_et_alpha) then ("--kBET-alpha " +  '"' + kb_et_alpha + '"') else ""} \
      ~{if defined(kb_et_k) then ("--kBET-K " +  '"' + kb_et_k + '"') else ""} \
      ~{if (diff_map) then "--diffmap" else ""} \
      ~{if defined(diff_map_ndc) then ("--diffmap-ndc " +  '"' + diff_map_ndc + '"') else ""} \
      ~{if defined(diff_map_solver) then ("--diffmap-solver " +  '"' + diff_map_solver + '"') else ""} \
      ~{if defined(diff_map_max_t) then ("--diffmap-maxt " +  '"' + diff_map_max_t + '"') else ""} \
      ~{if (diff_map_to_three_d) then "--diffmap-to-3d" else ""} \
      ~{if defined(calculate_pseudo_time) then ("--calculate-pseudotime " +  '"' + calculate_pseudo_time + '"') else ""} \
      ~{if (louvain) then "--louvain" else ""} \
      ~{if defined(louvain_resolution) then ("--louvain-resolution " +  '"' + louvain_resolution + '"') else ""} \
      ~{if defined(louvain_class_label) then ("--louvain-class-label " +  '"' + louvain_class_label + '"') else ""} \
      ~{if (leiden) then "--leiden" else ""} \
      ~{if defined(leiden_resolution) then ("--leiden-resolution " +  '"' + leiden_resolution + '"') else ""} \
      ~{if defined(leiden_niter) then ("--leiden-niter " +  '"' + leiden_niter + '"') else ""} \
      ~{if defined(leiden_class_label) then ("--leiden-class-label " +  '"' + leiden_class_label + '"') else ""} \
      ~{if (spectral_louvain) then "--spectral-louvain" else ""} \
      ~{if defined(spectral_louvain_basis) then ("--spectral-louvain-basis " +  '"' + spectral_louvain_basis + '"') else ""} \
      ~{if defined(spectral_louvain_n_clusters) then ("--spectral-louvain-nclusters " +  '"' + spectral_louvain_n_clusters + '"') else ""} \
      ~{if defined(spectral_louvain_n_clusters_two) then ("--spectral-louvain-nclusters2 " +  '"' + spectral_louvain_n_clusters_two + '"') else ""} \
      ~{if defined(spectral_louvain_nin_it) then ("--spectral-louvain-ninit " +  '"' + spectral_louvain_nin_it + '"') else ""} \
      ~{if defined(spectral_louvain_resolution) then ("--spectral-louvain-resolution " +  '"' + spectral_louvain_resolution + '"') else ""} \
      ~{if defined(spectral_louvain_class_label) then ("--spectral-louvain-class-label " +  '"' + spectral_louvain_class_label + '"') else ""} \
      ~{if (spectral_leiden) then "--spectral-leiden" else ""} \
      ~{if defined(spectral_leiden_basis) then ("--spectral-leiden-basis " +  '"' + spectral_leiden_basis + '"') else ""} \
      ~{if defined(spectral_leiden_n_clusters) then ("--spectral-leiden-nclusters " +  '"' + spectral_leiden_n_clusters + '"') else ""} \
      ~{if defined(spectral_leiden_n_clusters_two) then ("--spectral-leiden-nclusters2 " +  '"' + spectral_leiden_n_clusters_two + '"') else ""} \
      ~{if defined(spectral_leiden_nin_it) then ("--spectral-leiden-ninit " +  '"' + spectral_leiden_nin_it + '"') else ""} \
      ~{if defined(spectral_leiden_resolution) then ("--spectral-leiden-resolution " +  '"' + spectral_leiden_resolution + '"') else ""} \
      ~{if defined(spectral_leiden_class_label) then ("--spectral-leiden-class-label " +  '"' + spectral_leiden_class_label + '"') else ""} \
      ~{if (tsn_e) then "--tsne" else ""} \
      ~{if defined(tsn_e_perplexity) then ("--tsne-perplexity " +  '"' + tsn_e_perplexity + '"') else ""} \
      ~{if defined(tsn_e_initialization) then ("--tsne-initialization " +  '"' + tsn_e_initialization + '"') else ""} \
      ~{if (u_map) then "--umap" else ""} \
      ~{if defined(u_map_k) then ("--umap-K " +  '"' + u_map_k + '"') else ""} \
      ~{if defined(u_map_min_dist) then ("--umap-min-dist " +  '"' + u_map_min_dist + '"') else ""} \
      ~{if defined(u_map_spread) then ("--umap-spread " +  '"' + u_map_spread + '"') else ""} \
      ~{if (fle) then "--fle" else ""} \
      ~{if defined(fle_k) then ("--fle-K " +  '"' + fle_k + '"') else ""} \
      ~{if defined(fle_target_change_per_node) then ("--fle-target-change-per-node " +  '"' + fle_target_change_per_node + '"') else ""} \
      ~{if defined(fle_target_steps) then ("--fle-target-steps " +  '"' + fle_target_steps + '"') else ""} \
      ~{if defined(fle_memory) then ("--fle-memory " +  '"' + fle_memory + '"') else ""} \
      ~{if defined(net_down_sample_fraction) then ("--net-down-sample-fraction " +  '"' + net_down_sample_fraction + '"') else ""} \
      ~{if defined(net_down_sample_k) then ("--net-down-sample-K " +  '"' + net_down_sample_k + '"') else ""} \
      ~{if defined(net_down_sample_alpha) then ("--net-down-sample-alpha " +  '"' + net_down_sample_alpha + '"') else ""} \
      ~{if defined(net_regressor_l_two_penalty) then ("--net-regressor-L2-penalty " +  '"' + net_regressor_l_two_penalty + '"') else ""} \
      ~{if (net_u_map) then "--net-umap" else ""} \
      ~{if defined(net_u_map_polish_learning_rate) then ("--net-umap-polish-learning-rate " +  '"' + net_u_map_polish_learning_rate + '"') else ""} \
      ~{if defined(net_u_map_polish_n_epochs) then ("--net-umap-polish-nepochs " +  '"' + net_u_map_polish_n_epochs + '"') else ""} \
      ~{if defined(net_u_map_out_basis) then ("--net-umap-out-basis " +  '"' + net_u_map_out_basis + '"') else ""} \
      ~{if (net_fle) then "--net-fle" else ""} \
      ~{if defined(net_fle_polish_target_steps) then ("--net-fle-polish-target-steps " +  '"' + net_fle_polish_target_steps + '"') else ""} \
      ~{if defined(net_fle_out_basis) then ("--net-fle-out-basis " +  '"' + net_fle_out_basis + '"') else ""} \
      ~{if (infer_doublets) then "--infer-doublets" else ""} \
      ~{if defined(expected_doublet_rate) then ("--expected-doublet-rate " +  '"' + expected_doublet_rate + '"') else ""} \
      ~{if defined(dbl_cluster_attr) then ("--dbl-cluster-attr " +  '"' + dbl_cluster_attr + '"') else ""} \
      ~{if (cite_seq) then "--citeseq" else ""} \
      ~{if (cite_seq_u_map) then "--citeseq-umap" else ""} \
      ~{if defined(cite_seq_u_map_exclude) then ("--citeseq-umap-exclude " +  '"' + cite_seq_u_map_exclude + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pegasuspy:1.2.0--py38h0213d0e_1"
  }
  parameter_meta {
    threads: "Number of threads. [default: 1]"
    processed: "Input file is processed. Assume quality control, data normalization and log transformation, highly variable gene selection, batch correction/PCA and kNN graph building is done."
    channel: "Use <channel_attr> to create a 'Channel' column metadata field. All cells within a channel are assumed to come from a same batch."
    black_list: "Cell barcode attributes in black list will be popped out. Format is \\\"attr1,attr2,...,attrn\\\"."
    select_singlets: "Only select DemuxEM-predicted singlets for analysis."
    remap_singlets: "Remap singlet names using <remap_string>, where <remap_string> takes the format \\\"new_name_i:old_name_1,old_name_2;new_name_ii:old_name_3;...\\\". For example, if we hashed 5 libraries from 3 samples sample1_lib1, sample1_lib2, sample2_lib1, sample2_lib2 and sample3, we can remap them to 3 samples using this string: \\\"sample1:sample1_lib1,sample1_lib2;sample2:sample2_lib1,sample2_lib2\\\". In this way, the new singlet names will be in metadata field with key 'assignment', while the old names will be kept in metadata field with key 'assignment.orig'."
    subset_singlets: "If select singlets, only select singlets in the <subset_string>, which takes the format \\\"name1,name2,...\\\". Note that if --remap-singlets is specified, subsetting happens after remapping. For example, we can only select singlets from sampe 1 and 3 using \\\"sample1,sample3\\\"."
    genome: "If sample count matrix is in either DGE, mtx, csv, tsv or loom format, use <genome_name> as the genome reference name."
    focus: "Focus analysis on Unimodal data with <keys>. <keys> is a comma-separated list of keys. If None, the self._selected will be the focused one."
    append: "Append Unimodal data <key> to any <keys> in --focus."
    output_loom: "Output loom-formatted file."
    output_h_five_ad: "Output h5ad-formatted file."
    min_genes: "Only keep cells with at least <number> of genes. [default: 500]"
    max_genes: "Only keep cells with less than <number> of genes. [default: 6000]"
    min_um_is: "Only keep cells with at least <number> of UMIs."
    max_um_is: "Only keep cells with less than <number> of UMIs."
    mi_to_prefix: "Prefix for mitochondrial genes. Can provide multiple prefixes for multiple organisms (e.g. \\\"MT-\\\" means to use \\\"MT-\\\", \\\"GRCh38:MT-,mm10:mt-,MT-\\\" means to use \\\"MT-\\\" for GRCh38, \\\"mt-\\\" for mm10 and \\\"MT-\\\" for all other organisms). [default: GRCh38:MT-,mm10:mt-,MT-]"
    percent_mi_to: "Only keep cells with mitochondrial percent less than <percent>%. [default: 20.0]"
    gene_percent_cells: "Only use genes that are expressed in at least <percent>% of cells to select variable genes. [default: 0.05]"
    output_filtration_results: "Output filtration results as a spreadsheet."
    plot_filtration_results: "Plot filtration results as PDF files."
    plot_filtration_fig_size: "Figure size for filtration plots. <figsize> is a comma-separated list of two numbers, the width and height of the figure (e.g. 6,4)."
    min_genes_before_filtration: "If raw data matrix is input, empty barcodes will dominate pre-filtration statistics. To avoid this, for raw data matrix, only consider barcodes with at lease <number> genes for pre-filtration condition. [default: 100]"
    counts_per_cell_after: "Total counts per cell after normalization. [default: 1e5]"
    select_hv_f_flavor: "Highly variable feature selection method. <flavor> can be 'pegasus' or 'Seurat'. [default: pegasus]"
    select_hv_f_n_genes: "Select top <nfeatures> highly variable features. If <flavor> is 'Seurat' and <nfeatures> is 'None', select HVGs with z-score cutoff at 0.5. [default: 2000]"
    no_select_hv_f: "Do not select highly variable features."
    plot_hv_f: "Plot highly variable feature selection."
    correct_batch_effect: "Correct for batch effects."
    correction_method: "Batch correction method, can be either 'L/S' for location/scale adjustment algorithm (Li and Wong. The analysis of Gene Expression Data 2003) or 'harmony' for Harmony (Korsunsky et al. Nature Methods 2019) or 'scanorama' for Scanorama (Hie et al. Nature Biotechnology 2019). [default: harmony]"
    batch_group_by: "Only valid if correction method is L/S. Batch correction assumes the differences in gene expression between channels are due to batch effects. However, in many cases, we know that channels can be partitioned into several groups and each group is biologically different from others. In this case, we will only perform batch correction for channels within each group. This option defines the groups. If <expression> is None, we assume all channels are from one group. Otherwise, groups are defined according to <expression>. <expression> takes the form of either 'attr', or 'attr1+attr2+...+attrn', or 'attr=value11,...,value1n_1;value21,...,value2n_2;...;valuem1,...,valuemn_m'. In the first form, 'attr' should be an existing sample attribute, and groups are defined by 'attr'. In the second form, 'attr1',...,'attrn' are n existing sample attributes and groups are defined by the Cartesian product of these n attributes. In the last form, there will be m + 1 groups. A cell belongs to group i (i > 0) if and only if its sample attribute 'attr' has a value among valuei1,...,valuein_i. A cell belongs to group 0 if it does not belong to any other groups."
    harmony_n_clusters: "Number of clusters used for Harmony batch correction."
    random_state: "Random number generator seed. [default: 0]"
    temp_folder: "Joblib temporary folder for memmapping numpy arrays."
    calc_signature_scores: "Calculate signature scores for gene sets in <sig_list>. <sig_list> is a comma-separated list of strings. Each string should either be a <GMT_file> or one of 'cell_cycle_human', 'cell_cycle_mouse', 'gender_human', 'gender_mouse', 'mitochondrial_genes_human', 'mitochondrial_genes_mouse', 'ribosomal_genes_human' and 'ribosomal_genes_mouse'."
    pc_a_n: "Number of principal components. [default: 50]"
    pc_a_robust: "Use 'arpack' instead of 'randomized' as svd_solver for large sparse matrices. It will take longer time to compute PCs, but the results are more numerically stable."
    knn_k: "Number of nearest neighbors for building kNN graph. [default: 100]"
    knn_full_speed: "For the sake of reproducibility, we only run one thread for building kNN indices. Turn on this option will allow multiple threads to be used for index building. However, it will also reduce reproducibility due to the racing between multiple threads."
    kb_et: "Calculate kBET."
    kb_et_batch: "kBET batch keyword. [default: Channel]"
    kb_et_alpha: "kBET rejection alpha. [default: 0.05]"
    kb_et_k: "kBET K. [default: 25]"
    diff_map: "Calculate diffusion maps."
    diff_map_ndc: "Number of diffusion components. [default: 100]"
    diff_map_solver: "Solver for eigen decomposition, either 'eigsh' or 'randomized'. [default: eigsh]"
    diff_map_max_t: "Maximum time stamp to search for the knee point. [default: 5000]"
    diff_map_to_three_d: "If map diffusion map into 3D space using PCA."
    calculate_pseudo_time: "Calculate diffusion-based pseudotimes based on <roots>. <roots> should be a comma-separated list of cell barcodes."
    louvain: "Run louvain clustering algorithm."
    louvain_resolution: "Resolution parameter for the louvain clustering algorithm. [default: 1.3]"
    louvain_class_label: "Louvain cluster label name in result. [default: louvain_labels]"
    leiden: "Run leiden clustering algorithm."
    leiden_resolution: "Resolution parameter for the leiden clustering algorithm. [default: 1.3]"
    leiden_niter: "Number of iterations of running the Leiden algorithm. If <niter> is negative, run Leiden iteratively until no improvement. [default: -1]"
    leiden_class_label: "Leiden cluster label name in result. [default: leiden_labels]"
    spectral_louvain: "Run spectral-louvain clustering algorithm."
    spectral_louvain_basis: "Basis used for KMeans clustering. Can be 'pca' or 'diffmap'. If 'diffmap' is not calculated, use 'pca' instead. [default: diffmap]"
    spectral_louvain_n_clusters: "Number of first level clusters for Kmeans. [default: 30]"
    spectral_louvain_n_clusters_two: "Number of second level clusters for Kmeans. [default: 50]"
    spectral_louvain_nin_it: "Number of Kmeans tries for first level clustering. Default is the same as scikit-learn Kmeans function. [default: 10]"
    spectral_louvain_resolution: "Resolution parameter for louvain. [default: 1.3]"
    spectral_louvain_class_label: "Spectral-louvain label name in result. [default: spectral_louvain_labels]"
    spectral_leiden: "Run spectral-leiden clustering algorithm."
    spectral_leiden_basis: "Basis used for KMeans clustering. Can be 'pca' or 'diffmap'. If 'diffmap' is not calculated, use 'pca' instead. [default: diffmap]"
    spectral_leiden_n_clusters: "Number of first level clusters for Kmeans. [default: 30]"
    spectral_leiden_n_clusters_two: "Number of second level clusters for Kmeans. [default: 50]"
    spectral_leiden_nin_it: "Number of Kmeans tries for first level clustering. Default is the same as scikit-learn Kmeans function. [default: 10]"
    spectral_leiden_resolution: "Resolution parameter for leiden. [default: 1.3]"
    spectral_leiden_class_label: "Spectral-leiden label name in result. [default: spectral_leiden_labels]"
    tsn_e: "Run FIt-SNE package to compute t-SNE embeddings for visualization."
    tsn_e_perplexity: "t-SNE perplexity parameter. [default: 30]"
    tsn_e_initialization: "<choice> can be either 'random' or 'pca'. 'random' refers to random initialization. 'pca' refers to PCA initialization as described in (CITE Kobak et al. 2019) [default: pca]"
    u_map: "Run umap for visualization."
    u_map_k: "K neighbors for umap. [default: 15]"
    u_map_min_dist: "Umap parameter. [default: 0.5]"
    u_map_spread: "Umap parameter. [default: 1.0]"
    fle: "Run force-directed layout embedding."
    fle_k: "K neighbors for building graph for FLE. [default: 50]"
    fle_target_change_per_node: "Target change per node to stop forceAtlas2. [default: 2.0]"
    fle_target_steps: "Maximum number of iterations before stopping the forceAtlas2 algoritm. [default: 5000]"
    fle_memory: "Memory size in GB for the Java FA2 component. [default: 8]"
    net_down_sample_fraction: "Down sampling fraction for net-related visualization. [default: 0.1]"
    net_down_sample_k: "Use <K> neighbors to estimate local density for each data point for down sampling. [default: 25]"
    net_down_sample_alpha: "Weighted down sample, proportional to radius^alpha. [default: 1.0]"
    net_regressor_l_two_penalty: "L2 penalty parameter for the deep net regressor. [default: 0.1]"
    net_u_map: "Run net umap for visualization."
    net_u_map_polish_learning_rate: "After running the deep regressor to predict new coordinate, what is the learning rate to use to polish the coordinates for UMAP. [default: 1.0]"
    net_u_map_polish_n_epochs: "Number of iterations for polishing UMAP run. [default: 40]"
    net_u_map_out_basis: "Output basis for net-UMAP. [default: net_umap]"
    net_fle: "Run net FLE."
    net_fle_polish_target_steps: "After running the deep regressor to predict new coordinate, what is the number of force atlas 2 iterations. [default: 1500]"
    net_fle_out_basis: "Output basis for net-FLE. [default: net_fle]"
    infer_doublets: "Infer doublets using the method described in https://github.com/klarman-cell-observatory/pegasus/raw/master/doublet_detection.pdf. Obs attribute 'doublet_score' stores Scrublet-like doublet scores and attribute 'demux_type' stores 'doublet/singlet' assignments."
    expected_doublet_rate: "The expected doublet rate per sample. By default, calculate the expected rate based on number of cells from the 10x multiplet rate table."
    dbl_cluster_attr: "<attr> refers to a cluster attribute containing cluster labels (e.g. 'louvain_labels'). Doublet clusters will be marked based on <attr> with the following criteria: passing the Fisher's exact test and having >= 50% of cells identified as doublets. By default, the first computed cluster attribute in the list of leiden, louvain, spectral_ledein and spectral_louvain is used."
    cite_seq: "Input data contain both RNA and CITE-Seq modalities. This will set --focus to be the RNA modality and --append to be the CITE-Seq modality. In addition, 'ADT-' will be added in front of each antibody name to avoid name conflict with genes in the RNA modality."
    cite_seq_u_map: "For high quality cells kept in the RNA modality, generate a UMAP based on their antibody expression."
    cite_seq_u_map_exclude: "<list> is a comma-separated list of antibodies to be excluded from the UMAP calculation (e.g. Mouse-IgG1,Mouse-IgG2a)."
    input_file: "Input file in either 'zarr', 'h5ad', 'loom', '10x', 'mtx', 'csv', 'tsv' or 'fcs' format. If first-pass analysis has been performed, but you want to run some additional analysis, you could also pass a zarr-formatted file."
    output_name: "Output file name. All outputs will use it as the prefix."
    output_name_dot_zarr_dot_zip: "Output file in Zarr format. To load this file in python, use ``import pegasus; data = pegasus.read_input('output_name.zarr.zip')``. The log-normalized expression matrix is stored in ``data.X`` as a CSR-format sparse matrix. The ``obs`` field contains cell related attributes, including clustering results. For example, ``data.obs_names`` records cell barcodes; ``data.obs['Channel']`` records the channel each cell comes from; ``data.obs['n_genes']``, ``data.obs['n_counts']``, and ``data.obs['percent_mito']`` record the number of expressed genes, total UMI count, and mitochondrial rate for each cell respectively; ``data.obs['louvain_labels']`` and ``data.obs['approx_louvain_labels']`` record each cell's cluster labels using different clustring algorithms; ``data.obs['pseudo_time']`` records the inferred pseudotime for each cell. The ``var`` field contains gene related attributes. For example, ``data.var_names`` records gene symbols, ``data.var['gene_ids']`` records Ensembl gene IDs, and ``data.var['selected']`` records selected variable genes. The ``obsm`` field records embedding coordiates. For example, ``data.obsm['X_pca']`` records PCA coordinates, ``data.obsm['X_tsne']`` records tSNE coordinates, ``data.obsm['X_umap']`` records UMAP coordinates, ``data.obsm['X_diffmap']`` records diffusion map coordinates, ``data.obsm['X_diffmap_pca']`` records the first 3 PCs by projecting the diffusion components using PCA, and ``data.obsm['X_fle']`` records the force-directed layout coordinates from the diffusion components. The ``uns`` field stores other related information, such as reference genome (``data.uns['genome']``). This file can be loaded into R and converted into a Seurat object."
  }
  output {
    File out_stdout = stdout()
    File out_output_loom = "${in_output_loom}"
    File out_output_h_five_ad = "${in_output_h_five_ad}"
  }
}