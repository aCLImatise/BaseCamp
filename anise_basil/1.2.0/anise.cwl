class: CommandLineTool
id: anise.cwl
inputs:
- id: quiet
  doc: Set verbosity to a minimum.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: verbose
  doc: Enable verbose output.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: very_verbose
  doc: Enable very verbose output.
  type: boolean
  inputBinding:
    prefix: --very-verbose
- id: num_threads
  doc: 'Number of threads to use. In range [1..inf]. Default: 1.'
  type: long
  inputBinding:
    prefix: --num-threads
- id: debug_site_id
  doc: 'Debug site ID (-1 to disable). In range [-1..inf]. Default: -1.'
  type: long
  inputBinding:
    prefix: --debug-site-id
- id: debug_step_no
  doc: 'Debug step no (-1 to disable). In range [-1..inf]. Default: -1.'
  type: long
  inputBinding:
    prefix: --debug-step-no
- id: no_auto_tuning
  doc: Disable auto-tuning (see below).
  type: boolean
  inputBinding:
    prefix: --no-auto-tuning
- id: output_fast_a
  doc: 'Output FASTA with contigs Valid filetypes are: fa and fasta.'
  type: string
  inputBinding:
    prefix: --output-fasta
- id: output_mapping
  doc: 'Output SAM/BAM file with mapping fo reads to contigs in --output-fasta. Valid
    filetypes are: sam and bam.'
  type: string
  inputBinding:
    prefix: --output-mapping
- id: output_debug_dir
  doc: Directory for debug output. Leave empty for no such output.
  type: string
  inputBinding:
    prefix: --output-debug-dir
- id: clean_up_tmp_files
  doc: Clean up temporary files.
  type: boolean
  inputBinding:
    prefix: --clean-up-tmp-files
- id: recursion_max_steps
  doc: 'Maximal recursion depth. 0 for infinity. In range [0..inf]. Default: 50.'
  type: long
  inputBinding:
    prefix: --recursion-max-steps
- id: no_realign_assembly
  doc: Do not realign the reads after assembly.
  type: boolean
  inputBinding:
    prefix: --no-realign-assembly
- id: max_reads_factor
  doc: 'Factor to use for the maximal read computation. ANISE stops for a site if
    more than the number of reads expected from the expected coverage times the max
    reads factor are assigned to the site. In range [1..inf]. Default: 2.'
  type: double
  inputBinding:
    prefix: --max-reads-factor
- id: stop_initial_read_count
  doc: 'If there are more than this number of reads for a site in the initial round
    then no assembly is performed. In range [0..inf]. Default: 4000.'
  type: long
  inputBinding:
    prefix: --stop-initial-read-count
- id: stop_tex_read_count
  doc: 'If there are more than this number of reads for a site in a later round then
    no triplet library extension is performed. In range [0..inf]. Default: 3000.'
  type: long
  inputBinding:
    prefix: --stop-tex-read-count
- id: stop_read_count
  doc: 'If there are more than this number of reads for a site in a later round then
    no assembly is performed. In range [0..inf]. Default: 30000.'
  type: long
  inputBinding:
    prefix: --stop-read-count
- id: stop_coverage
  doc: 'If the length sum of all reads for a site divided by the length sum of its
    contigs is higher than this value before assembly then the site is deactivated.
    Set to 0 to deactivate check. In range [0..inf]. Default: 100.'
  type: long
  inputBinding:
    prefix: --stop-coverage
- id: realignment_bandwidth
  doc: 'The bandwidth to use in the realignment step. In range [0..inf]. Default:
    40.'
  type: long
  inputBinding:
    prefix: --realignment-bandwidth
- id: realignment_border
  doc: 'The border from the profile to extract around alignments. In range [0..inf].
    Default: 30.'
  type: long
  inputBinding:
    prefix: --realignment-border
- id: no_separate_repeats
  doc: Dont' repeat separation algorithm after realignment.
  type: boolean
  inputBinding:
    prefix: --no-separate-repeats
- id: rep_sep_tammi_method
  doc: 'Variant of the Tammi method to use for repeat separation (simple or phred).
    One of phred and simple. Default: simple.'
  type: string
  inputBinding:
    prefix: --repsep-tammi-method
- id: rep_sep_p_err
  doc: 'Repeat separation per-base error for simple Tammi method. In range [0.0..1.0].
    Default: 0.01.'
  type: double
  inputBinding:
    prefix: --repsep-p-err
- id: rep_sep_max_random_correlation
  doc: 'Repeat separation maximal random correlation. In range [0.0..1.0]. Default:
    0.00001.'
  type: double
  inputBinding:
    prefix: --repsep-max-random-correlation
- id: rep_sep_tau_min
  doc: 'Repeat separation tau_min value. In range [0..inf]. Default: 100000.'
  type: long
  inputBinding:
    prefix: --repsep-tau-min
- id: rep_sep_r_min
  doc: 'Repeat separation r_min value. In range [0..inf]. Default: 100000.'
  type: long
  inputBinding:
    prefix: --repsep-r-min
- id: rep_sep_min_overlap
  doc: 'Repeat separation minimal overlap value. In range [0..inf]. Default: 2.'
  type: long
  inputBinding:
    prefix: --repsep-min-overlap
- id: rep_sep_start_compression_at
  doc: 'Repeat separation start compression. In range [2..inf]. Default: 100.'
  type: long
  inputBinding:
    prefix: --repsep-start-compression-at
- id: rep_sep_split_d_min
  doc: Repeat separation split at d_min deviations.
  type: boolean
  inputBinding:
    prefix: --repsep-split-d-min
- id: fragment_size_factor
  doc: 'Factor to multiple fragment size stddev with to get allowed error. In range
    [0..inf]. Default: 8.'
  type: string
  inputBinding:
    prefix: --fragment-size-factor
- id: auto_library_num_records
  doc: 'Number of records to use for automatic library evaluation. Set to 0 to evaluate
    all. In range [0..inf]. Default: 100000.'
  type: string
  inputBinding:
    prefix: --auto-library-num-records
- id: fragment_size_median
  doc: 'Median fragment size. In range [0..inf]. Default: 250.'
  type: long
  inputBinding:
    prefix: --fragment-size-median
- id: fragment_size_std_dev
  doc: 'Fragment size standard deviation. In range [0..inf]. Default: 30.'
  type: string
  inputBinding:
    prefix: --fragment-size-std-dev
- id: fragment_default_orientation
  doc: 'Default orientation. One of F+, F-, R+, and R-. Default: R+.'
  type: string
  inputBinding:
    prefix: --fragment-default-orientation
- id: assembly_site_window_radius
  doc: 'Radius around insert site to cut for initial contigs. In range [100..inf].
    Default: 1000.'
  type: long
  inputBinding:
    prefix: --assembly-site-window-radius
- id: assembly_site_fringe_radius
  doc: 'Radius around insert site to cut for collecting clippings. Set to -1 (default)
    to consider all records with >= 15 clipped bases. In range [-1..inf]. Default:
    -1.'
  type: long
  inputBinding:
    prefix: --assembly-site-fringe-radius
- id: read_mapping_error_rate
  doc: 'Error rate of internal read mapping step in percent. In range [0..20]. Default:
    5.'
  type: string
  inputBinding:
    prefix: --read-mapping-error-rate
- id: read_mapping_batch_size
  doc: 'Batch size for read mapping. In range [1..inf]. Default: 10000.'
  type: long
  inputBinding:
    prefix: --read-mapping-batch-size
- id: overlap_per_min_overlap_ratio
  doc: 'Overlapper min overlap rate in percent of the longer read. In range [0..inf].
    Default: 40.'
  type: string
  inputBinding:
    prefix: --overlapper-min-overlap-ratio
- id: overlap_per_max_error_rate
  doc: 'Overlapper maximum error rate in percent. In range [0..30]. Default: 5.'
  type: long
  inputBinding:
    prefix: --overlapper-max-error-rate
- id: no_read_correction
  doc: Whether or not to perform read correction
  type: boolean
  inputBinding:
    prefix: --no-read-correction
- id: msa_score_match
  doc: 'PW match score in MSA. Default: 2.'
  type: long
  inputBinding:
    prefix: --msa-score-match
- id: msa_score_mismatch
  doc: 'PW mismatch score in MSA. Default: -6.'
  type: long
  inputBinding:
    prefix: --msa-score-mismatch
- id: msa_score_gap_open
  doc: 'PW gap open score in MSA. Default: -4.'
  type: long
  inputBinding:
    prefix: --msa-score-gap-open
- id: msa_score_gap_extend
  doc: 'PW gap extension score in MSA. Default: -9.'
  type: long
  inputBinding:
    prefix: --msa-score-gap-extend
- id: consensus_min_base_support
  doc: 'Minimal base support for non-N call in consensus calling. Default: 2.'
  type: long
  inputBinding:
    prefix: --consensus-min-base-support
- id: consensus_min_contig_length_rate
  doc: 'Minimal contig length in percent of average read length. Default: 150.'
  type: string
  inputBinding:
    prefix: --consensus-min-contig-length-rate
outputs: []
cwlVersion: v1.1
baseCommand:
- anise
