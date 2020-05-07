class: CommandLineTool
id: oligotype.cwl
inputs:
- id: entropy
  doc: File that contains the columns and the entropy values computer previously
  type: string
  inputBinding:
    position: 0
- id: min_base_quality
  doc: Minimum quality score for each base in locations of interest of a read to be
    considered in an oligotype. When base quality score files are provided, this value
    makes sure that low quality bases that are more likely to be the result of random
    sequencing errors do not create artificial oligotypes. Any read that has less
    quality score than the given value, will simply be discarded. This parameter only
    in effect when --qual- scores-file or --qual-scores-dict parameters are used.
    Defeault is 15.
  type: long
  inputBinding:
    prefix: --min-base-quality
- id: selected_components
  doc: Comma separated entropy components to be used during the oligotyping process.
  type: string
  inputBinding:
    prefix: --selected-components
- id: min_number_of_samples
  doc: Minimum number of samples oligotype expected to appear. The deafult is "5",
    which is another completely arbitrary value. This parameter should be defined
    based on the number of samples included in the analysis. If there are 10 samples,
    3 might be a good choice, if there are 5 samples, 1 would be a better one depending
    on the study. Default is 1.
  type: long
  inputBinding:
    prefix: --min-number-of-samples
- id: min_percent_abundance
  doc: Minimum percent abundance of an oligotype in at least one sample. The default
    is "0.0". Just like --min- number-of-samples parameter, this parameter too is
    to eliminate oligotypes that are formed by sequencing errors occured at the component
    of interest. The value should be decided based on the average number of sequences
    every sample has.
  type: long
  inputBinding:
    prefix: --min-percent-abundance
- id: min_actual_abundance
  doc: Minimum total abundance of an oligotype in all datastes. The default is "0".
    If the total abundance of an oligotype is smaller than the number given with this
    parameter, oligotype would be eliminated and not included in downstream analyses.
    Default is 0.
  type: long
  inputBinding:
    prefix: --min-actual-abundance
- id: min_substantive_abundance
  doc: Unlike "actual" abundance, "substantive" abundance is interested in the abundance
    of the most abundant read in an oligotype. If the abundance of the most abundant
    unique sequence in an oligotype smaller than the number given with this parameter
    the oligotype will be eliminated and not included in downstream analyses. Default
    is 0.
  type: long
  inputBinding:
    prefix: --min-substantive-abundance
- id: sample_name_separator
  doc: Character that separates sample name from unique info in the defline. For insatnce
    if the defline says >sample-1_GD7BRW402IVMZE, the separator should be set to "_"
    (which is the default character).
  type: string
  inputBinding:
    prefix: --sample-name-separator
- id: limit_representative_sequences
  doc: At the end of the oligotyping sequences that are being represented by the same
    oligotype are being uniqued and stored in separate files. The number of sequences
    to keep from the frequency ordered list can be defined with this parameter (e.g.
    -l 10 would make it possible that only first 10 sequence would be stored). Default
    is 0, which stores everything, but when the sample size is too big, this could
    take up disk space.
  type: string
  inputBinding:
    prefix: --limit-representative-sequences
- id: limit_oligo_types_to
  doc: Comma separated list of oligotypes to be taken into account during the analysis.
    All other oligotypes will be discarded if a list of oligotypes is being speficied
    with this parameter.
  type: string
  inputBinding:
    prefix: --limit-oligotypes-to
- id: exclude_oligo_types
  doc: Comma separated list of oligotypes to be excluded from the the analysis.
  type: string
  inputBinding:
    prefix: --exclude-oligotypes
- id: quick
  doc: Some relatively insignificant parts of the analysis may take a lot of time,
    such as generating figures for representative sequences. When this parameter is
    set, all trivial steps would be skipped to give results as soon as possible.
  type: boolean
  inputBinding:
    prefix: --quick
- id: no_figures
  doc: When set, no figures will be generated or displayed.
  type: boolean
  inputBinding:
    prefix: --no-figures
- id: blast_ref_db
  doc: When set, BLAST search will be done locally against the ref db (local BLAST
    search requires NCBI+ tools)
  type: string
  inputBinding:
    prefix: --blast-ref-db
- id: colors_list_file
  doc: Optional file that contains HTML color codes in each line to color oligotypes.
    Number of colors in the file has to be equal or greater than the number of abundant
    oligotypes, for which colors are going to be used for.
  type: string
  inputBinding:
    prefix: --colors-list-file
- id: do_blast_search
  doc: When set, representative sequences will be searched on NCBI.
  type: boolean
  inputBinding:
    prefix: --do-blast-search
- id: no_display
  doc: When set, no figures will be shown.
  type: boolean
  inputBinding:
    prefix: --no-display
- id: skip_gen_html
  doc: Generate static HTML output to browse analysis results.
  type: boolean
  inputBinding:
    prefix: --skip-gen-html
- id: generate_sets
  doc: Agglomerate oligotypes into oligotype sets when their frequency patterns across
    samples are similar. Oligotype sets simply put oligotypes into the same set if
    they co-occur in samples consistenly.
  type: boolean
  inputBinding:
    prefix: --generate-sets
- id: keep_tmp
  doc: When set, directory with temporary results will not be deleted at the end of
    the run. It may be necessary to debug the results
  type: boolean
  inputBinding:
    prefix: --keep-tmp
- id: cosine_similarity_threshold
  doc: This value is used to agglomerate oligotypes into higher order groups. The
    higher the threshold is, the more oligotypes will be pulled together. Cosine similarity
    would return 0 for perfectly similar two vectors. Default is 0.100000.
  type: string
  inputBinding:
    prefix: --cosine-similarity-threshold
- id: sample_mapping
  doc: TAB delimited categorical mapping of samples to be used for post-analysis visualizations.
    Refer to the tutorial for the file format
  type: File
  inputBinding:
    prefix: --sample-mapping
- id: project
  doc: When a project name is set, given name will be used in figures whenever possible.
  type: string
  inputBinding:
    prefix: --project
- id: skip_check_input_file
  doc: When set, input FASTA will not be checked for potential errors
  type: boolean
  inputBinding:
    prefix: --skip-check-input-file
- id: skip_basic_analyses
  doc: When set, basic analyses, such as basic NMDS plots and clustering, will be
    skipped
  type: boolean
  inputBinding:
    prefix: --skip-basic-analyses
- id: skip_gex_f_network_file
  doc: When set, GEXF network file will not be generated
  type: boolean
  inputBinding:
    prefix: --skip-gexf-network-file
- id: no_threading
  doc: When set, oligotyping will not spawn multiple threads. Default behavior is
    multi-threaded whenever possible.
  type: boolean
  inputBinding:
    prefix: --no-threading
- id: number_of_threads
  doc: Number of threads to use. It is a good idea to keep this number smaller than
    the number of CPU cores available. If not set, this number will be set to 90%
    of available cores, or (available cores - 1) if 10% of the cores is a number smaller
    than 1
  type: long
  inputBinding:
    prefix: --number-of-threads
outputs: []
cwlVersion: v1.1
baseCommand:
- oligotype
