class: CommandLineTool
id: som.py.cwl
inputs:
- id: truth
  doc: Truth VCF file
  type: string
  inputBinding:
    position: 0
- id: query
  doc: Query VCF file
  type: string
  inputBinding:
    position: 1
- id: output
  doc: Output file prefix for statistics and feature table (when selected)
  type: string
  inputBinding:
    prefix: --output
- id: location
  doc: Location for bcftools view (e.g. chr1)
  type: string
  inputBinding:
    prefix: --location
- id: restrict_regions
  doc: Restrict analysis to given (sparse) regions (using -R in bcftools).
  type: string
  inputBinding:
    prefix: --restrict-regions
- id: target_regions
  doc: Restrict analysis to given (dense) regions (using -T in bcftools).
  type: string
  inputBinding:
    prefix: --target-regions
- id: false_positives
  doc: False-positive region bed file to distinguish UNK from FP
  type: string
  inputBinding:
    prefix: --false-positives
- id: ambiguous
  doc: Ambiguous region bed file(s) to distinguish from FP (e.g. variant only observed
    in some replicates)
  type: string
  inputBinding:
    prefix: --ambiguous
- id: ambi_fp
  doc: Use FP calls from ambiguous region files also.
  type: boolean
  inputBinding:
    prefix: --ambi-fp
- id: no_ambi_fp
  doc: Do not use FP calls from ambiguous region files also.
  type: boolean
  inputBinding:
    prefix: --no-ambi-fp
- id: count_unk
  doc: Assume the truth set covers the whole genome and only count FPs in regions
    specified by the truth VCF or ambiguous/false-positive regions.
  type: boolean
  inputBinding:
    prefix: --count-unk
- id: no_count_unk
  doc: Do not use FP calls from ambiguous region files also.
  type: boolean
  inputBinding:
    prefix: --no-count-unk
- id: explain_ambiguous
  doc: print a table giving the number of ambiguous events per category
  type: boolean
  inputBinding:
    prefix: --explain_ambiguous
- id: reference
  doc: Specify a reference file.
  type: string
  inputBinding:
    prefix: --reference
- id: scratch_prefix
  doc: Filename prefix for scratch report output.
  type: string
  inputBinding:
    prefix: --scratch-prefix
- id: keep_scratch
  doc: Filename prefix for scratch report output.
  type: boolean
  inputBinding:
    prefix: --keep-scratch
- id: continue
  doc: Continue from scratch space (i.e. use VCFs in there if they already exist).
  type: boolean
  inputBinding:
    prefix: --continue
- id: include_non_pass
  doc: Use to include failing variants in comparison.
  type: boolean
  inputBinding:
    prefix: --include-nonpass
- id: feature_table
  doc: '{hcc.strelka.snv,hcc.pisces.snv,hcc.mutect.snv,hcc.varscan2.indel,admix.strelka.snv,generic,hcc.pisces.indel,hcc.strelka.indel,admix.strelka.indel,hcc.varscan2.snv,hcc.mutect.indel}
    Select a feature table to output.'
  type: boolean
  inputBinding:
    prefix: --feature-table
- id: happy_stats
  doc: Generate summary.csv.
  type: boolean
  inputBinding:
    prefix: --happy-stats
- id: bam
  doc: pass one or more BAM files for feature table extraction
  type: string
  inputBinding:
    prefix: --bam
- id: normalize_truth
  doc: Enable running of bcftools norm on the truth file.
  type: boolean
  inputBinding:
    prefix: --normalize-truth
- id: normalize_query
  doc: Enable running of bcftools norm on the query file.
  type: boolean
  inputBinding:
    prefix: --normalize-query
- id: normalize_all
  doc: Enable running of bcftools norm on both truth and query file.
  type: boolean
  inputBinding:
    prefix: --normalize-all
- id: fix_chr_truth
  doc: 'Add chr prefix to truth file (default: true).'
  type: boolean
  inputBinding:
    prefix: --fixchr-truth
- id: fix_chr_query
  doc: 'Add chr prefix to query file (default: true).'
  type: boolean
  inputBinding:
    prefix: --fixchr-query
- id: fix_chr_truth
  doc: Same as --fixchr-truth.
  type: boolean
  inputBinding:
    prefix: --fix-chr-truth
- id: fix_chr_query
  doc: Same as --fixchr-query.
  type: boolean
  inputBinding:
    prefix: --fix-chr-query
- id: no_fix_chr_truth
  doc: 'Disable chr replacement for truth (default: false).'
  type: boolean
  inputBinding:
    prefix: --no-fixchr-truth
- id: no_fix_chr_query
  doc: 'Add chr prefix to query file (default: false).'
  type: boolean
  inputBinding:
    prefix: --no-fixchr-query
- id: no_order_check
  doc: Disable checking the order of TP features (dev feature).
  type: boolean
  inputBinding:
    prefix: --no-order-check
- id: roc
  doc: '{varscan2.indel,strelka.snv.qss,mutect.snv,strelka.snv,strelka.indel.evs,varscan2.snv,mutect.indel,strelka.indel,strelka.snv.vqsr}
    Create a ROC-style table. This is caller specific - this will override the --feature-table
    switch!'
  type: boolean
  inputBinding:
    prefix: --roc
- id: bin_afs
  doc: Stratify into different AF buckets. This needs to have features available for
    getting the AF both in truth and query variants.
  type: boolean
  inputBinding:
    prefix: --bin-afs
- id: af_binsize
  doc: Bin size for AF binning (should be < 1). Multiple bin sizes can be specified
    using a comma, e.g. 0.1,0.2,0.5,0.2 will split at 0.1, 0.3, 0.8 and 1.0.
  type: string
  inputBinding:
    prefix: --af-binsize
- id: af_truth
  doc: Feature name to use for retrieving AF for truth variants (TP and FN)
  type: string
  inputBinding:
    prefix: --af-truth
- id: af_query
  doc: Feature name to use for retrieving AF for query variants (FP/UNK/AMBI)
  type: string
  inputBinding:
    prefix: --af-query
- id: count_filtered_fn
  doc: Count filtered vs. absent FN numbers. This requires the -P switch (to use all
    variants) and either the --feature-table or --roc switch.
  type: boolean
  inputBinding:
    prefix: --count-filtered-fn
- id: fp_region_size
  doc: 'How to obtain the normalisation constant for FP rate. By default, this will
    use the FP region bed file size when using --count-unk and the size of all reference
    contigs that overlap with the location specified in -l otherwise. This can be
    overridden with: 1) a number of nucleotides, or 2) "auto" to use the lengths of
    all contigs that have calls. The resulting value is used as fp.region.size.'
  type: string
  inputBinding:
    prefix: --fp-region-size
- id: ci_level
  doc: 'Confidence level for precision/recall confidence intervals (default: 0.95)'
  type: string
  inputBinding:
    prefix: --ci-level
- id: log_file
  doc: Write logging information into file rather than to stderr
  type: string
  inputBinding:
    prefix: --logfile
- id: verbose
  doc: Raise logging level from warning to info.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: quiet
  doc: Set logging level to output errors only.
  type: boolean
  inputBinding:
    prefix: --quiet
outputs: []
cwlVersion: v1.1
baseCommand:
- som.py
