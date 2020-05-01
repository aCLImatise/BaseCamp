#!/usr/bin/env cwl-runner

baseCommand:
- SVbenchmark
class: CommandLineTool
cwlVersion: v1.0
id: svbenchmark
inputs:
- doc: The fasta file that was used as the reference for the two VCF files being compared.
  id: ref
  inputBinding:
    prefix: --ref
  type: File
- doc: The file of variants to be compared to the variants in the truth file.
  id: test
  inputBinding:
    prefix: --test
  type: File
- doc: The file of variants to which the test variants will be compared.
  id: truth
  inputBinding:
    prefix: --truth
  type: File
- doc: Maximum number of base pairs separating the POS values for two variants to
    be compared. Variants farther than this distance apart will be considered not
    to be matching.
  id: max_dist
  inputBinding:
    prefix: --maxdist
  type: long
- doc: Minimum size of a variant to be included in a benchmarking comparison. In calculations
    of recall/sensitivity, this minimum is applied to the size of the "true" variant.
    In calculations of precision, this minimum is applied to the size of the test
    variant.
  id: minsize
  inputBinding:
    prefix: --minsize
  type: long
- doc: Prefix to be used in the naming of all output files. A directory name can be
    included (e.g., "myresults/sampleA") so long as the directory already exists.
  id: prefix
  inputBinding:
    prefix: --prefix
  type: string
- doc: File of regions from which to include variants. Used to filter both test and
    truth variants.
  id: include_bed
  inputBinding:
    prefix: --includebed
  type: string
- doc: String specifying the value in the test VCF record's "FILTER" field in order
    for a variant to be included in the comparison.
  id: test_filter
  inputBinding:
    prefix: --testfilter
  type: string
- doc: String specifying the value in the truth VCF record's "FILTER" field in order
    for a variant to be included in the comparison.
  id: truth_filter
  inputBinding:
    prefix: --truthfilter
  type: string
- doc: Maximum allowable normalized shift between matching test and true variants.
  id: norm_shift
  inputBinding:
    prefix: --normshift
  type: string
- doc: Maximum allowable normalized size difference between matching test and true
    variants.
  id: norm_size_diff
  inputBinding:
    prefix: --normsizediff
  type: string
- doc: Maximum allowable normalized edit distance between matching test and true variants.
  id: norm_size_dist
  inputBinding:
    prefix: --normsizedist
  type: string
