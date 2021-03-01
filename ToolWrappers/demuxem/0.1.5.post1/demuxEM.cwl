class: CommandLineTool
id: demuxEM.cwl
inputs:
- id: in_threads
  doc: 'Number of threads. [default: 1]'
  type: long?
  inputBinding:
    prefix: --threads
- id: in_genome
  doc: Reference genome name. If not provided, we will infer it from the expression
    matrix file.
  type: File?
  inputBinding:
    prefix: --genome
- id: in_alpha_on_samples
  doc: 'The Dirichlet prior concentration parameter (alpha) on samples. An alpha value
    < 1.0 will make the prior sparse. [default: 0.0]'
  type: double?
  inputBinding:
    prefix: --alpha-on-samples
- id: in_min_num_genes
  doc: 'We only demultiplex cells/nuclei with at least <number> of expressed genes.
    [default: 100]'
  type: long?
  inputBinding:
    prefix: --min-num-genes
- id: in_min_num_um_is
  doc: 'We only demultiplex cells/nuclei with at least <number> of UMIs. [default:
    100]'
  type: long?
  inputBinding:
    prefix: --min-num-umis
- id: in_min_signal_hash_tag
  doc: 'Any cell/nucleus with less than <count> hashtags from the signal will be marked
    as unknown. [default: 10.0]'
  type: long?
  inputBinding:
    prefix: --min-signal-hashtag
- id: in_random_state
  doc: 'The random seed used in the KMeans algorithm to separate empty ADT droplets
    from others. [default: 0]'
  type: long?
  inputBinding:
    prefix: --random-state
- id: in_generate_diagnostic_plots
  doc: Generate a series of diagnostic plots, including the background/signal between
    HTO counts, estimated background probabilities, HTO distributions of cells and
    non-cells etc.
  type: boolean?
  inputBinding:
    prefix: --generate-diagnostic-plots
- id: in_generate_gender_plot
  doc: Generate violin plots using gender-specific genes (e.g. Xist). <gene> is a
    comma-separated list of gene names.
  type: string?
  inputBinding:
    prefix: --generate-gender-plot
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_input_raw_gene_bc_matrices_h_five
  doc: Input raw RNA expression matrix in 10x hdf5 format.
  type: long
  inputBinding:
    position: 0
- id: in_input_h_to_csv_file
  doc: Input HTO (antibody tag) count matrix in CSV format.
  type: string
  inputBinding:
    position: 1
- id: in_output_name
  doc: Output name. All outputs will use it as the prefix.
  type: string
  inputBinding:
    position: 2
- id: in_output_name_demux_dot_zarr_dot_zip
  doc: RNA expression matrix with demultiplexed sample identities in Zarr format.
  type: string
  inputBinding:
    position: 0
- id: in_output_name_dot_out_dotdemuxemdotzarrdotzip
  doc: DemuxEM-calculated results in Zarr format, containing two datasets, one for
    HTO and one for RNA.
  type: string
  inputBinding:
    position: 1
- id: in_output_name_dot_ambient_hash_tag_do_this_tdot_pdf
  doc: Optional output. A histogram plot depicting hashtag distributions of empty
    droplets and non-empty droplets.
  type: string
  inputBinding:
    position: 2
- id: in_output_name_dot_background_probabilities_dot_bardot_pdf
  doc: Optional output. A bar plot visualizing the estimated hashtag background probability
    distribution.
  type: string
  inputBinding:
    position: 3
- id: in_output_name_dot_real_content_do_this_tdot_pdf
  doc: Optional output. A histogram plot depicting hashtag distributions of not-real-cells
    and real-cells as defined by total number of expressed genes in the RNA assay.
  type: string
  inputBinding:
    position: 4
- id: in_output_name_do_trna_demux_do_this_tdot_pdf
  doc: Optional output. This figure consists of two plots. The first one is a horizontal
    bar plot depicting the percentage of RNA barcodes with at least one HTO count.
    The second plot is a histogram plot depicting RNA UMI distribution for singlets,
    doublets and unknown cells.
  type: string
  inputBinding:
    position: 5
- id: in_output_name_dot_gene_name_dot_violin_dot_pdf
  doc: Optional outputs. Violin plots depicting gender-specific gene expression across
    samples. We can have multiple plots if a gene list is provided in '--generate-gender-plot'
    option.
  type: string
  inputBinding:
    position: 6
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/demuxem:0.1.5.post1--py_0
cwlVersion: v1.1
baseCommand:
- demuxEM
