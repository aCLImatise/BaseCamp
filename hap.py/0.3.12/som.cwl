#!/usr/bin/env cwl-runner

baseCommand:
- som.py
class: CommandLineTool
cwlVersion: v1.0
id: som.py
inputs:
- doc: Truth VCF file
  id: truth
  inputBinding:
    position: 0
  type: string
- doc: Query VCF file
  id: query
  inputBinding:
    position: 1
  type: string
- doc: Output file prefix for statistics and feature table (when selected)
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: Location for bcftools view (e.g. chr1)
  id: location
  inputBinding:
    prefix: --location
  type: string
- doc: Restrict analysis to given (sparse) regions (using -R in bcftools).
  id: restrict_regions
  inputBinding:
    prefix: --restrict-regions
  type: string
- doc: Restrict analysis to given (dense) regions (using -T in bcftools).
  id: target_regions
  inputBinding:
    prefix: --target-regions
  type: string
- doc: False-positive region bed file to distinguish UNK from FP
  id: false_positives
  inputBinding:
    prefix: --false-positives
  type: string
- doc: Ambiguous region bed file(s) to distinguish from FP (e.g. variant only observed
    in some replicates)
  id: ambiguous
  inputBinding:
    prefix: --ambiguous
  type: string
- doc: Use FP calls from ambiguous region files also.
  id: ambi_fp
  inputBinding:
    prefix: --ambi-fp
  type: boolean
- doc: Do not use FP calls from ambiguous region files also.
  id: no_ambi_fp
  inputBinding:
    prefix: --no-ambi-fp
  type: boolean
- doc: Assume the truth set covers the whole genome and only count FPs in regions
    specified by the truth VCF or ambiguous/false-positive regions.
  id: count_unk
  inputBinding:
    prefix: --count-unk
  type: boolean
- doc: Do not use FP calls from ambiguous region files also.
  id: no_count_unk
  inputBinding:
    prefix: --no-count-unk
  type: boolean
- doc: print a table giving the number of ambiguous events per category
  id: explain_ambiguous
  inputBinding:
    prefix: --explain_ambiguous
  type: boolean
- doc: Specify a reference file.
  id: reference
  inputBinding:
    prefix: --reference
  type: string
- doc: Filename prefix for scratch report output.
  id: scratch_prefix
  inputBinding:
    prefix: --scratch-prefix
  type: string
- doc: Filename prefix for scratch report output.
  id: keep_scratch
  inputBinding:
    prefix: --keep-scratch
  type: boolean
- doc: Continue from scratch space (i.e. use VCFs in there if they already exist).
  id: continue
  inputBinding:
    prefix: --continue
  type: boolean
- doc: Use to include failing variants in comparison.
  id: include_non_pass
  inputBinding:
    prefix: --include-nonpass
  type: boolean
- doc: '{hcc.strelka.snv,hcc.pisces.snv,hcc.mutect.snv,hcc.varscan2.indel,admix.strelka.snv,generic,hcc.pisces.indel,hcc.strelka.indel,admix.strelka.indel,hcc.varscan2.snv,hcc.mutect.indel}
    Select a feature table to output.'
  id: feature_table
  inputBinding:
    prefix: --feature-table
  type: boolean
- doc: Generate summary.csv.
  id: happy_stats
  inputBinding:
    prefix: --happy-stats
  type: boolean
- doc: pass one or more BAM files for feature table extraction
  id: bam
  inputBinding:
    prefix: --bam
  type: string
- doc: Enable running of bcftools norm on the truth file.
  id: normalize_truth
  inputBinding:
    prefix: --normalize-truth
  type: boolean
- doc: Enable running of bcftools norm on the query file.
  id: normalize_query
  inputBinding:
    prefix: --normalize-query
  type: boolean
- doc: Enable running of bcftools norm on both truth and query file.
  id: normalize_all
  inputBinding:
    prefix: --normalize-all
  type: boolean
- doc: 'Add chr prefix to truth file (default: true).'
  id: fix_chr_truth
  inputBinding:
    prefix: --fixchr-truth
  type: boolean
- doc: 'Add chr prefix to query file (default: true).'
  id: fix_chr_query
  inputBinding:
    prefix: --fixchr-query
  type: boolean
- doc: Same as --fixchr-truth.
  id: fix_chr_truth
  inputBinding:
    prefix: --fix-chr-truth
  type: boolean
- doc: Same as --fixchr-query.
  id: fix_chr_query
  inputBinding:
    prefix: --fix-chr-query
  type: boolean
- doc: 'Disable chr replacement for truth (default: false).'
  id: no_fix_chr_truth
  inputBinding:
    prefix: --no-fixchr-truth
  type: boolean
- doc: 'Add chr prefix to query file (default: false).'
  id: no_fix_chr_query
  inputBinding:
    prefix: --no-fixchr-query
  type: boolean
- doc: Disable checking the order of TP features (dev feature).
  id: no_order_check
  inputBinding:
    prefix: --no-order-check
  type: boolean
- doc: '{varscan2.indel,strelka.snv.qss,mutect.snv,strelka.snv,strelka.indel.evs,varscan2.snv,mutect.indel,strelka.indel,strelka.snv.vqsr}
    Create a ROC-style table. This is caller specific - this will override the --feature-table
    switch!'
  id: roc
  inputBinding:
    prefix: --roc
  type: boolean
- doc: Stratify into different AF buckets. This needs to have features available for
    getting the AF both in truth and query variants.
  id: bin_afs
  inputBinding:
    prefix: --bin-afs
  type: boolean
- doc: Bin size for AF binning (should be < 1). Multiple bin sizes can be specified
    using a comma, e.g. 0.1,0.2,0.5,0.2 will split at 0.1, 0.3, 0.8 and 1.0.
  id: af_binsize
  inputBinding:
    prefix: --af-binsize
  type: string
- doc: Feature name to use for retrieving AF for truth variants (TP and FN)
  id: af_truth
  inputBinding:
    prefix: --af-truth
  type: string
- doc: Feature name to use for retrieving AF for query variants (FP/UNK/AMBI)
  id: af_query
  inputBinding:
    prefix: --af-query
  type: string
- doc: Count filtered vs. absent FN numbers. This requires the -P switch (to use all
    variants) and either the --feature-table or --roc switch.
  id: count_filtered_fn
  inputBinding:
    prefix: --count-filtered-fn
  type: boolean
- doc: 'How to obtain the normalisation constant for FP rate. By default, this will
    use the FP region bed file size when using --count-unk and the size of all reference
    contigs that overlap with the location specified in -l otherwise. This can be
    overridden with: 1) a number of nucleotides, or 2) "auto" to use the lengths of
    all contigs that have calls. The resulting value is used as fp.region.size.'
  id: fp_region_size
  inputBinding:
    prefix: --fp-region-size
  type: string
- doc: 'Confidence level for precision/recall confidence intervals (default: 0.95)'
  id: ci_level
  inputBinding:
    prefix: --ci-level
  type: string
- doc: Write logging information into file rather than to stderr
  id: log_file
  inputBinding:
    prefix: --logfile
  type: string
- doc: Raise logging level from warning to info.
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: Set logging level to output errors only.
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
