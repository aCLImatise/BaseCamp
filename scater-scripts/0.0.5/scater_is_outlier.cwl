class: CommandLineTool
id: scater_is_outlier.R.cwl
inputs:
- id: metric_file
  doc: Two column table with cell names on the first column and numeric QC metric
    on the second column.
  type: string
  inputBinding:
    prefix: --metric-file
- id: nm_ads
  doc: scalar, number of median-absolute-deviations away from median required for
    a value to be called an outlier.
  type: string
  inputBinding:
    prefix: --nmads
- id: type
  doc: 'character scalar, choice indicate whether outliers should be looked for at
    both tails (default: "both") or only at the lower end ("lower") or the higher
    end ("higher").'
  type: string
  inputBinding:
    prefix: --type
- id: log
  doc: logical, should the values of the metric be transformed to the log10 scale
    before computing median-absolute-deviation for outlier detection?
  type: string
  inputBinding:
    prefix: --log
- id: min_diff
  doc: numeric scalar indicating the minimum difference from the median to consider
    as an outlier. The outlier threshold is defined from the larger of nmads MADs
    and min.diff, to avoid calling many outliers when the MAD is very small. If NA,
    it is ignored.
  type: long
  inputBinding:
    prefix: --min-diff
- id: output_file
  doc: File name in which to store the output vector of outliers (one value per line)
  type: string
  inputBinding:
    prefix: --output-file
outputs: []
cwlVersion: v1.1
baseCommand:
- scater-is-outlier.R
