class: CommandLineTool
id: apt_probeset_summarize.cwl
inputs:
- id: rma_bg
  doc: 'Performs an RMA style background adjustment  as described in Irizarry et al
    2003. '
  type: string
  inputBinding:
    position: 0
- id: quant_norm
  doc: 'Class for doing quantile normalization. Can  do sketch and full quantile (just
    set sketch to chip size or zero) and supports bioconductor compatibility. '
  type: string
  inputBinding:
    position: 1
- id: artifact_reduction
  doc: 'Class for artifact reduction. '
  type: string
  inputBinding:
    position: 2
- id: med_norm
  doc: 'Class for doing median normalization. Adjust intensities such that all chips
    have the same median (or average). '
  type: string
  inputBinding:
    position: 3
- id: adapter_type_norm
  doc: 'Class for doing adapter type normalization. Adjust intensities by adapter
    type. '
  type: string
  inputBinding:
    position: 4
- id: gc_bg
  doc: 'Subtract bacground based on median intensity of probes with similar GC content. '
  type: string
  inputBinding:
    position: 5
- id: gc_correction
  doc: 'Correct feature intensity for variations in gc_count. '
  type: string
  inputBinding:
    position: 6
- id: scale_intensities
  doc: 'Scale cel intensities. '
  type: string
  inputBinding:
    position: 7
- id: intensity_reporter
  doc: 'Class for dumping intensity values to a file. '
  type: long
  inputBinding:
    position: 8
- id: no_trans
  doc: 'Placeholder chipstream that does no transformation '
  type: string
  inputBinding:
    position: 9
- id: pm_only
  doc: 'No adjustment. Just uses unmodified PM intensity values. '
  type: string
  inputBinding:
    position: 0
- id: pm_mm
  doc: 'Use mismatch probe as adjustment for perfect match. Has strength of being
    unbiased, but often the mismatch probe binds the match target. '
  type: string
  inputBinding:
    position: 1
- id: pm_gc_bg
  doc: 'Do an adjustment based on the median intensity of probes with similar GC content. '
  type: string
  inputBinding:
    position: 2
- id: pm_sum
  doc: 'Add itensity of PM probe for other allele to PM probes. '
  type: string
  inputBinding:
    position: 3
- id: plier
  doc: 'The PLIER (Probe Logarithmic Error Intensity  Estimate) method produces an
    improved signal by accounting for experimentally observed patterns in feature
    behavior and handling error at the appropriately at low and high signal values.
    This version of PLIER differs from the previous version by the addition of a SafteyZero,
    NumericalTolerance, and FixPrecomputed. These options are intended to improve
    the stability of PLIER results when using precomputed feature reponse values.
    To get the older PLIER behavior set SafetyZero to 0.0, NumericalTolerance to 0.0,
    and FixPrecomputed to false. '
  type: string
  inputBinding:
    position: 0
- id: sea
  doc: 'The SEA (Simplified Expression Analysis) method provides a simple signal estimate,
    using the initialization algorithm from the PLIER (Probe Logarithmic Error Intensity
    Estimate) method and omitting the PLIER parameter fitting. SEA is useful for single
    chip signal estimation. The version of PLIER used by SEA differs from the previous
    version  by the addition of a SafteyZero, NumericalTolerance, and FixPrecomputed.
    These options are intended to improve the stability of PLIER results when using
    precomputed feature reponse values. To get the older PLIER behavior set SafetyZero
    to 0.0, NumericalTolerance to 0.0, and FixPrecomputed to false. '
  type: string
  inputBinding:
    position: 1
- id: iter_plier
  doc: 'Do probe set quantification estimate by iteratively calling PLIER with the
    probes that best correlate  with signal estimate. The version of PLIER used by
    IterPLIER differs from the previous version by the addition of a SafteyZero, NumericalTolerance,
    and FixPrecomputed. These options are intended to improve the stability of PLIER
    results when using precomputed feature reponse values. To get the older PLIER
    behavior set SafetyZero to 0.0, NumericalTolerance to 0.0, and FixPrecomputed
    to false. '
  type: string
  inputBinding:
    position: 2
- id: med_polish
  doc: 'Performs a median polish to estimate target and probe effects. Resulting summaries
    are in log2 space by default. Used in summary step of RMA as described in Irizarry
    et al 2003. '
  type: string
  inputBinding:
    position: 3
- id: dab_g
  doc: 'Calculates the p-value that the intensities in a probeset could have been
    observed by chance in a background distribution. Used as a substitute for standard
    absent/present calls when mismatch probes  are not available. '
  type: string
  inputBinding:
    position: 4
- id: avg_diff
  doc: 'Calculates the average measurement for a probeset using the MAS 4 average
    difference algorithm, namely the average difference between the pm and mm probe
    signal. '
  type: string
  inputBinding:
    position: 5
- id: median
  doc: 'Use the median of probes for a particular chip as the summary. '
  type: string
  inputBinding:
    position: 6
- id: expr
  doc: 'Does expression summarization on probesets. '
  type: string
  inputBinding:
    position: 0
- id: pc_a_select
  doc: 'Determines PCA for probes and picks probes that are near the principal component
    as the probes to use for downstream analysis. '
  type: string
  inputBinding:
    position: 1
- id: spect_select
  doc: 'Picks probes that are similar to each other based  on spectral cluster and
    normalized cut. '
  type: string
  inputBinding:
    position: 2
- id: p
  doc: '*.cel'
  type: string
  inputBinding:
    prefix: -p
- id: log_file
  doc: "name of the log file. Generally  defaults to the program name in the out-dir\
    \ folder. [default ''] "
  type: string
  inputBinding:
    prefix: --log-file
- id: qc_probe_sets
  doc: "with probeset_id(name) and group_name columns specifying subsets of probesets\
    \ to compute qc stats for. [default ''] "
  type: File
  inputBinding:
    prefix: --qc-probesets
- id: chip_type
  doc: "types to check library and CEL files against. Can be specified multiple times.\
    \ The first one is propigated as the chip  type in the output files. Warning,\
    \ use of this option will override the usual check between chip types found in\
    \ the library files and cel files. You should use this option instead of --force\
    \ when possible. [default ''] "
  type: string
  inputBinding:
    prefix: --chip-type
- id: precision
  doc: "many digits of precision to use after decimal. [default '5'] "
  type: string
  inputBinding:
    prefix: --precision
- id: explain
  doc: "a particular operation (i.e. --explain rma-bg). [default ''] "
  type: string
  inputBinding:
    prefix: --explain
- id: kill_list
  doc: "not use the PM probes specified in file for computing results. [experimental]\
    \ [default ''] "
  type: string
  inputBinding:
    prefix: --kill-list
- id: time_start
  doc: "time the engine run was started  [default ''] "
  type: string
  inputBinding:
    prefix: --time-start
- id: time_end
  doc: "time the engine run ended [default ''] "
  type: string
  inputBinding:
    prefix: --time-end
- id: time_run_minutes
  doc: "run time in minutes. [default ''] "
  type: string
  inputBinding:
    prefix: --time-run-minutes
- id: analysis_guid
  doc: "GUID for the analysis run. [default ''] "
  type: string
  inputBinding:
    prefix: --analysis-guid
outputs: []
cwlVersion: v1.1
baseCommand:
- apt-probeset-summarize
