class: CommandLineTool
id: JAMM.sh.cwl
inputs:
- id: in_directory_containing_sample_files
  doc: directory containing Sample files (required)
  type: boolean
  inputBinding:
    prefix: -s
- id: in_genome_size_file
  doc: Genome size file (required)
  type: boolean
  inputBinding:
    prefix: -g
- id: in_output_directory_required
  doc: Output directory (required)
  type: Directory
  inputBinding:
    prefix: -o
- id: in_directory_containing_input_files
  doc: directory containing input or Control files
  type: boolean
  inputBinding:
    prefix: -c
- id: in_fragment_lengths_default
  doc: 'Fragment length(s) (default: estimated)'
  type: boolean
  inputBinding:
    prefix: -f
- id: in_resolution_peak_region
  doc: 'Resolution, peak or region or window (default: peak)'
  type: boolean
  inputBinding:
    prefix: -r
- id: in_mode_normal_narrow
  doc: 'Mode, normal or narrow (default: normal)'
  type: boolean
  inputBinding:
    prefix: -m
- id: in_clustering_initialization_selection
  doc: 'clustering Initialization window selection, deterministic or stochastic (default:
    deterministic)'
  type: boolean
  inputBinding:
    prefix: -i
- id: in_bin_size_default
  doc: 'Bin Size (default: estimated)'
  type: boolean
  inputBinding:
    prefix: -b
- id: in_minimum_window_size
  doc: 'minimum Window size (default: 2 --- Note: this means minimum_window_size =
    bin_size x the_value_of_-w)'
  type: boolean
  inputBinding:
    prefix: -w
- id: in_window_enrichment_cutoff
  doc: 'window Enrichment cutoff, auto or any numeric value (default: 1 --- Set this
    to "auto" to estimate the window enrichment cutoff)'
  type: boolean
  inputBinding:
    prefix: -e
- id: in_keep_pcr_dupicates
  doc: 'keep PCR Dupicates in single-end mode, y or n (default: n --- if -t is "paired",
    this option has no effect)'
  type: boolean
  inputBinding:
    prefix: -d
- id: in_type_single_paired
  doc: 'Type, single or paired (default: single, requires BED files. paired requires
    BEDPE files)'
  type: boolean
  inputBinding:
    prefix: -t
- id: in_number_processors_used
  doc: 'Number of processors used by R scripts (default: 1)'
  type: boolean
  inputBinding:
    prefix: -p
- id: in_directory_where_created
  doc: 'Directory where the temporary working repository will be created. This directory
    will be deleted after JAMM is done (default: a new directory is created in /tmp
    folder).'
  type: boolean
  inputBinding:
    prefix: -T
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory_required
  doc: Output directory (required)
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_directory_required)
cwlVersion: v1.1
baseCommand:
- JAMM.sh
