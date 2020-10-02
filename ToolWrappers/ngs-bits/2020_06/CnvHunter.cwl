class: CommandLineTool
id: CnvHunter.cwl
inputs:
- id: in_in
  doc: Input TSV files (one per sample) containing coverage data (chr, start, end,
    avg_depth). If only one file is given, each line in this file is interpreted as
    an input file path.
  type: File
  inputBinding:
    prefix: -in
- id: in_out
  doc: Output TSV file containing the detected CNVs.
  type: File
  inputBinding:
    prefix: -out
- id: in_number_most_similar
  doc: "The number of most similar samples to use for reference construction.\nDefault\
    \ value: '30'"
  type: long
  inputBinding:
    prefix: -n
- id: in_min_z
  doc: "Minimum z-score for CNV seed detection.\nDefault value: '4'"
  type: double
  inputBinding:
    prefix: -min_z
- id: in_ext_min_z
  doc: "Minimum z-score for CNV extension around seeds.\nDefault value: '2'"
  type: double
  inputBinding:
    prefix: -ext_min_z
- id: in_ext_gap_span
  doc: "Percentage of orignal region size that can be spanned while merging nearby\
    \ regions (0 disables it).\nDefault value: '20'"
  type: double
  inputBinding:
    prefix: -ext_gap_span
- id: in_sam_min_depth
  doc: "QC: Minimum average depth of a sample.\nDefault value: '40'"
  type: double
  inputBinding:
    prefix: -sam_min_depth
- id: in_sam_min_corr
  doc: "QC: Minimum correlation of sample to constructed reference sample.\nDefault\
    \ value: '0.95'"
  type: double
  inputBinding:
    prefix: -sam_min_corr
- id: in_sam_corr_regs
  doc: "Maximum number of regions used for sample correlation calculation (to speed\
    \ up comparisons for exoms etc.).\nDefault value: '20000'"
  type: long
  inputBinding:
    prefix: -sam_corr_regs
- id: in_reg_min_cov
  doc: "QC: Minimum (average) absolute depth of a target region.\nDefault value: '20'"
  type: double
  inputBinding:
    prefix: -reg_min_cov
- id: in_reg_min_n_cov
  doc: "QC: Minimum (average) normalized depth of a target region.\nDefault value:\
    \ '0.01'"
  type: double
  inputBinding:
    prefix: -reg_min_ncov
- id: in_reg_max_cv
  doc: "QC: Maximum coefficient of variation (median/mad) of target region.\nDefault\
    \ value: '0.4'"
  type: double
  inputBinding:
    prefix: -reg_max_cv
- id: in_debug
  doc: "Writes debug information for the sample matching the given name (or for all\
    \ samples if 'ALL' is given).\nDefault value: ''"
  type: string
  inputBinding:
    prefix: -debug
- id: in_seg
  doc: "Writes a SEG file for the sample matching the given name (used for visualization\
    \ in IGV).\nDefault value: ''"
  type: File
  inputBinding:
    prefix: -seg
- id: in_par
  doc: "Comma-separated list of pseudo-autosomal regions on the X chromosome.\nDefault\
    \ value: '1-2699520,154931044-155270560'"
  type: long
  inputBinding:
    prefix: -par
- id: in_cnp_file
  doc: "BED file containing copy-number-polymorphism (CNP) regions. They are excluded\
    \ from the normalization/correlation calculation. E.g use the CNV map from http://dx.doi.org/10.1038/nrg3871.\n\
    Default value: ''"
  type: File
  inputBinding:
    prefix: -cnp_file
- id: in_annotate
  doc: "List of BED files used for annotation. Each file adds a column to the output\
    \ file. The base filename is used as colum name and 4th column of the BED file\
    \ is used as annotation value.\nDefault value: ''"
  type: File
  inputBinding:
    prefix: -annotate
- id: in_gc_window
  doc: "Moving median GC-content normalization window size (disabled by default).\n\
    Default value: '-1'"
  type: long
  inputBinding:
    prefix: -gc_window
- id: in_gc_extend
  doc: "Moving median GC-content normalization extension around target region.\nDefault\
    \ value: '0'"
  type: long
  inputBinding:
    prefix: -gc_extend
- id: in_ref
  doc: "Reference genome FASTA file. If unset, 'reference_genome' from the 'settings.ini'\
    \ file is used.\nDefault value: ''"
  type: File
  inputBinding:
    prefix: -ref
- id: in_changelog
  doc: Prints changeloge and exits.
  type: boolean
  inputBinding:
    prefix: --changelog
- id: in_tdx
  doc: Writes a Tool Definition Xml file. The file name is the application name with
    the suffix '.tdx'.
  type: boolean
  inputBinding:
    prefix: --tdx
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Output TSV file containing the detected CNVs.
  type: File
  outputBinding:
    glob: $(inputs.in_out)
- id: out_annotate
  doc: "List of BED files used for annotation. Each file adds a column to the output\
    \ file. The base filename is used as colum name and 4th column of the BED file\
    \ is used as annotation value.\nDefault value: ''"
  type: File
  outputBinding:
    glob: $(inputs.in_annotate)
cwlVersion: v1.1
baseCommand:
- CnvHunter
