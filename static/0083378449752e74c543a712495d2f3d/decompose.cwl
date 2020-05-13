class: CommandLineTool
id: decompose.cwl
inputs:
- id: file_path
  doc: Alignment file that contains all samples and sequences in FASTA format
  type: File
  inputBinding:
    position: 0
- id: min_entropy
  doc: 'Minimum entropy for a component to have in order to be picked as a discriminant.
    Defeault: 0.096500'
  type: double
  inputBinding:
    prefix: --min-entropy
- id: skip_m_normalization
  doc: 'Skip the m normalization heuristics. Normalization heuristics normalize --min-entropy
    parameter per node before decomposition depending on the node size, and the most
    abundant sequence in the dataset. Please see the documentation for more comprehensive
    description and best practices. Default: False'
  type: boolean
  inputBinding:
    prefix: --skip-m-normalization
- id: number_of_discriminants
  doc: 'Number of discriminant locations to be used for entropy decomposition discriminant.
    Defeault: 4'
  type: long
  inputBinding:
    prefix: --number-of-discriminants
- id: min_actual_abundance
  doc: Minimum number of reads in a node for decomposition to continue. Decomposition
    will continue for any node that has more reads than this number as far as they
    present an entropy that is larger than --min-entropy. This number should be chosen
    carefully depending on the size of the sample. Althought this parameter is available
    to you for historical reasons, For noise filtering, you are encouraged to use
    --min- substantive-abundance parameter instead.
  type: long
  inputBinding:
    prefix: --min-actual-abundance
- id: min_substantive_abundance
  doc: Unlike "actual" abundance, "substantive" abundance is interested in the abundance
    of the most abundant read in a node. If the abundance of the most abundant unique
    sequence in a node is smaller than the number given with this parameter the node
    will be eliminated and not included in downstream analyses. This is the most appropriate,
    and most cases, the only noise filtering parameter. If the user does not set a
    value for minimum substantive abudnance, MED algorithm will set one by default
    by dividing the number of reads in the input dataset by 5,000.
  type: long
  inputBinding:
    prefix: --min-substantive-abundance
- id: maximum_variation_allowed
  doc: This parameter is being used to remove "outliers" from nodes. The similarity
    of a read in a node is less than --maximum-variation-allowed than the representative
    sequence of the node, it is identified as an outlier. If not set, this value is
    being computed depending on the average read length.
  type: long
  inputBinding:
    prefix: --maximum-variation-allowed
- id: sample_name_separator
  doc: Character that separates sample name from unique info in the defline. For insatnce
    if the defline says >sample-1_GD7BRW402IVMZE, the separator should be set to "_"
    (which is the default character).
  type: string
  inputBinding:
    prefix: --sample-name-separator
- id: output_directory
  doc: Output directory
  type: string
  inputBinding:
    prefix: --output-directory
- id: project
  doc: When a project name is set, given name will be used in figures whenever possible.
  type: string
  inputBinding:
    prefix: --project
- id: generate_frequency_curves
  doc: When set, figure with frequency curve for unique reads and entropy distribution
    will be generated for each node. Depending on the number of nodes, this might
    be a time consuming step.
  type: boolean
  inputBinding:
    prefix: --generate-frequency-curves
- id: skip_removing_outliers
  doc: When set, outliers will not be removed from nodes.
  type: boolean
  inputBinding:
    prefix: --skip-removing-outliers
- id: merge_homopolymer_splits
  doc: When set, nodes that differ from each other by only one nucleotide that happens
    to be observed as an insertion at the upstream or downstream of a homopolymer
    region will be merged.
  type: boolean
  inputBinding:
    prefix: --merge-homopolymer-splits
- id: relocate_outliers
  doc: 'Outliers are identified in two places: (1) during the raw topology computation
    and (2) during the refinement step where distant reads are removed from nodes.
    This parameter, when set, makes the pipeline go through each read identified as
    an outlier and try to find the best nodes for them. Please read the documentation
    for details. This step might take a long time. Default: False'
  type: boolean
  inputBinding:
    prefix: --relocate-outliers
- id: store_topology_dict
  doc: When set, topology dict with read ids will be generated. This may take a very
    large disk space and computation time for large data sets
  type: boolean
  inputBinding:
    prefix: --store-topology-dict
- id: keep_tmp
  doc: When set, directory with temporary BLAST results will not be deleted at the
    end of the run. It may be necessary to debug the results
  type: boolean
  inputBinding:
    prefix: --keep-tmp
- id: no_threading
  doc: When set, decomposer does not spawn multiple threads. Default behavior is multi-threaded.
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
- id: sample_mapping
  doc: TAB delimited categorical mapping of samples to be used for post-analysis visualizations.
    Refer to the tutorial for the file format
  type: File
  inputBinding:
    prefix: --sample-mapping
- id: skip_gen_html
  doc: When set, decomposer will generate a static HTML output to browse analysis
    results
  type: boolean
  inputBinding:
    prefix: --skip-gen-html
- id: skip_gen_figures
  doc: When set, decomposer will not attempt to generate figures post analysis
  type: boolean
  inputBinding:
    prefix: --skip-gen-figures
- id: skip_check_input_file
  doc: When set, input FASTA will not be checked for potential errors
  type: boolean
  inputBinding:
    prefix: --skip-check-input-file
- id: skip_gex_f_files
  doc: When set, GEXF files for network and topology will not be generated
  type: boolean
  inputBinding:
    prefix: --skip-gexf-files
- id: quick
  doc: When set, the pipeline will do only the essential steps, skipping anything
    auxiliary, even if other parameters require otherwise. Please do not use it other
    than benchmarking or testing purposes
  type: boolean
  inputBinding:
    prefix: --quick
outputs: []
cwlVersion: v1.1
baseCommand:
- decompose
