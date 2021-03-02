version 1.0

task PegasusDemuxEM {
  input {
    Int? threads
    File? genome
    Float? alpha_on_samples
    Int? min_num_genes
    Int? min_num_um_is
    Int? min_signal_hash_tag
    Int? random_state
    Boolean? generate_diagnostic_plots
    String? generate_gender_plot
    Boolean? v
    Int input_raw_gene_bc_matrices_h_five
    String input_h_to_csv_file
    String output_name
    String output_name_demux_dot_zarr_dot_zip
    String output_name_dot_out_dotdemuxemdotzarrdotzip
    String output_name_dot_ambient_hash_tag_do_this_tdot_pdf
    String output_name_dot_background_probabilities_dot_bardot_pdf
    String output_name_dot_real_content_do_this_tdot_pdf
    String output_name_do_trna_demux_do_this_tdot_pdf
    String output_name_dot_gene_name_dot_violin_dot_pdf
  }
  command <<<
    pegasus demuxEM \
      ~{input_raw_gene_bc_matrices_h_five} \
      ~{input_h_to_csv_file} \
      ~{output_name} \
      ~{output_name_demux_dot_zarr_dot_zip} \
      ~{output_name_dot_out_dotdemuxemdotzarrdotzip} \
      ~{output_name_dot_ambient_hash_tag_do_this_tdot_pdf} \
      ~{output_name_dot_background_probabilities_dot_bardot_pdf} \
      ~{output_name_dot_real_content_do_this_tdot_pdf} \
      ~{output_name_do_trna_demux_do_this_tdot_pdf} \
      ~{output_name_dot_gene_name_dot_violin_dot_pdf} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(alpha_on_samples) then ("--alpha-on-samples " +  '"' + alpha_on_samples + '"') else ""} \
      ~{if defined(min_num_genes) then ("--min-num-genes " +  '"' + min_num_genes + '"') else ""} \
      ~{if defined(min_num_um_is) then ("--min-num-umis " +  '"' + min_num_um_is + '"') else ""} \
      ~{if defined(min_signal_hash_tag) then ("--min-signal-hashtag " +  '"' + min_signal_hash_tag + '"') else ""} \
      ~{if defined(random_state) then ("--random-state " +  '"' + random_state + '"') else ""} \
      ~{if (generate_diagnostic_plots) then "--generate-diagnostic-plots" else ""} \
      ~{if defined(generate_gender_plot) then ("--generate-gender-plot " +  '"' + generate_gender_plot + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pegasuspy:1.2.0--py38h0213d0e_1"
  }
  parameter_meta {
    threads: "Number of threads. [default: 1]"
    genome: "Reference genome name. If not provided, we will infer it from the expression matrix file."
    alpha_on_samples: "The Dirichlet prior concentration parameter (alpha) on samples. An alpha value < 1.0 will make the prior sparse. [default: 0.0]"
    min_num_genes: "We only demultiplex cells/nuclei with at least <number> of expressed genes. [default: 100]"
    min_num_um_is: "We only demultiplex cells/nuclei with at least <number> of UMIs. [default: 100]"
    min_signal_hash_tag: "Any cell/nucleus with less than <count> hashtags from the signal will be marked as unknown. [default: 10.0]"
    random_state: "The random seed used in the KMeans algorithm to separate empty ADT droplets from others. [default: 0]"
    generate_diagnostic_plots: "Generate a series of diagnostic plots, including the background/signal between HTO counts, estimated background probabilities, HTO distributions of cells and non-cells etc."
    generate_gender_plot: "Generate violin plots using gender-specific genes (e.g. Xist). <gene> is a comma-separated list of gene names."
    v: ""
    input_raw_gene_bc_matrices_h_five: "Input raw RNA expression matrix in 10x hdf5 format."
    input_h_to_csv_file: "Input HTO (antibody tag) count matrix in CSV format."
    output_name: "Output name. All outputs will use it as the prefix."
    output_name_demux_dot_zarr_dot_zip: "RNA expression matrix with demultiplexed sample identities in Zarr format."
    output_name_dot_out_dotdemuxemdotzarrdotzip: "DemuxEM-calculated results in Zarr format, containing two datasets, one for HTO and one for RNA."
    output_name_dot_ambient_hash_tag_do_this_tdot_pdf: "Optional output. A histogram plot depicting hashtag distributions of empty droplets and non-empty droplets."
    output_name_dot_background_probabilities_dot_bardot_pdf: "Optional output. A bar plot visualizing the estimated hashtag background probability distribution."
    output_name_dot_real_content_do_this_tdot_pdf: "Optional output. A histogram plot depicting hashtag distributions of not-real-cells and real-cells as defined by total number of expressed genes in the RNA assay."
    output_name_do_trna_demux_do_this_tdot_pdf: "Optional output. This figure consists of two plots. The first one is a horizontal bar plot depicting the percentage of RNA barcodes with at least one HTO count. The second plot is a histogram plot depicting RNA UMI distribution for singlets, doublets and unknown cells."
    output_name_dot_gene_name_dot_violin_dot_pdf: "Optional outputs. Violin plots depicting gender-specific gene expression across samples. We can have multiple plots if a gene list is provided in '--generate-gender-plot' option."
  }
  output {
    File out_stdout = stdout()
  }
}