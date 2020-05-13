class: CommandLineTool
id: CnvHunter.cwl
inputs:
- id: in
  doc: Input TSV files (one per sample) containing coverage data (chr, start, end,
    avg_depth). If only one file is given, each line in this file is interpreted as
    an input file path.
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: Output TSV file containing the detected CNVs.
  type: File
  inputBinding:
    prefix: -out
- id: n
  doc: "The number of most similar samples to use for reference construction. Default\
    \ value: '30'"
  type: long
  inputBinding:
    prefix: -n
- id: min_z
  doc: "Minimum z-score for CNV seed detection. Default value: '4'"
  type: double
  inputBinding:
    prefix: -min_z
- id: ext_min_z
  doc: "Minimum z-score for CNV extension around seeds. Default value: '2'"
  type: double
  inputBinding:
    prefix: -ext_min_z
- id: ext_gap_span
  doc: "Percentage of orignal region size that can be spanned while merging nearby\
    \ regions (0 disables it). Default value: '20'"
  type: double
  inputBinding:
    prefix: -ext_gap_span
- id: sam_min_depth
  doc: "QC: Minimum average depth of a sample. Default value: '40'"
  type: double
  inputBinding:
    prefix: -sam_min_depth
- id: sam_min_corr
  doc: "QC: Minimum correlation of sample to constructed reference sample. Default\
    \ value: '0.95'"
  type: double
  inputBinding:
    prefix: -sam_min_corr
- id: sam_corr_regs
  doc: "Maximum number of regions used for sample correlation calculation (to speed\
    \ up comparisons for exoms etc.). Default value: '20000'"
  type: long
  inputBinding:
    prefix: -sam_corr_regs
- id: reg_min_cov
  doc: "QC: Minimum (average) absolute depth of a target region. Default value: '20'"
  type: double
  inputBinding:
    prefix: -reg_min_cov
- id: reg_min_n_cov
  doc: "QC: Minimum (average) normalized depth of a target region. Default value:\
    \ '0.01'"
  type: double
  inputBinding:
    prefix: -reg_min_ncov
- id: reg_max_cv
  doc: "QC: Maximum coefficient of variation (median/mad) of target region. Default\
    \ value: '0.4'"
  type: double
  inputBinding:
    prefix: -reg_max_cv
- id: debug
  doc: "Writes debug information for the sample matching the given name (or for all\
    \ samples if 'ALL' is given). Default value: ''"
  type: string
  inputBinding:
    prefix: -debug
- id: seg
  doc: "Writes a SEG file for the sample matching the given name (used for visualization\
    \ in IGV). Default value: ''"
  type: string
  inputBinding:
    prefix: -seg
- id: par
  doc: "Comma-separated list of pseudo-autosomal regions on the X chromosome. Default\
    \ value: '1-2699520,154931044-155270560'"
  type: string
  inputBinding:
    prefix: -par
- id: cnp_file
  doc: "BED file containing copy-number-polymorphism (CNP) regions. They are excluded\
    \ from the normalization/correlation calculation. E.g use the CNV map from http://dx.doi.org/10.1038/nrg3871.\
    \ Default value: ''"
  type: File
  inputBinding:
    prefix: -cnp_file
- id: annotate
  doc: "List of BED files used for annotation. Each file adds a column to the output\
    \ file. The base filename is used as colum name and 4th column of the BED file\
    \ is used as annotation value. Default value: ''"
  type: File
  inputBinding:
    prefix: -annotate
- id: gc_window
  doc: "Moving median GC-content normalization window size (disabled by default).\
    \ Default value: '-1'"
  type: long
  inputBinding:
    prefix: -gc_window
- id: gc_extend
  doc: "Moving median GC-content normalization extension around target region. Default\
    \ value: '0'"
  type: long
  inputBinding:
    prefix: -gc_extend
- id: ref
  doc: "Reference genome FASTA file. If unset, 'reference_genome' from the 'settings.ini'\
    \ file is used. Default value: ''"
  type: File
  inputBinding:
    prefix: -ref
- id: changelog
  doc: Prints changeloge and exits.
  type: boolean
  inputBinding:
    prefix: --changelog
- id: tdx
  doc: Writes a Tool Definition Xml file. The file name is the application name with
    the suffix '.tdx'.
  type: boolean
  inputBinding:
    prefix: --tdx
outputs: []
cwlVersion: v1.1
baseCommand:
- CnvHunter
