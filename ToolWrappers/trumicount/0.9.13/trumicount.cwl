class: CommandLineTool
id: trumicount.cwl
inputs:
- id: in_input_bam
  doc: read UMIs from FILE (uses `umi_tools group`)
  type: File?
  inputBinding:
    prefix: --input-bam
- id: in_input_umi_tools_group_out
  doc: read UMIs from FILE produced by `umi_tools group`
  type: File?
  inputBinding:
    prefix: --input-umitools-group-out
- id: in_input_um_is
  doc: read UMIs from FILE (previously produced by --output-umis)
  type: File?
  inputBinding:
    prefix: --input-umis
- id: in_output_counts
  doc: write bias-corrected per-group counts and models to FILE
  type: File?
  inputBinding:
    prefix: --output-counts
- id: in_output_um_is
  doc: write UMIs reported by `umi_tools group` to FILE
  type: File?
  inputBinding:
    prefix: --output-umis
- id: in_output_final_um_is
  doc: write strand-combined and filtered UMIs to FILE
  type: File?
  inputBinding:
    prefix: --output-final-umis
- id: in_output_read_dist
  doc: write global reads/UMI distribution (before and after filtering) to FILE
  type: File?
  inputBinding:
    prefix: --output-readdist
- id: in_output_plots
  doc: write diagnostic plots in PDF format to PLOT
  type: string?
  inputBinding:
    prefix: --output-plots
- id: in_output_groupwise_fits
  doc: write group-wise model details to FILE
  type: File?
  inputBinding:
    prefix: --output-groupwise-fits
- id: in_output_genewise_fits
  doc: obsolete name for --output-groupwise-fits
  type: File?
  inputBinding:
    prefix: --output-genewise-fits
- id: in_umi_tools
  doc: 'use executable UMITOOLS to run `umi_tools group` [Default: umi_tools]'
  type: string?
  inputBinding:
    prefix: --umitools
- id: in_umi_tools_option
  doc: pass UMITOOLSOPT to `umi_tools group` (see `umi_tools group --help`)
  type: string?
  inputBinding:
    prefix: --umitools-option
- id: in_umi_sep
  doc: 'assume UMISEP separates read name and UMI (passed to umi_tools) [Default:
    _]'
  type: string?
  inputBinding:
    prefix: --umi-sep
- id: in_umi_pair_sep
  doc: 'assume UMIPAIRSEP separates read1 and read2 UMI (see Strand UMIs) [Default:
    ]'
  type: long?
  inputBinding:
    prefix: --umipair-sep
- id: in_paired
  doc: 'assume BAM file contains paired reads (passed to umi_tools) [Default: FALSE]'
  type: boolean?
  inputBinding:
    prefix: --paired
- id: in_mapping_quality
  doc: 'ignored read with mapping quality below MAPQ (passed to umi_tools) [Default:
    20]'
  type: long?
  inputBinding:
    prefix: --mapping-quality
- id: in_filter_strand_um_is
  doc: 'filtes UMIs where only one strands was observed [Default: FALSE]'
  type: boolean?
  inputBinding:
    prefix: --filter-strand-umis
- id: in_combine_strand_um_is
  doc: 'combine UMIs strand pairs (implies --filter-strand-umis) [Default: FALSE]'
  type: boolean?
  inputBinding:
    prefix: --combine-strand-umis
- id: in_threshold
  doc: remove UMIs with fewer than THRESHOLD reads
  type: string?
  inputBinding:
    prefix: --threshold
- id: in_threshold_quantile
  doc: 'use quantile Q of the raw read-count distribution for THRESHOLD [Default:
    0.2]'
  type: double?
  inputBinding:
    prefix: --threshold-quantile
- id: in_molecules
  doc: 'assume UMIs are initially represented by MOLECULES copies (strands) [Default:
    2]'
  type: long?
  inputBinding:
    prefix: --molecules
- id: in_group_per
  doc: ",KEY2,...       counts UMIs per distinct key(s), can be \"cell\" and/or \"\
    gene\",\n\"cell\" implies --umitools-option --per-cell [Default: gene]"
  type: long?
  inputBinding:
    prefix: --group-per
- id: in_skip_groupwise_fits
  doc: skip group-wise model fitting, stop after plotting the global fit
  type: boolean?
  inputBinding:
    prefix: --skip-groupwise-fits
- id: in_include_filter_statistics
  doc: 'add filtered and unfiltered read and UMI counts to count table [Default: FALSE]'
  type: boolean?
  inputBinding:
    prefix: --include-filter-statistics
- id: in_groupwise_min_um_is
  doc: 'use global estimates for groups with fewer than MINUMIS (strand) UMIs [Default:
    5]'
  type: long?
  inputBinding:
    prefix: --groupwise-min-umis
- id: in_genewise_min_um_is
  doc: obsolete name for --groupwise-min-umis
  type: long?
  inputBinding:
    prefix: --genewise-min-umis
- id: in_cores
  doc: 'spread group-wise model fitting over CORES cpus [Default: 1]'
  type: long?
  inputBinding:
    prefix: --cores
- id: in_variance_estimator
  doc: 'use VAREST to estimate variances, can be "lsq" or "mle" [Default: lsq]'
  type: string?
  inputBinding:
    prefix: --variance-estimator
- id: in_digits
  doc: 'number of digits to output [Default: 3]'
  type: long?
  inputBinding:
    prefix: --digits
- id: in_plot_hist_bin
  doc: make read count histogram bins PLOTXBIN wide
  type: string?
  inputBinding:
    prefix: --plot-hist-bin
- id: in_plot_hist_xmax
  doc: limit read count histogram plot to at most PLOTXMAX reads per UMI
  type: string?
  inputBinding:
    prefix: --plot-hist-xmax
- id: in_plot_skip_phantoms
  doc: 'do not show phantom UMIs in histogram plot [Default: FALSE]'
  type: boolean?
  inputBinding:
    prefix: --plot-skip-phantoms
- id: in_plot_var_bins
  doc: 'plot PLOTVARBINS separate emprirical variances [Default: 10]'
  type: long?
  inputBinding:
    prefix: --plot-var-bins
- id: in_plot_var_logy
  doc: 'use log scale for the variance (y) axis [Default: FALSE]'
  type: boolean?
  inputBinding:
    prefix: --plot-var-logy
- id: in_verbose
  doc: enable verbose output
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_input_um_is
  doc: read UMIs from FILE (previously produced by --output-umis)
  type: File?
  outputBinding:
    glob: $(inputs.in_input_um_is)
hints: []
cwlVersion: v1.1
baseCommand:
- trumicount
