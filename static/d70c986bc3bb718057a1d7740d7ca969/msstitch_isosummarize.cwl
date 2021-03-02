class: CommandLineTool
id: msstitch_isosummarize.cwl
inputs:
- id: in_input_file_format
  doc: Input file of {} format
  type: File?
  inputBinding:
    prefix: -i
- id: in_directory_to_output
  doc: Directory to output in
  type: Directory?
  inputBinding:
    prefix: -d
- id: in_output_file
  doc: Output file
  type: File?
  inputBinding:
    prefix: -o
- id: in_is_ob_quant_col_pattern
  doc: "Unique text pattern to identify isobaric quant columns\nin input table."
  type: string?
  inputBinding:
    prefix: --isobquantcolpattern
- id: in_denom_patterns
  doc: "Regex patterns to detect denominator channels in a PSM\ntable, when creating\
    \ a table with summarized feature\nisobaric ratios. If both --denompatterns and\n\
    --denomcol are given then column numbers are used.\nUsage e.g. --denompattern\
    \ _126 _131. Also possible:\n--denompattern _12[6-7] to detect multiple columns."
  type: string[]
  inputBinding:
    prefix: --denompatterns
- id: in_denom_cols
  doc: "Column numbers of denominator channels when creating a\nsummarized feature\
    \ table with isobaric ratios from\nPSMs"
  type: string[]
  inputBinding:
    prefix: --denomcols
- id: in_median_sweep
  doc: "Instead of choosing a denominator channel, use the\nmedian intensity of each\
    \ PSM as its denominator."
  type: boolean?
  inputBinding:
    prefix: --mediansweep
- id: in_median_intensity
  doc: "Instead of choosing a denominator channel or median-\nsweeping, report the\
    \ the median intensity of each\nsummarized feat per channel. This results in reported\n\
    intensities rather than ratios."
  type: boolean?
  inputBinding:
    prefix: --medianintensity
- id: in_summarize_average
  doc: "Use average isobaric quantification values for\nsummarizing quant from PSMs,\
    \ instead of default PSM\nmedian values"
  type: boolean?
  inputBinding:
    prefix: --summarize-average
- id: in_keep_psms_na_quant
  doc: "When summarizing isobaric quantification data, also\nuse the PSMs that have\
    \ an NA in any channel, even if\nthese may contain overly noisy quant data in\
    \ the other\nchannels. Normally these PSMs would be skipped in\nquantification"
  type: boolean?
  inputBinding:
    prefix: --keep-psms-na-quant
- id: in_min_int
  doc: "Intensity threshold of PSMs when calculating isobaric\nratios. Values below\
    \ threshold will be set to NA.\nDefaults to no threshold."
  type: long?
  inputBinding:
    prefix: --minint
- id: in_feat_col
  doc: "Column number in table in which desired accessions to\nsummarize are stored.\
    \ First column number is 1. If not\nspecified this will summarize to PSMs themselves,\
    \ i.e.\nonly calculate the ratios and add those to the PSM\ntable."
  type: long?
  inputBinding:
    prefix: --featcol
- id: in_log_iso_quant
  doc: "Output log2 values for isoquant ratios. This\nlog2-transforms input PSM data\
    \ prior to summarizing\nand optional normalization. Ratios will be calculated\n\
    subtracted rather than divided, obviously."
  type: boolean?
  inputBinding:
    prefix: --logisoquant
- id: in_median_normalize
  doc: "Median-centering normalization for isobaric quant data\non protein or peptide\
    \ level. This median-centers the\ndata for each channel by dividing with the median\n\
    channel value (or subtracting in case of log data),\nfor each channel in output\
    \ features, e.g. proteins.\n"
  type: boolean?
  inputBinding:
    prefix: --median-normalize
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_directory_to_output
  doc: Directory to output in
  type: Directory?
  outputBinding:
    glob: $(inputs.in_directory_to_output)
- id: out_output_file
  doc: Output file
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/msstitch:3.5--py_0
cwlVersion: v1.1
baseCommand:
- msstitch
- isosummarize
