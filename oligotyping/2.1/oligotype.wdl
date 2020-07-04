version 1.0

task Oligotype {
  input {
    Int? min_base_quality
    String? selected_components
    Int? min_number_of_samples
    Int? min_percent_abundance
    Int? min_actual_abundance
    Int? min_substantive_abundance
    String? sample_name_separator
    String? limit_representative_sequences
    String? limit_oligo_types_to
    String? exclude_oligo_types
    Boolean? quick
    Boolean? no_figures
    String? blast_ref_db
    String? colors_list_file
    Boolean? do_blast_search
    Boolean? no_display
    Boolean? skip_gen_html
    Boolean? generate_sets
    Boolean? keep_tmp
    String? cosine_similarity_threshold
    File? sample_mapping
    String? project
    Boolean? skip_check_input_file
    Boolean? skip_basic_analyses
    Boolean? skip_gex_f_network_file
    Boolean? no_threading
    Int? number_of_threads
    String? o
    String? c
    String entropy
  }
  command <<<
    oligotype \
      ~{entropy} \
      ~{if defined(min_base_quality) then ("--min-base-quality " +  '"' + min_base_quality + '"') else ""} \
      ~{if defined(selected_components) then ("--selected-components " +  '"' + selected_components + '"') else ""} \
      ~{if defined(min_number_of_samples) then ("--min-number-of-samples " +  '"' + min_number_of_samples + '"') else ""} \
      ~{if defined(min_percent_abundance) then ("--min-percent-abundance " +  '"' + min_percent_abundance + '"') else ""} \
      ~{if defined(min_actual_abundance) then ("--min-actual-abundance " +  '"' + min_actual_abundance + '"') else ""} \
      ~{if defined(min_substantive_abundance) then ("--min-substantive-abundance " +  '"' + min_substantive_abundance + '"') else ""} \
      ~{if defined(sample_name_separator) then ("--sample-name-separator " +  '"' + sample_name_separator + '"') else ""} \
      ~{if defined(limit_representative_sequences) then ("--limit-representative-sequences " +  '"' + limit_representative_sequences + '"') else ""} \
      ~{if defined(limit_oligo_types_to) then ("--limit-oligotypes-to " +  '"' + limit_oligo_types_to + '"') else ""} \
      ~{if defined(exclude_oligo_types) then ("--exclude-oligotypes " +  '"' + exclude_oligo_types + '"') else ""} \
      ~{true="--quick" false="" quick} \
      ~{true="--no-figures" false="" no_figures} \
      ~{if defined(blast_ref_db) then ("--blast-ref-db " +  '"' + blast_ref_db + '"') else ""} \
      ~{if defined(colors_list_file) then ("--colors-list-file " +  '"' + colors_list_file + '"') else ""} \
      ~{true="--do-blast-search" false="" do_blast_search} \
      ~{true="--no-display" false="" no_display} \
      ~{true="--skip-gen-html" false="" skip_gen_html} \
      ~{true="--generate-sets" false="" generate_sets} \
      ~{true="--keep-tmp" false="" keep_tmp} \
      ~{if defined(cosine_similarity_threshold) then ("--cosine-similarity-threshold " +  '"' + cosine_similarity_threshold + '"') else ""} \
      ~{if defined(sample_mapping) then ("--sample-mapping " +  '"' + sample_mapping + '"') else ""} \
      ~{if defined(project) then ("--project " +  '"' + project + '"') else ""} \
      ~{true="--skip-check-input-file" false="" skip_check_input_file} \
      ~{true="--skip-basic-analyses" false="" skip_basic_analyses} \
      ~{true="--skip-gexf-network-file" false="" skip_gex_f_network_file} \
      ~{true="--no-threading" false="" no_threading} \
      ~{if defined(number_of_threads) then ("--number-of-threads " +  '"' + number_of_threads + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""}
  >>>
  parameter_meta {
    min_base_quality: "Minimum quality score for each base in locations of interest of a read to be considered in an oligotype. When base quality score files are provided, this value makes sure that low quality bases that are more likely to be the result of random sequencing errors do not create artificial oligotypes. Any read that has less quality score than the given value, will simply be discarded. This parameter only in effect when --qual- scores-file or --qual-scores-dict parameters are used. Defeault is 15."
    selected_components: "Comma separated entropy components to be used during the oligotyping process."
    min_number_of_samples: "Minimum number of samples oligotype expected to appear. The deafult is \"5\", which is another completely arbitrary value. This parameter should be defined based on the number of samples included in the analysis. If there are 10 samples, 3 might be a good choice, if there are 5 samples, 1 would be a better one depending on the study. Default is 1."
    min_percent_abundance: "Minimum percent abundance of an oligotype in at least one sample. The default is \"0.0\". Just like --min- number-of-samples parameter, this parameter too is to eliminate oligotypes that are formed by sequencing errors occured at the component of interest. The value should be decided based on the average number of sequences every sample has."
    min_actual_abundance: "Minimum total abundance of an oligotype in all datastes. The default is \"0\". If the total abundance of an oligotype is smaller than the number given with this parameter, oligotype would be eliminated and not included in downstream analyses. Default is 0."
    min_substantive_abundance: "Unlike \"actual\" abundance, \"substantive\" abundance is interested in the abundance of the most abundant read in an oligotype. If the abundance of the most abundant unique sequence in an oligotype smaller than the number given with this parameter the oligotype will be eliminated and not included in downstream analyses. Default is 0."
    sample_name_separator: "Character that separates sample name from unique info in the defline. For insatnce if the defline says >sample-1_GD7BRW402IVMZE, the separator should be set to \"_\" (which is the default character)."
    limit_representative_sequences: "At the end of the oligotyping sequences that are being represented by the same oligotype are being uniqued and stored in separate files. The number of sequences to keep from the frequency ordered list can be defined with this parameter (e.g. -l 10 would make it possible that only first 10 sequence would be stored). Default is 0, which stores everything, but when the sample size is too big, this could take up disk space."
    limit_oligo_types_to: "Comma separated list of oligotypes to be taken into account during the analysis. All other oligotypes will be discarded if a list of oligotypes is being speficied with this parameter."
    exclude_oligo_types: "Comma separated list of oligotypes to be excluded from the the analysis."
    quick: "Some relatively insignificant parts of the analysis may take a lot of time, such as generating figures for representative sequences. When this parameter is set, all trivial steps would be skipped to give results as soon as possible."
    no_figures: "When set, no figures will be generated or displayed."
    blast_ref_db: "When set, BLAST search will be done locally against the ref db (local BLAST search requires NCBI+ tools)"
    colors_list_file: "Optional file that contains HTML color codes in each line to color oligotypes. Number of colors in the file has to be equal or greater than the number of abundant oligotypes, for which colors are going to be used for."
    do_blast_search: "When set, representative sequences will be searched on NCBI."
    no_display: "When set, no figures will be shown."
    skip_gen_html: "Generate static HTML output to browse analysis results."
    generate_sets: "Agglomerate oligotypes into oligotype sets when their frequency patterns across samples are similar. Oligotype sets simply put oligotypes into the same set if they co-occur in samples consistenly."
    keep_tmp: "When set, directory with temporary results will not be deleted at the end of the run. It may be necessary to debug the results"
    cosine_similarity_threshold: "This value is used to agglomerate oligotypes into higher order groups. The higher the threshold is, the more oligotypes will be pulled together. Cosine similarity would return 0 for perfectly similar two vectors. Default is 0.100000."
    sample_mapping: "TAB delimited categorical mapping of samples to be used for post-analysis visualizations. Refer to the tutorial for the file format"
    project: "When a project name is set, given name will be used in figures whenever possible."
    skip_check_input_file: "When set, input FASTA will not be checked for potential errors"
    skip_basic_analyses: "When set, basic analyses, such as basic NMDS plots and clustering, will be skipped"
    skip_gex_f_network_file: "When set, GEXF network file will not be generated"
    no_threading: "When set, oligotyping will not spawn multiple threads. Default behavior is multi-threaded whenever possible."
    number_of_threads: "Number of threads to use. It is a good idea to keep this number smaller than the number of CPU cores available. If not set, this number will be set to 90% of available cores, or (available cores - 1) if 10% of the cores is a number smaller than 1"
    o: ""
    c: ""
    entropy: "File that contains the columns and the entropy values computer previously"
  }
}