#!/usr/bin/env cwl-runner

baseCommand:
- apt-probeset-summarize
class: CommandLineTool
cwlVersion: v1.0
id: apt-probeset-summarize
inputs:
- doc: 'Performs an RMA style background adjustment  as described in Irizarry et al
    2003. '
  id: rma_bg
  inputBinding:
    position: 0
  type: string
- doc: 'Class for doing quantile normalization. Can  do sketch and full quantile (just
    set sketch to chip size or zero) and supports bioconductor compatibility. '
  id: quant_norm
  inputBinding:
    position: 1
  type: string
- doc: 'Class for artifact reduction. '
  id: artifact_reduction
  inputBinding:
    position: 2
  type: string
- doc: 'Class for doing median normalization. Adjust intensities such that all chips
    have the same median (or average). '
  id: med_norm
  inputBinding:
    position: 3
  type: string
- doc: 'Class for doing adapter type normalization. Adjust intensities by adapter
    type. '
  id: adapter_type_norm
  inputBinding:
    position: 4
  type: string
- doc: 'Subtract bacground based on median intensity of probes with similar GC content. '
  id: gc_bg
  inputBinding:
    position: 5
  type: string
- doc: 'Correct feature intensity for variations in gc_count. '
  id: gc_correction
  inputBinding:
    position: 6
  type: string
- doc: 'Scale cel intensities. '
  id: scale_intensities
  inputBinding:
    position: 7
  type: string
- doc: 'Class for dumping intensity values to a file. '
  id: intensity_reporter
  inputBinding:
    position: 8
  type: long
- doc: 'Placeholder chipstream that does no transformation '
  id: no_trans
  inputBinding:
    position: 9
  type: string
- doc: 'No adjustment. Just uses unmodified PM intensity values. '
  id: pm_only
  inputBinding:
    position: 0
  type: string
- doc: 'Use mismatch probe as adjustment for perfect match. Has strength of being
    unbiased, but often the mismatch probe binds the match target. '
  id: pm_mm
  inputBinding:
    position: 1
  type: string
- doc: 'Do an adjustment based on the median intensity of probes with similar GC content. '
  id: pm_gc_bg
  inputBinding:
    position: 2
  type: string
- doc: 'Add itensity of PM probe for other allele to PM probes. '
  id: pm_sum
  inputBinding:
    position: 3
  type: string
- doc: 'The PLIER (Probe Logarithmic Error Intensity  Estimate) method produces an
    improved signal by accounting for experimentally observed patterns in feature
    behavior and handling error at the appropriately at low and high signal values.
    This version of PLIER differs from the previous version by the addition of a SafteyZero,
    NumericalTolerance, and FixPrecomputed. These options are intended to improve
    the stability of PLIER results when using precomputed feature reponse values.
    To get the older PLIER behavior set SafetyZero to 0.0, NumericalTolerance to 0.0,
    and FixPrecomputed to false. '
  id: plier
  inputBinding:
    position: 0
  type: string
- doc: 'The SEA (Simplified Expression Analysis) method provides a simple signal estimate,
    using the initialization algorithm from the PLIER (Probe Logarithmic Error Intensity
    Estimate) method and omitting the PLIER parameter fitting. SEA is useful for single
    chip signal estimation. The version of PLIER used by SEA differs from the previous
    version  by the addition of a SafteyZero, NumericalTolerance, and FixPrecomputed.
    These options are intended to improve the stability of PLIER results when using
    precomputed feature reponse values. To get the older PLIER behavior set SafetyZero
    to 0.0, NumericalTolerance to 0.0, and FixPrecomputed to false. '
  id: sea
  inputBinding:
    position: 1
  type: string
- doc: 'Do probe set quantification estimate by iteratively calling PLIER with the
    probes that best correlate  with signal estimate. The version of PLIER used by
    IterPLIER differs from the previous version by the addition of a SafteyZero, NumericalTolerance,
    and FixPrecomputed. These options are intended to improve the stability of PLIER
    results when using precomputed feature reponse values. To get the older PLIER
    behavior set SafetyZero to 0.0, NumericalTolerance to 0.0, and FixPrecomputed
    to false. '
  id: iter_plier
  inputBinding:
    position: 2
  type: string
- doc: 'Performs a median polish to estimate target and probe effects. Resulting summaries
    are in log2 space by default. Used in summary step of RMA as described in Irizarry
    et al 2003. '
  id: med_polish
  inputBinding:
    position: 3
  type: string
- doc: 'Calculates the p-value that the intensities in a probeset could have been
    observed by chance in a background distribution. Used as a substitute for standard
    absent/present calls when mismatch probes  are not available. '
  id: dab_g
  inputBinding:
    position: 4
  type: string
- doc: 'Calculates the average measurement for a probeset using the MAS 4 average
    difference algorithm, namely the average difference between the pm and mm probe
    signal. '
  id: avg_diff
  inputBinding:
    position: 5
  type: string
- doc: 'Use the median of probes for a particular chip as the summary. '
  id: median
  inputBinding:
    position: 6
  type: string
- doc: 'Does expression summarization on probesets. '
  id: expr
  inputBinding:
    position: 0
  type: string
- doc: 'Determines PCA for probes and picks probes that are near the principal component
    as the probes to use for downstream analysis. '
  id: pc_a_select
  inputBinding:
    position: 1
  type: string
- doc: 'Picks probes that are similar to each other based  on spectral cluster and
    normalized cut. '
  id: spect_select
  inputBinding:
    position: 2
  type: string
- doc: '*.cel'
  id: p
  inputBinding:
    prefix: -p
  type: string
- doc: "name of the log file. Generally  defaults to the program name in the out-dir\
    \ folder. [default ''] "
  id: log_file
  inputBinding:
    prefix: --log-file
  type: string
- doc: "with probeset_id(name) and group_name columns specifying subsets of probesets\
    \ to compute qc stats for. [default ''] "
  id: qc_probe_sets
  inputBinding:
    prefix: --qc-probesets
  type: File
- doc: "types to check library and CEL files against. Can be specified multiple times.\
    \ The first one is propigated as the chip  type in the output files. Warning,\
    \ use of this option will override the usual check between chip types found in\
    \ the library files and cel files. You should use this option instead of --force\
    \ when possible. [default ''] "
  id: chip_type
  inputBinding:
    prefix: --chip-type
  type: string
- doc: "many digits of precision to use after decimal. [default '5'] "
  id: precision
  inputBinding:
    prefix: --precision
  type: string
- doc: "a particular operation (i.e. --explain rma-bg). [default ''] "
  id: explain
  inputBinding:
    prefix: --explain
  type: string
- doc: "not use the PM probes specified in file for computing results. [experimental]\
    \ [default ''] "
  id: kill_list
  inputBinding:
    prefix: --kill-list
  type: string
- doc: "time the engine run was started  [default ''] "
  id: time_start
  inputBinding:
    prefix: --time-start
  type: string
- doc: "time the engine run ended [default ''] "
  id: time_end
  inputBinding:
    prefix: --time-end
  type: string
- doc: "run time in minutes. [default ''] "
  id: time_run_minutes
  inputBinding:
    prefix: --time-run-minutes
  type: string
- doc: "GUID for the analysis run. [default ''] "
  id: analysis_guid
  inputBinding:
    prefix: --analysis-guid
  type: string
