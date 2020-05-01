#!/usr/bin/env cwl-runner

baseCommand:
- pre.py
class: CommandLineTool
cwlVersion: v1.0
id: pre.py
inputs:
- doc: VCF file to process.
  id: input
  inputBinding:
    position: 0
  type: string
- doc: Output filename.
  id: output
  inputBinding:
    position: 1
  type: string
- doc: Comma-separated list of locations [use naming after preprocessing], when not
    specified will use whole VCF.
  id: location
  inputBinding:
    prefix: --location
  type: string
- doc: Keep only PASS variants.
  id: pass_only
  inputBinding:
    prefix: --pass-only
  type: boolean
- doc: Specify a comma-separated list of filters to apply (by default all filters
    are ignored / passed on.
  id: filters_only
  inputBinding:
    prefix: --filters-only
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
- doc: Left-shift variants safely.
  id: left_shift
  inputBinding:
    prefix: --leftshift
  type: boolean
- doc: Do not left-shift variants safely.
  id: no_left_shift
  inputBinding:
    prefix: --no-leftshift
  type: boolean
- doc: Decompose variants into primitives. This results in more granular counts.
  id: decompose
  inputBinding:
    prefix: --decompose
  type: boolean
- doc: Do not decompose variants into primitives.
  id: no_decompose
  inputBinding:
    prefix: --no-decompose
  type: boolean
- doc: Enable preprocessing through bcftools norm -c x -D (requires external preprocessing
    to be switched on).
  id: bcf_tools_norm
  inputBinding:
    prefix: --bcftools-norm
  type: boolean
- doc: 'Add chr prefix to VCF records where necessary (default: auto, attempt to match
    reference).'
  id: fix_chr
  inputBinding:
    prefix: --fixchr
  type: boolean
- doc: 'Do not add chr prefix to VCF records (default: auto, attempt to match reference).'
  id: no_fix_chr
  inputBinding:
    prefix: --no-fixchr
  type: boolean
- doc: Use BCF internally. This is the default when the input file is in BCF format
    already. Using BCF can speed up temp file access, but may fail for VCF files that
    have broken headers or records that don't comply with the header.
  id: bcf
  inputBinding:
    prefix: --bcf
  type: boolean
- doc: Assume the input file is a somatic call file and squash all columns into one,
    putting all FORMATs into INFO + use half genotypes (see also --set-gt). This will
    replace all sample columns and replace them with a single one.
  id: somatic
  inputBinding:
    prefix: --somatic
  type: boolean
- doc: 'This is used to treat Strelka somatic files Possible values for this parameter:
    half / hemi / het / hom / half to assign one of the following genotypes to the
    resulting sample: 1 | 0/1 | 1/1 | ./1. This will replace all sample columns and
    replace them with a single one.'
  id: set_gt
  inputBinding:
    prefix: --set-gt
  type: string
- doc: Remove any variants genotyped as <NON_REF>.
  id: filter_non_ref
  inputBinding:
    prefix: --filter-nonref
  type: boolean
- doc: Convert the truth set from genome VCF format to a VCF before processing.
  id: convert_gvc_f_truth
  inputBinding:
    prefix: --convert-gvcf-truth
  type: boolean
- doc: Convert the query set from genome VCF format to a VCF before processing.
  id: convert_gvc_f_query
  inputBinding:
    prefix: --convert-gvcf-query
  type: boolean
- doc: 'Specify sex. This determines how haploid calls on chrX get treated: for male
    samples, all non-ref calls (in the truthset only when running through hap.py)
    are given a 1/1 genotype.'
  id: gender
  inputBinding:
    prefix: --gender
  type: string
- doc: Specify a reference file.
  id: reference
  inputBinding:
    prefix: --reference
  type: string
- doc: Preprocessing window size (variants further apart than that size are not expected
    to interfere).
  id: window_size
  inputBinding:
    prefix: --window-size
  type: string
- doc: Number of threads to use.
  id: threads
  inputBinding:
    prefix: --threads
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
