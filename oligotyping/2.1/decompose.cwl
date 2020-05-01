#!/usr/bin/env cwl-runner

baseCommand:
- decompose
class: CommandLineTool
cwlVersion: v1.0
id: decompose
inputs:
- doc: Alignment file that contains all samples and sequences in FASTA format
  id: file_path
  inputBinding:
    position: 0
  type: File
- doc: 'Minimum entropy for a component to have in order to be picked as a discriminant.
    Defeault: 0.096500'
  id: min_entropy
  inputBinding:
    prefix: --min-entropy
  type: double
- doc: 'Skip the m normalization heuristics. Normalization heuristics normalize --min-entropy
    parameter per node before decomposition depending on the node size, and the most
    abundant sequence in the dataset. Please see the documentation for more comprehensive
    description and best practices. Default: False'
  id: skip_m_normalization
  inputBinding:
    prefix: --skip-m-normalization
  type: boolean
- doc: 'Number of discriminant locations to be used for entropy decomposition discriminant.
    Defeault: 4'
  id: number_of_discriminants
  inputBinding:
    prefix: --number-of-discriminants
  type: long
- doc: Minimum number of reads in a node for decomposition to continue. Decomposition
    will continue for any node that has more reads than this number as far as they
    present an entropy that is larger than --min-entropy. This number should be chosen
    carefully depending on the size of the sample. Althought this parameter is available
    to you for historical reasons, For noise filtering, you are encouraged to use
    --min- substantive-abundance parameter instead.
  id: min_actual_abundance
  inputBinding:
    prefix: --min-actual-abundance
  type: long
- doc: Unlike "actual" abundance, "substantive" abundance is interested in the abundance
    of the most abundant read in a node. If the abundance of the most abundant unique
    sequence in a node is smaller than the number given with this parameter the node
    will be eliminated and not included in downstream analyses. This is the most appropriate,
    and most cases, the only noise filtering parameter. If the user does not set a
    value for minimum substantive abudnance, MED algorithm will set one by default
    by dividing the number of reads in the input dataset by 5,000.
  id: min_substantive_abundance
  inputBinding:
    prefix: --min-substantive-abundance
  type: long
- doc: This parameter is being used to remove "outliers" from nodes. The similarity
    of a read in a node is less than --maximum-variation-allowed than the representative
    sequence of the node, it is identified as an outlier. If not set, this value is
    being computed depending on the average read length.
  id: maximum_variation_allowed
  inputBinding:
    prefix: --maximum-variation-allowed
  type: long
- doc: Character that separates sample name from unique info in the defline. For insatnce
    if the defline says >sample-1_GD7BRW402IVMZE, the separator should be set to "_"
    (which is the default character).
  id: sample_name_separator
  inputBinding:
    prefix: --sample-name-separator
  type: string
- doc: Output directory
  id: output_directory
  inputBinding:
    prefix: --output-directory
  type: string
- doc: When a project name is set, given name will be used in figures whenever possible.
  id: project
  inputBinding:
    prefix: --project
  type: string
- doc: When set, figure with frequency curve for unique reads and entropy distribution
    will be generated for each node. Depending on the number of nodes, this might
    be a time consuming step.
  id: generate_frequency_curves
  inputBinding:
    prefix: --generate-frequency-curves
  type: boolean
- doc: When set, outliers will not be removed from nodes.
  id: skip_removing_outliers
  inputBinding:
    prefix: --skip-removing-outliers
  type: boolean
- doc: When set, nodes that differ from each other by only one nucleotide that happens
    to be observed as an insertion at the upstream or downstream of a homopolymer
    region will be merged.
  id: merge_homopolymer_splits
  inputBinding:
    prefix: --merge-homopolymer-splits
  type: boolean
- doc: 'Outliers are identified in two places: (1) during the raw topology computation
    and (2) during the refinement step where distant reads are removed from nodes.
    This parameter, when set, makes the pipeline go through each read identified as
    an outlier and try to find the best nodes for them. Please read the documentation
    for details. This step might take a long time. Default: False'
  id: relocate_outliers
  inputBinding:
    prefix: --relocate-outliers
  type: boolean
- doc: When set, topology dict with read ids will be generated. This may take a very
    large disk space and computation time for large data sets
  id: store_topology_dict
  inputBinding:
    prefix: --store-topology-dict
  type: boolean
- doc: When set, directory with temporary BLAST results will not be deleted at the
    end of the run. It may be necessary to debug the results
  id: keep_tmp
  inputBinding:
    prefix: --keep-tmp
  type: boolean
- doc: When set, decomposer does not spawn multiple threads. Default behavior is multi-threaded.
  id: no_threading
  inputBinding:
    prefix: --no-threading
  type: boolean
- doc: Number of threads to use. It is a good idea to keep this number smaller than
    the number of CPU cores available. If not set, this number will be set to 90%
    of available cores, or (available cores - 1) if 10% of the cores is a number smaller
    than 1
  id: number_of_threads
  inputBinding:
    prefix: --number-of-threads
  type: long
- doc: TAB delimited categorical mapping of samples to be used for post-analysis visualizations.
    Refer to the tutorial for the file format
  id: sample_mapping
  inputBinding:
    prefix: --sample-mapping
  type: File
- doc: When set, decomposer will generate a static HTML output to browse analysis
    results
  id: skip_gen_html
  inputBinding:
    prefix: --skip-gen-html
  type: boolean
- doc: When set, decomposer will not attempt to generate figures post analysis
  id: skip_gen_figures
  inputBinding:
    prefix: --skip-gen-figures
  type: boolean
- doc: When set, input FASTA will not be checked for potential errors
  id: skip_check_input_file
  inputBinding:
    prefix: --skip-check-input-file
  type: boolean
- doc: When set, GEXF files for network and topology will not be generated
  id: skip_gex_f_files
  inputBinding:
    prefix: --skip-gexf-files
  type: boolean
- doc: When set, the pipeline will do only the essential steps, skipping anything
    auxiliary, even if other parameters require otherwise. Please do not use it other
    than benchmarking or testing purposes
  id: quick
  inputBinding:
    prefix: --quick
  type: boolean
