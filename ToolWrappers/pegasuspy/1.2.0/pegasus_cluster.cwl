class: CommandLineTool
id: pegasus_cluster.cwl
inputs:
- id: in_threads
  doc: 'Number of threads. [default: 1]'
  type: long?
  inputBinding:
    prefix: --threads
- id: in_processed
  doc: Input file is processed. Assume quality control, data normalization and log
    transformation, highly variable gene selection, batch correction/PCA and kNN graph
    building is done.
  type: boolean?
  inputBinding:
    prefix: --processed
- id: in_channel
  doc: Use <channel_attr> to create a 'Channel' column metadata field. All cells within
    a channel are assumed to come from a same batch.
  type: string?
  inputBinding:
    prefix: --channel
- id: in_black_list
  doc: Cell barcode attributes in black list will be popped out. Format is "attr1,attr2,...,attrn".
  type: long?
  inputBinding:
    prefix: --black-list
- id: in_select_singlets
  doc: Only select DemuxEM-predicted singlets for analysis.
  type: boolean?
  inputBinding:
    prefix: --select-singlets
- id: in_remap_singlets
  doc: "Remap singlet names using <remap_string>, where <remap_string> takes the format\
    \ \"new_name_i:old_name_1,old_name_2;new_name_ii:old_name_3;...\". For example,\
    \ if we hashed 5 libraries from 3 samples sample1_lib1, sample1_lib2, sample2_lib1,\
    \ sample2_lib2 and sample3, we can remap them to 3 samples using this string:\
    \ \"sample1:sample1_lib1,sample1_lib2;sample2:sample2_lib1,sample2_lib2\". In\
    \ this way, the new singlet names will be in metadata field with key 'assignment',\
    \ while the old names will be kept in metadata field with key 'assignment.orig'."
  type: string?
  inputBinding:
    prefix: --remap-singlets
- id: in_subset_singlets
  doc: If select singlets, only select singlets in the <subset_string>, which takes
    the format "name1,name2,...". Note that if --remap-singlets is specified, subsetting
    happens after remapping. For example, we can only select singlets from sampe 1
    and 3 using "sample1,sample3".
  type: long?
  inputBinding:
    prefix: --subset-singlets
- id: in_genome
  doc: If sample count matrix is in either DGE, mtx, csv, tsv or loom format, use
    <genome_name> as the genome reference name.
  type: string?
  inputBinding:
    prefix: --genome
- id: in_focus
  doc: Focus analysis on Unimodal data with <keys>. <keys> is a comma-separated list
    of keys. If None, the self._selected will be the focused one.
  type: string?
  inputBinding:
    prefix: --focus
- id: in_append
  doc: Append Unimodal data <key> to any <keys> in --focus.
  type: string?
  inputBinding:
    prefix: --append
- id: in_output_loom
  doc: Output loom-formatted file.
  type: File?
  inputBinding:
    prefix: --output-loom
- id: in_output_h_five_ad
  doc: Output h5ad-formatted file.
  type: File?
  inputBinding:
    prefix: --output-h5ad
- id: in_min_genes
  doc: 'Only keep cells with at least <number> of genes. [default: 500]'
  type: long?
  inputBinding:
    prefix: --min-genes
- id: in_max_genes
  doc: 'Only keep cells with less than <number> of genes. [default: 6000]'
  type: long?
  inputBinding:
    prefix: --max-genes
- id: in_min_um_is
  doc: Only keep cells with at least <number> of UMIs.
  type: long?
  inputBinding:
    prefix: --min-umis
- id: in_max_um_is
  doc: Only keep cells with less than <number> of UMIs.
  type: long?
  inputBinding:
    prefix: --max-umis
- id: in_mi_to_prefix
  doc: 'Prefix for mitochondrial genes. Can provide multiple prefixes for multiple
    organisms (e.g. "MT-" means to use "MT-", "GRCh38:MT-,mm10:mt-,MT-" means to use
    "MT-" for GRCh38, "mt-" for mm10 and "MT-" for all other organisms). [default:
    GRCh38:MT-,mm10:mt-,MT-]'
  type: long?
  inputBinding:
    prefix: --mito-prefix
- id: in_percent_mi_to
  doc: 'Only keep cells with mitochondrial percent less than <percent>%. [default:
    20.0]'
  type: double?
  inputBinding:
    prefix: --percent-mito
- id: in_gene_percent_cells
  doc: 'Only use genes that are expressed in at least <percent>% of cells to select
    variable genes. [default: 0.05]'
  type: double?
  inputBinding:
    prefix: --gene-percent-cells
- id: in_output_filtration_results
  doc: Output filtration results as a spreadsheet.
  type: boolean?
  inputBinding:
    prefix: --output-filtration-results
- id: in_plot_filtration_results
  doc: Plot filtration results as PDF files.
  type: boolean?
  inputBinding:
    prefix: --plot-filtration-results
- id: in_plot_filtration_fig_size
  doc: Figure size for filtration plots. <figsize> is a comma-separated list of two
    numbers, the width and height of the figure (e.g. 6,4).
  type: long?
  inputBinding:
    prefix: --plot-filtration-figsize
- id: in_min_genes_before_filtration
  doc: 'If raw data matrix is input, empty barcodes will dominate pre-filtration statistics.
    To avoid this, for raw data matrix, only consider barcodes with at lease <number>
    genes for pre-filtration condition. [default: 100]'
  type: long?
  inputBinding:
    prefix: --min-genes-before-filtration
- id: in_counts_per_cell_after
  doc: 'Total counts per cell after normalization. [default: 1e5]'
  type: long?
  inputBinding:
    prefix: --counts-per-cell-after
- id: in_select_hv_f_flavor
  doc: "Highly variable feature selection method. <flavor> can be 'pegasus' or 'Seurat'.\
    \ [default: pegasus]"
  type: string?
  inputBinding:
    prefix: --select-hvf-flavor
- id: in_select_hv_f_n_genes
  doc: "Select top <nfeatures> highly variable features. If <flavor> is 'Seurat' and\
    \ <nfeatures> is 'None', select HVGs with z-score cutoff at 0.5. [default: 2000]"
  type: double?
  inputBinding:
    prefix: --select-hvf-ngenes
- id: in_no_select_hv_f
  doc: Do not select highly variable features.
  type: boolean?
  inputBinding:
    prefix: --no-select-hvf
- id: in_plot_hv_f
  doc: Plot highly variable feature selection.
  type: boolean?
  inputBinding:
    prefix: --plot-hvf
- id: in_correct_batch_effect
  doc: Correct for batch effects.
  type: boolean?
  inputBinding:
    prefix: --correct-batch-effect
- id: in_correction_method
  doc: "Batch correction method, can be either 'L/S' for location/scale adjustment\
    \ algorithm (Li and Wong. The analysis of Gene Expression Data 2003) or 'harmony'\
    \ for Harmony (Korsunsky et al. Nature Methods 2019) or 'scanorama' for Scanorama\
    \ (Hie et al. Nature Biotechnology 2019). [default: harmony]"
  type: long?
  inputBinding:
    prefix: --correction-method
- id: in_batch_group_by
  doc: Only valid if correction method is L/S. Batch correction assumes the differences
    in gene expression between channels are due to batch effects. However, in many
    cases, we know that channels can be partitioned into several groups and each group
    is biologically different from others. In this case, we will only perform batch
    correction for channels within each group. This option defines the groups. If
    <expression> is None, we assume all channels are from one group. Otherwise, groups
    are defined according to <expression>. <expression> takes the form of either 'attr',
    or 'attr1+attr2+...+attrn', or 'attr=value11,...,value1n_1;value21,...,value2n_2;...;valuem1,...,valuemn_m'.
    In the first form, 'attr' should be an existing sample attribute, and groups are
    defined by 'attr'. In the second form, 'attr1',...,'attrn' are n existing sample
    attributes and groups are defined by the Cartesian product of these n attributes.
    In the last form, there will be m + 1 groups. A cell belongs to group i (i > 0)
    if and only if its sample attribute 'attr' has a value among valuei1,...,valuein_i.
    A cell belongs to group 0 if it does not belong to any other groups.
  type: long?
  inputBinding:
    prefix: --batch-group-by
- id: in_harmony_n_clusters
  doc: Number of clusters used for Harmony batch correction.
  type: long?
  inputBinding:
    prefix: --harmony-nclusters
- id: in_random_state
  doc: 'Random number generator seed. [default: 0]'
  type: long?
  inputBinding:
    prefix: --random-state
- id: in_temp_folder
  doc: Joblib temporary folder for memmapping numpy arrays.
  type: Directory?
  inputBinding:
    prefix: --temp-folder
- id: in_calc_signature_scores
  doc: Calculate signature scores for gene sets in <sig_list>. <sig_list> is a comma-separated
    list of strings. Each string should either be a <GMT_file> or one of 'cell_cycle_human',
    'cell_cycle_mouse', 'gender_human', 'gender_mouse', 'mitochondrial_genes_human',
    'mitochondrial_genes_mouse', 'ribosomal_genes_human' and 'ribosomal_genes_mouse'.
  type: string?
  inputBinding:
    prefix: --calc-signature-scores
- id: in_pc_a_n
  doc: 'Number of principal components. [default: 50]'
  type: long?
  inputBinding:
    prefix: --pca-n
- id: in_pc_a_robust
  doc: Use 'arpack' instead of 'randomized' as svd_solver for large sparse matrices.
    It will take longer time to compute PCs, but the results are more numerically
    stable.
  type: boolean?
  inputBinding:
    prefix: --pca-robust
- id: in_knn_k
  doc: 'Number of nearest neighbors for building kNN graph. [default: 100]'
  type: long?
  inputBinding:
    prefix: --knn-K
- id: in_knn_full_speed
  doc: For the sake of reproducibility, we only run one thread for building kNN indices.
    Turn on this option will allow multiple threads to be used for index building.
    However, it will also reduce reproducibility due to the racing between multiple
    threads.
  type: boolean?
  inputBinding:
    prefix: --knn-full-speed
- id: in_kb_et
  doc: Calculate kBET.
  type: boolean?
  inputBinding:
    prefix: --kBET
- id: in_kb_et_batch
  doc: 'kBET batch keyword. [default: Channel]'
  type: string?
  inputBinding:
    prefix: --kBET-batch
- id: in_kb_et_alpha
  doc: 'kBET rejection alpha. [default: 0.05]'
  type: double?
  inputBinding:
    prefix: --kBET-alpha
- id: in_kb_et_k
  doc: 'kBET K. [default: 25]'
  type: long?
  inputBinding:
    prefix: --kBET-K
- id: in_diff_map
  doc: Calculate diffusion maps.
  type: boolean?
  inputBinding:
    prefix: --diffmap
- id: in_diff_map_ndc
  doc: 'Number of diffusion components. [default: 100]'
  type: long?
  inputBinding:
    prefix: --diffmap-ndc
- id: in_diff_map_solver
  doc: "Solver for eigen decomposition, either 'eigsh' or 'randomized'. [default:\
    \ eigsh]"
  type: string?
  inputBinding:
    prefix: --diffmap-solver
- id: in_diff_map_max_t
  doc: 'Maximum time stamp to search for the knee point. [default: 5000]'
  type: long?
  inputBinding:
    prefix: --diffmap-maxt
- id: in_diff_map_to_three_d
  doc: If map diffusion map into 3D space using PCA.
  type: boolean?
  inputBinding:
    prefix: --diffmap-to-3d
- id: in_calculate_pseudo_time
  doc: Calculate diffusion-based pseudotimes based on <roots>. <roots> should be a
    comma-separated list of cell barcodes.
  type: string?
  inputBinding:
    prefix: --calculate-pseudotime
- id: in_louvain
  doc: Run louvain clustering algorithm.
  type: boolean?
  inputBinding:
    prefix: --louvain
- id: in_louvain_resolution
  doc: 'Resolution parameter for the louvain clustering algorithm. [default: 1.3]'
  type: double?
  inputBinding:
    prefix: --louvain-resolution
- id: in_louvain_class_label
  doc: 'Louvain cluster label name in result. [default: louvain_labels]'
  type: string?
  inputBinding:
    prefix: --louvain-class-label
- id: in_leiden
  doc: Run leiden clustering algorithm.
  type: boolean?
  inputBinding:
    prefix: --leiden
- id: in_leiden_resolution
  doc: 'Resolution parameter for the leiden clustering algorithm. [default: 1.3]'
  type: double?
  inputBinding:
    prefix: --leiden-resolution
- id: in_leiden_niter
  doc: 'Number of iterations of running the Leiden algorithm. If <niter> is negative,
    run Leiden iteratively until no improvement. [default: -1]'
  type: long?
  inputBinding:
    prefix: --leiden-niter
- id: in_leiden_class_label
  doc: 'Leiden cluster label name in result. [default: leiden_labels]'
  type: string?
  inputBinding:
    prefix: --leiden-class-label
- id: in_spectral_louvain
  doc: Run spectral-louvain clustering algorithm.
  type: boolean?
  inputBinding:
    prefix: --spectral-louvain
- id: in_spectral_louvain_basis
  doc: "Basis used for KMeans clustering. Can be 'pca' or 'diffmap'. If 'diffmap'\
    \ is not calculated, use 'pca' instead. [default: diffmap]"
  type: string?
  inputBinding:
    prefix: --spectral-louvain-basis
- id: in_spectral_louvain_n_clusters
  doc: 'Number of first level clusters for Kmeans. [default: 30]'
  type: long?
  inputBinding:
    prefix: --spectral-louvain-nclusters
- id: in_spectral_louvain_n_clusters_two
  doc: 'Number of second level clusters for Kmeans. [default: 50]'
  type: long?
  inputBinding:
    prefix: --spectral-louvain-nclusters2
- id: in_spectral_louvain_nin_it
  doc: 'Number of Kmeans tries for first level clustering. Default is the same as
    scikit-learn Kmeans function. [default: 10]'
  type: long?
  inputBinding:
    prefix: --spectral-louvain-ninit
- id: in_spectral_louvain_resolution
  doc: 'Resolution parameter for louvain. [default: 1.3]'
  type: double?
  inputBinding:
    prefix: --spectral-louvain-resolution
- id: in_spectral_louvain_class_label
  doc: 'Spectral-louvain label name in result. [default: spectral_louvain_labels]'
  type: string?
  inputBinding:
    prefix: --spectral-louvain-class-label
- id: in_spectral_leiden
  doc: Run spectral-leiden clustering algorithm.
  type: boolean?
  inputBinding:
    prefix: --spectral-leiden
- id: in_spectral_leiden_basis
  doc: "Basis used for KMeans clustering. Can be 'pca' or 'diffmap'. If 'diffmap'\
    \ is not calculated, use 'pca' instead. [default: diffmap]"
  type: string?
  inputBinding:
    prefix: --spectral-leiden-basis
- id: in_spectral_leiden_n_clusters
  doc: 'Number of first level clusters for Kmeans. [default: 30]'
  type: long?
  inputBinding:
    prefix: --spectral-leiden-nclusters
- id: in_spectral_leiden_n_clusters_two
  doc: 'Number of second level clusters for Kmeans. [default: 50]'
  type: long?
  inputBinding:
    prefix: --spectral-leiden-nclusters2
- id: in_spectral_leiden_nin_it
  doc: 'Number of Kmeans tries for first level clustering. Default is the same as
    scikit-learn Kmeans function. [default: 10]'
  type: long?
  inputBinding:
    prefix: --spectral-leiden-ninit
- id: in_spectral_leiden_resolution
  doc: 'Resolution parameter for leiden. [default: 1.3]'
  type: double?
  inputBinding:
    prefix: --spectral-leiden-resolution
- id: in_spectral_leiden_class_label
  doc: 'Spectral-leiden label name in result. [default: spectral_leiden_labels]'
  type: string?
  inputBinding:
    prefix: --spectral-leiden-class-label
- id: in_tsn_e
  doc: Run FIt-SNE package to compute t-SNE embeddings for visualization.
  type: boolean?
  inputBinding:
    prefix: --tsne
- id: in_tsn_e_perplexity
  doc: 't-SNE perplexity parameter. [default: 30]'
  type: long?
  inputBinding:
    prefix: --tsne-perplexity
- id: in_tsn_e_initialization
  doc: "<choice> can be either 'random' or 'pca'. 'random' refers to random initialization.\
    \ 'pca' refers to PCA initialization as described in (CITE Kobak et al. 2019)\
    \ [default: pca]"
  type: long?
  inputBinding:
    prefix: --tsne-initialization
- id: in_u_map
  doc: Run umap for visualization.
  type: boolean?
  inputBinding:
    prefix: --umap
- id: in_u_map_k
  doc: 'K neighbors for umap. [default: 15]'
  type: long?
  inputBinding:
    prefix: --umap-K
- id: in_u_map_min_dist
  doc: 'Umap parameter. [default: 0.5]'
  type: long?
  inputBinding:
    prefix: --umap-min-dist
- id: in_u_map_spread
  doc: 'Umap parameter. [default: 1.0]'
  type: double?
  inputBinding:
    prefix: --umap-spread
- id: in_fle
  doc: Run force-directed layout embedding.
  type: boolean?
  inputBinding:
    prefix: --fle
- id: in_fle_k
  doc: 'K neighbors for building graph for FLE. [default: 50]'
  type: long?
  inputBinding:
    prefix: --fle-K
- id: in_fle_target_change_per_node
  doc: 'Target change per node to stop forceAtlas2. [default: 2.0]'
  type: double?
  inputBinding:
    prefix: --fle-target-change-per-node
- id: in_fle_target_steps
  doc: 'Maximum number of iterations before stopping the forceAtlas2 algoritm. [default:
    5000]'
  type: long?
  inputBinding:
    prefix: --fle-target-steps
- id: in_fle_memory
  doc: 'Memory size in GB for the Java FA2 component. [default: 8]'
  type: long?
  inputBinding:
    prefix: --fle-memory
- id: in_net_down_sample_fraction
  doc: 'Down sampling fraction for net-related visualization. [default: 0.1]'
  type: double?
  inputBinding:
    prefix: --net-down-sample-fraction
- id: in_net_down_sample_k
  doc: 'Use <K> neighbors to estimate local density for each data point for down sampling.
    [default: 25]'
  type: long?
  inputBinding:
    prefix: --net-down-sample-K
- id: in_net_down_sample_alpha
  doc: 'Weighted down sample, proportional to radius^alpha. [default: 1.0]'
  type: double?
  inputBinding:
    prefix: --net-down-sample-alpha
- id: in_net_regressor_l_two_penalty
  doc: 'L2 penalty parameter for the deep net regressor. [default: 0.1]'
  type: long?
  inputBinding:
    prefix: --net-regressor-L2-penalty
- id: in_net_u_map
  doc: Run net umap for visualization.
  type: boolean?
  inputBinding:
    prefix: --net-umap
- id: in_net_u_map_polish_learning_rate
  doc: 'After running the deep regressor to predict new coordinate, what is the learning
    rate to use to polish the coordinates for UMAP. [default: 1.0]'
  type: double?
  inputBinding:
    prefix: --net-umap-polish-learning-rate
- id: in_net_u_map_polish_n_epochs
  doc: 'Number of iterations for polishing UMAP run. [default: 40]'
  type: long?
  inputBinding:
    prefix: --net-umap-polish-nepochs
- id: in_net_u_map_out_basis
  doc: 'Output basis for net-UMAP. [default: net_umap]'
  type: string?
  inputBinding:
    prefix: --net-umap-out-basis
- id: in_net_fle
  doc: Run net FLE.
  type: boolean?
  inputBinding:
    prefix: --net-fle
- id: in_net_fle_polish_target_steps
  doc: 'After running the deep regressor to predict new coordinate, what is the number
    of force atlas 2 iterations. [default: 1500]'
  type: long?
  inputBinding:
    prefix: --net-fle-polish-target-steps
- id: in_net_fle_out_basis
  doc: 'Output basis for net-FLE. [default: net_fle]'
  type: string?
  inputBinding:
    prefix: --net-fle-out-basis
- id: in_infer_doublets
  doc: Infer doublets using the method described in https://github.com/klarman-cell-observatory/pegasus/raw/master/doublet_detection.pdf.
    Obs attribute 'doublet_score' stores Scrublet-like doublet scores and attribute
    'demux_type' stores 'doublet/singlet' assignments.
  type: boolean?
  inputBinding:
    prefix: --infer-doublets
- id: in_expected_doublet_rate
  doc: The expected doublet rate per sample. By default, calculate the expected rate
    based on number of cells from the 10x multiplet rate table.
  type: long?
  inputBinding:
    prefix: --expected-doublet-rate
- id: in_dbl_cluster_attr
  doc: "<attr> refers to a cluster attribute containing cluster labels (e.g. 'louvain_labels').\
    \ Doublet clusters will be marked based on <attr> with the following criteria:\
    \ passing the Fisher's exact test and having >= 50% of cells identified as doublets.\
    \ By default, the first computed cluster attribute in the list of leiden, louvain,\
    \ spectral_ledein and spectral_louvain is used."
  type: long?
  inputBinding:
    prefix: --dbl-cluster-attr
- id: in_cite_seq
  doc: Input data contain both RNA and CITE-Seq modalities. This will set --focus
    to be the RNA modality and --append to be the CITE-Seq modality. In addition,
    'ADT-' will be added in front of each antibody name to avoid name conflict with
    genes in the RNA modality.
  type: boolean?
  inputBinding:
    prefix: --citeseq
- id: in_cite_seq_u_map
  doc: For high quality cells kept in the RNA modality, generate a UMAP based on their
    antibody expression.
  type: boolean?
  inputBinding:
    prefix: --citeseq-umap
- id: in_cite_seq_u_map_exclude
  doc: <list> is a comma-separated list of antibodies to be excluded from the UMAP
    calculation (e.g. Mouse-IgG1,Mouse-IgG2a).
  type: long?
  inputBinding:
    prefix: --citeseq-umap-exclude
- id: in_input_file
  doc: Input file in either 'zarr', 'h5ad', 'loom', '10x', 'mtx', 'csv', 'tsv' or
    'fcs' format. If first-pass analysis has been performed, but you want to run some
    additional analysis, you could also pass a zarr-formatted file.
  type: string
  inputBinding:
    position: 0
- id: in_output_name
  doc: Output file name. All outputs will use it as the prefix.
  type: string
  inputBinding:
    position: 1
- id: in_output_name_dot_zarr_dot_zip
  doc: Output file in Zarr format. To load this file in python, use ``import pegasus;
    data = pegasus.read_input('output_name.zarr.zip')``. The log-normalized expression
    matrix is stored in ``data.X`` as a CSR-format sparse matrix. The ``obs`` field
    contains cell related attributes, including clustering results. For example, ``data.obs_names``
    records cell barcodes; ``data.obs['Channel']`` records the channel each cell comes
    from; ``data.obs['n_genes']``, ``data.obs['n_counts']``, and ``data.obs['percent_mito']``
    record the number of expressed genes, total UMI count, and mitochondrial rate
    for each cell respectively; ``data.obs['louvain_labels']`` and ``data.obs['approx_louvain_labels']``
    record each cell's cluster labels using different clustring algorithms; ``data.obs['pseudo_time']``
    records the inferred pseudotime for each cell. The ``var`` field contains gene
    related attributes. For example, ``data.var_names`` records gene symbols, ``data.var['gene_ids']``
    records Ensembl gene IDs, and ``data.var['selected']`` records selected variable
    genes. The ``obsm`` field records embedding coordiates. For example, ``data.obsm['X_pca']``
    records PCA coordinates, ``data.obsm['X_tsne']`` records tSNE coordinates, ``data.obsm['X_umap']``
    records UMAP coordinates, ``data.obsm['X_diffmap']`` records diffusion map coordinates,
    ``data.obsm['X_diffmap_pca']`` records the first 3 PCs by projecting the diffusion
    components using PCA, and ``data.obsm['X_fle']`` records the force-directed layout
    coordinates from the diffusion components. The ``uns`` field stores other related
    information, such as reference genome (``data.uns['genome']``). This file can
    be loaded into R and converted into a Seurat object.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_loom
  doc: Output loom-formatted file.
  type: File?
  outputBinding:
    glob: $(inputs.in_output_loom)
- id: out_output_h_five_ad
  doc: Output h5ad-formatted file.
  type: File?
  outputBinding:
    glob: $(inputs.in_output_h_five_ad)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pegasuspy:1.2.0--py38h0213d0e_1
cwlVersion: v1.1
baseCommand:
- pegasus
- cluster
