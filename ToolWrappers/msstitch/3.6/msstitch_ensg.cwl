class: CommandLineTool
id: msstitch_ensg.cwl
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
- id: in_decoy_fn
  doc: Decoy peptide table input file
  type: File?
  inputBinding:
    prefix: --decoyfn
- id: in_score_col_pattern
  doc: "Regular expression pattern to find column where score\nto use (e.g. percolator\
    \ svm-score) is written."
  type: string?
  inputBinding:
    prefix: --scorecolpattern
- id: in_log_score
  doc: Score, e.g. q-values will be converted to -log10
  type: boolean?
  inputBinding:
    prefix: --logscore
- id: in_min_int
  doc: "Intensity threshold of PSMs when calculating isobaric\nratios. Values below\
    \ threshold will be set to NA.\nDefaults to no threshold."
  type: long?
  inputBinding:
    prefix: --minint
- id: in_denom_cols
  doc: "Column numbers of denominator channels when creating a\nsummarized feature\
    \ table with isobaric ratios from\nPSMs"
  type: string[]
  inputBinding:
    prefix: --denomcols
- id: in_denom_patterns
  doc: "Regex patterns to detect denominator channels in a PSM\ntable, when creating\
    \ a table with summarized feature\nisobaric ratios. If both --denompatterns and\n\
    --denomcol are given then column numbers are used.\nUsage e.g. --denompattern\
    \ _126 _131. Also possible:\n--denompattern _12[6-7] to detect multiple columns."
  type: string[]
  inputBinding:
    prefix: --denompatterns
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
    \ features, e.g. proteins."
  type: boolean?
  inputBinding:
    prefix: --median-normalize
- id: in_keep_psms_na_quant
  doc: "When summarizing isobaric quantification data, also\nuse the PSMs that have\
    \ an NA in any channel, even if\nthese may contain overly noisy quant data in\
    \ the other\nchannels. Normally these PSMs would be skipped in\nquantification"
  type: boolean?
  inputBinding:
    prefix: --keep-psms-na-quant
- id: in_ms_one_quant
  doc: "Specifies to add precursor quant data from lookup DB\nto output table"
  type: boolean?
  inputBinding:
    prefix: --ms1quant
- id: in_psm_table
  doc: "PSM table file containing isobaric quant data to add\nto table."
  type: File?
  inputBinding:
    prefix: --psmtable
- id: in_fast_a_delim
  doc: "Delimiter in FASTA header, used to parse gene names in\ncase of non-ENSEMBL/Uniprot"
  type: string?
  inputBinding:
    prefix: --fastadelim
- id: in_gene_field
  doc: "Field nr (first=1) in FASTA that contains gene name\nwhen using --fastadelim\
    \ to parse the gene names"
  type: long?
  inputBinding:
    prefix: --genefield
- id: in_target_fast_a
  doc: "FASTA file with target proteins to determine best\nscoring proteins of target/decoy\
    \ pairs for picked FDR.\nIn case using --picktype ensg/genename"
  type: File?
  inputBinding:
    prefix: --targetfasta
- id: in_decoy_fast_a
  doc: "FASTA file with decoy proteins to determine best\nscoring proteins of target/decoy\
    \ pairs for picked FDR.\nIn case using --picktype ensg/genename\n"
  type: File?
  inputBinding:
    prefix: --decoyfasta
- id: in_values_dot
  doc: --isobquantcolpattern QUANTCOLPATTERN
  type: string
  inputBinding:
    position: 0
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
  dockerPull: quay.io/biocontainers/msstitch:3.6--py_0
cwlVersion: v1.1
baseCommand:
- msstitch
- ensg
