version 1.0

task GatRun.py {
  input {
    String? annotation_bed_file
    String? segment_bed_file
    String? workspace_bed_file
    String? iso_chore_bed_file
    String? sample_file
    String? input_counts_file
    String? input_results_file
    Boolean? ignore_segment_tracks
    Boolean? with_segment_tracks
    Boolean? enable_split_tracks
    Boolean? overlapping_annotations
    String? annotations_label
    String? annotations_to_points
    String? order
    String? output_tables_pattern
    String? output_counts_pattern
    String? output_plots_pattern
    String? output_samples_pattern
    String? output_stats
    String? output_bed
    String? descriptions
    String? counter
    String? sampler
    String? num_samples
    String? shift_extension
    String? shift_expansion
    String? bucket_size
    String? n_buckets
    String? p_value_method
    String? q_value_method
    String? q_value_lambda
    String? q_value_pi_zero_method
    String? pseudo_count
    String? null
    String? cache
    String? num_threads
    String? random_seed
    String? conditional
    String? conditional_extension
    String? conditional_expansion
    Boolean? restrict_workspace
    Boolean? truncate_workspace_to_annotations
    Boolean? truncate_segments_to_workspace
    String? time_it
    String? time_it_name
    Boolean? time_it_header
    String? output_filename_pattern
    Boolean? force_output
    File? stdin
    File? log
    File? error
    File? stdout
  }
  command <<<
    gat-run.py \
      ~{if defined(annotation_bed_file) then ("--annotation-bed-file " +  '"' + annotation_bed_file + '"') else ""} \
      ~{if defined(segment_bed_file) then ("--segment-bed-file " +  '"' + segment_bed_file + '"') else ""} \
      ~{if defined(workspace_bed_file) then ("--workspace-bed-file " +  '"' + workspace_bed_file + '"') else ""} \
      ~{if defined(iso_chore_bed_file) then ("--isochore-bed-file " +  '"' + iso_chore_bed_file + '"') else ""} \
      ~{if defined(sample_file) then ("--sample-file " +  '"' + sample_file + '"') else ""} \
      ~{if defined(input_counts_file) then ("--input-counts-file " +  '"' + input_counts_file + '"') else ""} \
      ~{if defined(input_results_file) then ("--input-results-file " +  '"' + input_results_file + '"') else ""} \
      ~{true="--ignore-segment-tracks" false="" ignore_segment_tracks} \
      ~{true="--with-segment-tracks" false="" with_segment_tracks} \
      ~{true="--enable-split-tracks" false="" enable_split_tracks} \
      ~{true="--overlapping-annotations" false="" overlapping_annotations} \
      ~{if defined(annotations_label) then ("--annotations-label " +  '"' + annotations_label + '"') else ""} \
      ~{if defined(annotations_to_points) then ("--annotations-to-points " +  '"' + annotations_to_points + '"') else ""} \
      ~{if defined(order) then ("--order " +  '"' + order + '"') else ""} \
      ~{if defined(output_tables_pattern) then ("--output-tables-pattern " +  '"' + output_tables_pattern + '"') else ""} \
      ~{if defined(output_counts_pattern) then ("--output-counts-pattern " +  '"' + output_counts_pattern + '"') else ""} \
      ~{if defined(output_plots_pattern) then ("--output-plots-pattern " +  '"' + output_plots_pattern + '"') else ""} \
      ~{if defined(output_samples_pattern) then ("--output-samples-pattern " +  '"' + output_samples_pattern + '"') else ""} \
      ~{if defined(output_stats) then ("--output-stats " +  '"' + output_stats + '"') else ""} \
      ~{if defined(output_bed) then ("--output-bed " +  '"' + output_bed + '"') else ""} \
      ~{if defined(descriptions) then ("--descriptions " +  '"' + descriptions + '"') else ""} \
      ~{if defined(counter) then ("--counter " +  '"' + counter + '"') else ""} \
      ~{if defined(sampler) then ("--sampler " +  '"' + sampler + '"') else ""} \
      ~{if defined(num_samples) then ("--num-samples " +  '"' + num_samples + '"') else ""} \
      ~{if defined(shift_extension) then ("--shift-extension " +  '"' + shift_extension + '"') else ""} \
      ~{if defined(shift_expansion) then ("--shift-expansion " +  '"' + shift_expansion + '"') else ""} \
      ~{if defined(bucket_size) then ("--bucket-size " +  '"' + bucket_size + '"') else ""} \
      ~{if defined(n_buckets) then ("--nbuckets " +  '"' + n_buckets + '"') else ""} \
      ~{if defined(p_value_method) then ("--pvalue-method " +  '"' + p_value_method + '"') else ""} \
      ~{if defined(q_value_method) then ("--qvalue-method " +  '"' + q_value_method + '"') else ""} \
      ~{if defined(q_value_lambda) then ("--qvalue-lambda " +  '"' + q_value_lambda + '"') else ""} \
      ~{if defined(q_value_pi_zero_method) then ("--qvalue-pi0-method " +  '"' + q_value_pi_zero_method + '"') else ""} \
      ~{if defined(pseudo_count) then ("--pseudo-count " +  '"' + pseudo_count + '"') else ""} \
      ~{if defined(null) then ("--null " +  '"' + null + '"') else ""} \
      ~{if defined(cache) then ("--cache " +  '"' + cache + '"') else ""} \
      ~{if defined(num_threads) then ("--num-threads " +  '"' + num_threads + '"') else ""} \
      ~{if defined(random_seed) then ("--random-seed " +  '"' + random_seed + '"') else ""} \
      ~{if defined(conditional) then ("--conditional " +  '"' + conditional + '"') else ""} \
      ~{if defined(conditional_extension) then ("--conditional-extension " +  '"' + conditional_extension + '"') else ""} \
      ~{if defined(conditional_expansion) then ("--conditional-expansion " +  '"' + conditional_expansion + '"') else ""} \
      ~{true="--restrict-workspace" false="" restrict_workspace} \
      ~{true="--truncate-workspace-to-annotations" false="" truncate_workspace_to_annotations} \
      ~{true="--truncate-segments-to-workspace" false="" truncate_segments_to_workspace} \
      ~{if defined(time_it) then ("--timeit " +  '"' + time_it + '"') else ""} \
      ~{if defined(time_it_name) then ("--timeit-name " +  '"' + time_it_name + '"') else ""} \
      ~{true="--timeit-header" false="" time_it_header} \
      ~{if defined(output_filename_pattern) then ("--output-filename-pattern " +  '"' + output_filename_pattern + '"') else ""} \
      ~{true="--force-output" false="" force_output} \
      ~{if defined(stdin) then ("--stdin " +  '"' + stdin + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(error) then ("--error " +  '"' + error + '"') else ""} \
      ~{if defined(stdout) then ("--stdout " +  '"' + stdout + '"') else ""}
  >>>
  parameter_meta {
    annotation_bed_file: "filename with annotations [default=[]]."
    segment_bed_file: "filename with segments. Also accepts a glob in parentheses [default=[]]."
    workspace_bed_file: "filename with workspace segments. Also accepts a glob in parentheses [default=[]]."
    iso_chore_bed_file: "filename with isochore segments. Also accepts a glob in parentheses [default=none]."
    sample_file: "filename with sample files. Start processing from samples [default=[]]."
    input_counts_file: "start processing from counts - no segments required [default=none]."
    input_results_file: "start processing from results - no segments required [default=none]."
    ignore_segment_tracks: "ignore segment tracks - all segments belong to one track and called 'merged' [default=True]"
    with_segment_tracks: "the segments data file is arranged in tracks. [default=True]"
    enable_split_tracks: "permit the same track to be in multiple files [default=False]"
    overlapping_annotations: "the annotations within a track are overlapping and should not be merged. This is useful for working with short-read data. [default=default]"
    annotations_label: "ignore tracks in annotations and instead set them to label [default=default]"
    annotations_to_points: "convert annotations from segments to positions. Available methods are 'midpoint', 'start' or 'end'. [default=default]"
    order: "order results in output by fold, track, etc. [default=fold]."
    output_tables_pattern: "output pattern for result tables. Used if there are multiple counters used [default=%s.tsv.gz]."
    output_counts_pattern: "output pattern for counts [default=none]."
    output_plots_pattern: "output pattern for plots [default=none]"
    output_samples_pattern: "output pattern for samples. Samples are stored in bed format, one for  each segment [default=none]"
    output_stats: "output overlap summary stats [default=[]]."
    output_bed: "output bed files [default=[]]."
    descriptions: "filename mapping annotation terms to descriptions. if given, the output table will contain additional columns [default=none]"
    counter: "quantity to use for estimating enrichment [default=[]]."
    sampler: "quantity to test [default=annotator]."
    num_samples: "number of samples to compute [default=1000]."
    shift_extension: "if the sampling method is 'shift', create a segment of size # anound the segment to determine the size of the region for shifthing [default=0]."
    shift_expansion: "if the sampling method is 'shift', multiply each segment by # to determine the size of the region for shifthing [default=2.0]."
    bucket_size: "size of a bin for histogram of segment lengths. If 0, it will be automatically scaled to fit nbuckets [default=0]"
    n_buckets: "number of bins for histogram of segment lengths [default=100000]"
    p_value_method: "type of pvalue reported [default=empirical]."
    q_value_method: "method to perform multiple testing correction by controlling the fdr [default=BH]."
    q_value_lambda: "fdr computation: lambda [default=none]."
    q_value_pi_zero_method: "fdr computation: method for estimating pi0 [default=smoother]."
    pseudo_count: "pseudo count. The pseudo count is added to both the observed and expected overlap. Using a pseudo-count avoids gat reporting fold changes of 0 [default=1.0]."
    null: "null hypothesis. The default is to test categories for enrichment/depletion. If a filename with gat output is given, gat will test for the difference in fold change between the segments supplied and in the other file [default=default]."
    cache: "filename for caching samples [default=none]."
    num_threads: "number of threads to use for sampling [default=0]"
    random_seed: "random seed to initialize number generator with [none]."
    conditional: "conditional workspace creation [default=unconditional]*cooccurance* - compute enrichment only within workspace segments that contain both segments and annotations, *annotation-centered* - workspace centered around annotations. See --conditional-extension,segment-centered - workspace centered around segments. See --conditional-extension"
    conditional_extension: "if workspace is created conditional, extend by this amount (in bp) [default=none]."
    conditional_expansion: "if workspace is created conditional, expand by this amount (ratio) [default=none]."
    restrict_workspace: "restrict workspace to those segments that contain both track and annotations [default=False]"
    truncate_workspace_to_annotations: "truncate workspace with annotations [default=False]"
    truncate_segments_to_workspace: "truncate segments to workspace before sampling [default=False]"
    time_it: "store timeing information in file [none]."
    time_it_name: "name in timing file for this class of jobs [all]."
    time_it_header: "add header for timing information [none]."
    output_filename_pattern: "OUTPUT filename pattern for various methods [%s]."
    force_output: "force over-writing of existing files."
    stdin: "file to read stdin from [default = stdin]."
    log: "file with logging information [default = stdout]."
    error: "file with error information [default = stderr]."
    stdout: "file where output is to go [default = stdout]."
  }
}