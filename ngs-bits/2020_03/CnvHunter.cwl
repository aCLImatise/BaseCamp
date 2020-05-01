#!/usr/bin/env cwl-runner

baseCommand:
- CnvHunter
class: CommandLineTool
cwlVersion: v1.0
id: cnvhunter
inputs:
- doc: Input TSV files (one per sample) containing coverage data (chr, start, end,
    avg_depth). If only one file is given, each line in this file is interpreted as
    an input file path.
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: Output TSV file containing the detected CNVs.
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "The number of most similar samples to use for reference construction. Default\
    \ value: '30'"
  id: n
  inputBinding:
    prefix: -n
  type: long
- doc: "Minimum z-score for CNV seed detection. Default value: '4'"
  id: min_z
  inputBinding:
    prefix: -min_z
  type: double
- doc: "Minimum z-score for CNV extension around seeds. Default value: '2'"
  id: ext_min_z
  inputBinding:
    prefix: -ext_min_z
  type: double
- doc: "Percentage of orignal region size that can be spanned while merging nearby\
    \ regions (0 disables it). Default value: '20'"
  id: ext_gap_span
  inputBinding:
    prefix: -ext_gap_span
  type: double
- doc: "QC: Minimum average depth of a sample. Default value: '40'"
  id: sam_min_depth
  inputBinding:
    prefix: -sam_min_depth
  type: double
- doc: "QC: Minimum correlation of sample to constructed reference sample. Default\
    \ value: '0.95'"
  id: sam_min_corr
  inputBinding:
    prefix: -sam_min_corr
  type: double
- doc: "Maximum number of regions used for sample correlation calculation (to speed\
    \ up comparisons for exoms etc.). Default value: '20000'"
  id: sam_corr_regs
  inputBinding:
    prefix: -sam_corr_regs
  type: long
- doc: "QC: Minimum (average) absolute depth of a target region. Default value: '20'"
  id: reg_min_cov
  inputBinding:
    prefix: -reg_min_cov
  type: double
- doc: "QC: Minimum (average) normalized depth of a target region. Default value:\
    \ '0.01'"
  id: reg_min_n_cov
  inputBinding:
    prefix: -reg_min_ncov
  type: double
- doc: "QC: Maximum coefficient of variation (median/mad) of target region. Default\
    \ value: '0.4'"
  id: reg_max_cv
  inputBinding:
    prefix: -reg_max_cv
  type: double
- doc: "Writes debug information for the sample matching the given name (or for all\
    \ samples if 'ALL' is given). Default value: ''"
  id: debug
  inputBinding:
    prefix: -debug
  type: string
- doc: "Writes a SEG file for the sample matching the given name (used for visualization\
    \ in IGV). Default value: ''"
  id: seg
  inputBinding:
    prefix: -seg
  type: string
- doc: "Comma-separated list of pseudo-autosomal regions on the X chromosome. Default\
    \ value: '1-2699520,154931044-155270560'"
  id: par
  inputBinding:
    prefix: -par
  type: string
- doc: "BED file containing copy-number-polymorphism (CNP) regions. They are excluded\
    \ from the normalization/correlation calculation. E.g use the CNV map from http://dx.doi.org/10.1038/nrg3871.\
    \ Default value: ''"
  id: cnp_file
  inputBinding:
    prefix: -cnp_file
  type: File
- doc: "List of BED files used for annotation. Each file adds a column to the output\
    \ file. The base filename is used as colum name and 4th column of the BED file\
    \ is used as annotation value. Default value: ''"
  id: annotate
  inputBinding:
    prefix: -annotate
  type: File
- doc: "Moving median GC-content normalization window size (disabled by default).\
    \ Default value: '-1'"
  id: gc_window
  inputBinding:
    prefix: -gc_window
  type: long
- doc: "Moving median GC-content normalization extension around target region. Default\
    \ value: '0'"
  id: gc_extend
  inputBinding:
    prefix: -gc_extend
  type: long
- doc: "Reference genome FASTA file. If unset, 'reference_genome' from the 'settings.ini'\
    \ file is used. Default value: ''"
  id: ref
  inputBinding:
    prefix: -ref
  type: File
- doc: Prints changeloge and exits.
  id: changelog
  inputBinding:
    prefix: --changelog
  type: boolean
- doc: Writes a Tool Definition Xml file. The file name is the application name with
    the suffix '.tdx'.
  id: tdx
  inputBinding:
    prefix: --tdx
  type: boolean
