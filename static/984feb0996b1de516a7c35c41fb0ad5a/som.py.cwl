class: CommandLineTool
id: som.py.cwl
inputs:
- id: in_output
  doc: "Output file prefix for statistics and feature table\n(when selected)"
  type: File?
  inputBinding:
    prefix: --output
- id: in_location
  doc: Location for bcftools view (e.g. chr1)
  type: long?
  inputBinding:
    prefix: --location
- id: in_restrict_regions
  doc: "Restrict analysis to given (sparse) regions (using -R\nin bcftools)."
  type: File?
  inputBinding:
    prefix: --restrict-regions
- id: in_target_regions
  doc: "Restrict analysis to given (dense) regions (using -T\nin bcftools)."
  type: File?
  inputBinding:
    prefix: --target-regions
- id: in_false_positives
  doc: "False-positive region bed file to distinguish UNK from\nFP"
  type: File?
  inputBinding:
    prefix: --false-positives
- id: in_ambiguous
  doc: "Ambiguous region bed file(s) to distinguish from FP\n(e.g. variant only observed\
    \ in some replicates)"
  type: File?
  inputBinding:
    prefix: --ambiguous
- id: in_ambi_fp
  doc: Use FP calls from ambiguous region files also.
  type: boolean?
  inputBinding:
    prefix: --ambi-fp
- id: in_no_ambi_fp
  doc: Do not use FP calls from ambiguous region files also.
  type: boolean?
  inputBinding:
    prefix: --no-ambi-fp
- id: in_count_unk
  doc: "Assume the truth set covers the whole genome and only\ncount FPs in regions\
    \ specified by the truth VCF or\nambiguous/false-positive regions."
  type: boolean?
  inputBinding:
    prefix: --count-unk
- id: in_no_count_unk
  doc: Do not use FP calls from ambiguous region files also.
  type: boolean?
  inputBinding:
    prefix: --no-count-unk
- id: in_explain_ambiguous
  doc: "print a table giving the number of ambiguous events\nper category"
  type: boolean?
  inputBinding:
    prefix: --explain_ambiguous
- id: in_reference
  doc: Specify a reference file.
  type: File?
  inputBinding:
    prefix: --reference
- id: in_scratch_prefix
  doc: Filename prefix for scratch report output.
  type: File?
  inputBinding:
    prefix: --scratch-prefix
- id: in_keep_scratch
  doc: Filename prefix for scratch report output.
  type: File?
  inputBinding:
    prefix: --keep-scratch
- id: in_continue
  doc: "Continue from scratch space (i.e. use VCFs in there if\nthey already exist)."
  type: boolean?
  inputBinding:
    prefix: --continue
- id: in_include_non_pass
  doc: Use to include failing variants in comparison.
  type: boolean?
  inputBinding:
    prefix: --include-nonpass
- id: in_feature_table
  doc: Select a feature table to output.
  type: string?
  inputBinding:
    prefix: --feature-table
- id: in_happy_stats
  doc: Generate summary.csv.
  type: boolean?
  inputBinding:
    prefix: --happy-stats
- id: in_bam
  doc: pass one or more BAM files for feature table
  type: string?
  inputBinding:
    prefix: --bam
- id: in_normalize_query
  doc: Enable running of bcftools norm on the query file.
  type: boolean?
  inputBinding:
    prefix: --normalize-query
- id: in_normalize_all
  doc: "Enable running of bcftools norm on both truth and\nquery file."
  type: boolean?
  inputBinding:
    prefix: --normalize-all
- id: in_add_chr_prefix
  doc: 'Add chr prefix to truth file (default: true).'
  type: boolean?
  inputBinding:
    prefix: --fixchr-truth
- id: in_add_chr_true
  doc: 'Add chr prefix to query file (default: true).'
  type: boolean?
  inputBinding:
    prefix: --fixchr-query
- id: in_same__fixchrtruth
  doc: Same as --fixchr-truth.
  type: boolean?
  inputBinding:
    prefix: --fix-chr-truth
- id: in_same__fixchrquery
  doc: Same as --fixchr-query.
  type: boolean?
  inputBinding:
    prefix: --fix-chr-query
- id: in_no_fix_chr_truth
  doc: 'Disable chr replacement for truth (default: false).'
  type: boolean?
  inputBinding:
    prefix: --no-fixchr-truth
- id: in_no_fix_chr_query
  doc: 'Add chr prefix to query file (default: false).'
  type: boolean?
  inputBinding:
    prefix: --no-fixchr-query
- id: in_no_order_check
  doc: "Disable checking the order of TP features (dev\nfeature)."
  type: boolean?
  inputBinding:
    prefix: --no-order-check
- id: in_roc
  doc: "Create a ROC-style table. This is caller specific -\nthis will override the\
    \ --feature-table switch!"
  type: string?
  inputBinding:
    prefix: --roc
- id: in_bin_afs
  doc: "Stratify into different AF buckets. This needs to have\nfeatures available\
    \ for getting the AF both in truth\nand query variants."
  type: boolean?
  inputBinding:
    prefix: --bin-afs
- id: in_af_binsize
  doc: "Bin size for AF binning (should be < 1). Multiple bin\nsizes can be specified\
    \ using a comma, e.g.\n0.1,0.2,0.5,0.2 will split at 0.1, 0.3, 0.8 and 1.0."
  type: long?
  inputBinding:
    prefix: --af-binsize
- id: in_af_truth
  doc: "Feature name to use for retrieving AF for truth\nvariants (TP and FN)"
  type: string?
  inputBinding:
    prefix: --af-truth
- id: in_af_query
  doc: "Feature name to use for retrieving AF for query\nvariants (FP/UNK/AMBI)"
  type: string?
  inputBinding:
    prefix: --af-query
- id: in_count_filtered_fn
  doc: "Count filtered vs. absent FN numbers. This requires\nthe -P switch (to use\
    \ all variants) and either the\n--feature-table or --roc switch."
  type: boolean?
  inputBinding:
    prefix: --count-filtered-fn
- id: in_fp_region_size
  doc: "How to obtain the normalisation constant for FP rate.\nBy default, this will\
    \ use the FP region bed file size\nwhen using --count-unk and the size of all\
    \ reference\ncontigs that overlap with the location specified in -l\notherwise.\
    \ This can be overridden with: 1) a number of\nnucleotides, or 2) \"auto\" to\
    \ use the lengths of all\ncontigs that have calls. The resulting value is used\n\
    as fp.region.size."
  type: long?
  inputBinding:
    prefix: --fp-region-size
- id: in_ci_level
  doc: "Confidence level for precision/recall confidence\nintervals (default: 0.95)"
  type: double?
  inputBinding:
    prefix: --ci-level
- id: in_log_file
  doc: Write logging information into file rather than to
  type: File?
  inputBinding:
    prefix: --logfile
- id: in_quiet
  doc: Set logging level to output errors only.
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_truth
  doc: Truth VCF file
  type: string
  inputBinding:
    position: 0
- id: in_query
  doc: Query VCF file
  type: string
  inputBinding:
    position: 1
- id: in_extraction
  doc: --normalize-truth     Enable running of bcftools norm on the truth file.
  type: string
  inputBinding:
    position: 0
- id: in_stderr
  doc: --verbose             Raise logging level from warning to info.
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output file prefix for statistics and feature table\n(when selected)"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_scratch_prefix
  doc: Filename prefix for scratch report output.
  type: File?
  outputBinding:
    glob: $(inputs.in_scratch_prefix)
- id: out_keep_scratch
  doc: Filename prefix for scratch report output.
  type: File?
  outputBinding:
    glob: $(inputs.in_keep_scratch)
hints: []
cwlVersion: v1.1
baseCommand:
- som.py
