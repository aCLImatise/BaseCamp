class: CommandLineTool
id: gat_run.py.cwl
inputs:
- id: gat_run
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: genomic
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: annotation
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: tool
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: annotation_bed_file
  doc: filename with annotations [default=[]].
  type: string
  inputBinding:
    prefix: --annotation-bed-file
- id: segment_bed_file
  doc: filename with segments. Also accepts a glob in parentheses [default=[]].
  type: string
  inputBinding:
    prefix: --segment-bed-file
- id: workspace_bed_file
  doc: filename with workspace segments. Also accepts a glob in parentheses [default=[]].
  type: string
  inputBinding:
    prefix: --workspace-bed-file
- id: iso_chore_bed_file
  doc: filename with isochore segments. Also accepts a glob in parentheses [default=none].
  type: string
  inputBinding:
    prefix: --isochore-bed-file
- id: sample_file
  doc: filename with sample files. Start processing from samples [default=[]].
  type: string
  inputBinding:
    prefix: --sample-file
- id: input_counts_file
  doc: start processing from counts - no segments required [default=none].
  type: string
  inputBinding:
    prefix: --input-counts-file
- id: input_results_file
  doc: start processing from results - no segments required [default=none].
  type: string
  inputBinding:
    prefix: --input-results-file
- id: ignore_segment_tracks
  doc: ignore segment tracks - all segments belong to one track and called 'merged'
    [default=True]
  type: boolean
  inputBinding:
    prefix: --ignore-segment-tracks
- id: with_segment_tracks
  doc: the segments data file is arranged in tracks. [default=True]
  type: boolean
  inputBinding:
    prefix: --with-segment-tracks
- id: enable_split_tracks
  doc: permit the same track to be in multiple files [default=False]
  type: boolean
  inputBinding:
    prefix: --enable-split-tracks
- id: overlapping_annotations
  doc: the annotations within a track are overlapping and should not be merged. This
    is useful for working with short-read data. [default=default]
  type: boolean
  inputBinding:
    prefix: --overlapping-annotations
- id: annotations_label
  doc: ignore tracks in annotations and instead set them to label [default=default]
  type: string
  inputBinding:
    prefix: --annotations-label
- id: annotations_to_points
  doc: convert annotations from segments to positions. Available methods are 'midpoint',
    'start' or 'end'. [default=default]
  type: string
  inputBinding:
    prefix: --annotations-to-points
- id: order
  doc: order results in output by fold, track, etc. [default=fold].
  type: string
  inputBinding:
    prefix: --order
- id: output_tables_pattern
  doc: output pattern for result tables. Used if there are multiple counters used
    [default=%s.tsv.gz].
  type: string
  inputBinding:
    prefix: --output-tables-pattern
- id: output_counts_pattern
  doc: output pattern for counts [default=none].
  type: string
  inputBinding:
    prefix: --output-counts-pattern
- id: output_plots_pattern
  doc: output pattern for plots [default=none]
  type: string
  inputBinding:
    prefix: --output-plots-pattern
- id: output_samples_pattern
  doc: output pattern for samples. Samples are stored in bed format, one for  each
    segment [default=none]
  type: string
  inputBinding:
    prefix: --output-samples-pattern
- id: output_stats
  doc: output overlap summary stats [default=[]].
  type: string
  inputBinding:
    prefix: --output-stats
- id: output_bed
  doc: output bed files [default=[]].
  type: string
  inputBinding:
    prefix: --output-bed
- id: descriptions
  doc: filename mapping annotation terms to descriptions. if given, the output table
    will contain additional columns [default=none]
  type: string
  inputBinding:
    prefix: --descriptions
- id: counter
  doc: quantity to use for estimating enrichment [default=[]].
  type: string
  inputBinding:
    prefix: --counter
- id: sampler
  doc: quantity to test [default=annotator].
  type: string
  inputBinding:
    prefix: --sampler
- id: num_samples
  doc: number of samples to compute [default=1000].
  type: string
  inputBinding:
    prefix: --num-samples
- id: shift_extension
  doc: "if the sampling method is 'shift', create a segment of size # anound the segment\
    \ to determine the size of the region for shifthing [default=0]."
  type: string
  inputBinding:
    prefix: --shift-extension
- id: shift_expansion
  doc: "if the sampling method is 'shift', multiply each segment by # to determine\
    \ the size of the region for shifthing [default=2.0]."
  type: string
  inputBinding:
    prefix: --shift-expansion
- id: bucket_size
  doc: size of a bin for histogram of segment lengths. If 0, it will be automatically
    scaled to fit nbuckets [default=0]
  type: string
  inputBinding:
    prefix: --bucket-size
- id: n_buckets
  doc: number of bins for histogram of segment lengths [default=100000]
  type: string
  inputBinding:
    prefix: --nbuckets
- id: p_value_method
  doc: type of pvalue reported [default=empirical].
  type: string
  inputBinding:
    prefix: --pvalue-method
- id: q_value_method
  doc: method to perform multiple testing correction by controlling the fdr [default=BH].
  type: string
  inputBinding:
    prefix: --qvalue-method
- id: q_value_lambda
  doc: 'fdr computation: lambda [default=none].'
  type: string
  inputBinding:
    prefix: --qvalue-lambda
- id: q_value_pi0_method
  doc: 'fdr computation: method for estimating pi0 [default=smoother].'
  type: string
  inputBinding:
    prefix: --qvalue-pi0-method
- id: pseudo_count
  doc: pseudo count. The pseudo count is added to both the observed and expected overlap.
    Using a pseudo-count avoids gat reporting fold changes of 0 [default=1.0].
  type: string
  inputBinding:
    prefix: --pseudo-count
- id: 'null'
  doc: null hypothesis. The default is to test categories for enrichment/depletion.
    If a filename with gat output is given, gat will test for the difference in fold
    change between the segments supplied and in the other file [default=default].
  type: string
  inputBinding:
    prefix: --null
- id: cache
  doc: filename for caching samples [default=none].
  type: string
  inputBinding:
    prefix: --cache
- id: num_threads
  doc: number of threads to use for sampling [default=0]
  type: string
  inputBinding:
    prefix: --num-threads
- id: random_seed
  doc: random seed to initialize number generator with [none].
  type: string
  inputBinding:
    prefix: --random-seed
- id: conditional
  doc: conditional workspace creation [default=unconditional]*cooccurance* - compute
    enrichment only within workspace segments that contain both segments and annotations,
    *annotation-centered* - workspace centered around annotations. See --conditional-extension,segment-centered
    - workspace centered around segments. See --conditional-extension
  type: string
  inputBinding:
    prefix: --conditional
- id: conditional_extension
  doc: if workspace is created conditional, extend by this amount (in bp) [default=none].
  type: string
  inputBinding:
    prefix: --conditional-extension
- id: conditional_expansion
  doc: if workspace is created conditional, expand by this amount (ratio) [default=none].
  type: string
  inputBinding:
    prefix: --conditional-expansion
- id: restrict_workspace
  doc: restrict workspace to those segments that contain both track and annotations
    [default=False]
  type: boolean
  inputBinding:
    prefix: --restrict-workspace
- id: truncate_workspace_to_annotations
  doc: truncate workspace with annotations [default=False]
  type: boolean
  inputBinding:
    prefix: --truncate-workspace-to-annotations
- id: truncate_segments_to_workspace
  doc: truncate segments to workspace before sampling [default=False]
  type: boolean
  inputBinding:
    prefix: --truncate-segments-to-workspace
- id: time_it
  doc: store timeing information in file [none].
  type: string
  inputBinding:
    prefix: --timeit
- id: time_it_name
  doc: name in timing file for this class of jobs [all].
  type: string
  inputBinding:
    prefix: --timeit-name
- id: time_it_header
  doc: add header for timing information [none].
  type: boolean
  inputBinding:
    prefix: --timeit-header
- id: output_filename_pattern
  doc: OUTPUT filename pattern for various methods [%s].
  type: string
  inputBinding:
    prefix: --output-filename-pattern
- id: force_output
  doc: force over-writing of existing files.
  type: boolean
  inputBinding:
    prefix: --force-output
- id: stdin
  doc: file to read stdin from [default = stdin].
  type: File
  inputBinding:
    prefix: --stdin
- id: log
  doc: file with logging information [default = stdout].
  type: File
  inputBinding:
    prefix: --log
- id: error
  doc: file with error information [default = stderr].
  type: File
  inputBinding:
    prefix: --error
- id: stdout
  doc: file where output is to go [default = stdout].
  type: File
  inputBinding:
    prefix: --stdout
outputs: []
cwlVersion: v1.1
baseCommand:
- gat-run.py
