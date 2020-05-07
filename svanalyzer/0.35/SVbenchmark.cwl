class: CommandLineTool
id: SVbenchmark.cwl
inputs:
- id: ref
  doc: The fasta file that was used as the reference for the two VCF files being compared.
  type: File
  inputBinding:
    prefix: --ref
- id: test
  doc: The file of variants to be compared to the variants in the truth file.
  type: File
  inputBinding:
    prefix: --test
- id: truth
  doc: The file of variants to which the test variants will be compared.
  type: File
  inputBinding:
    prefix: --truth
- id: max_dist
  doc: Maximum number of base pairs separating the POS values for two variants to
    be compared. Variants farther than this distance apart will be considered not
    to be matching.
  type: long
  inputBinding:
    prefix: --maxdist
- id: minsize
  doc: Minimum size of a variant to be included in a benchmarking comparison. In calculations
    of recall/sensitivity, this minimum is applied to the size of the "true" variant.
    In calculations of precision, this minimum is applied to the size of the test
    variant.
  type: long
  inputBinding:
    prefix: --minsize
- id: prefix
  doc: Prefix to be used in the naming of all output files. A directory name can be
    included (e.g., "myresults/sampleA") so long as the directory already exists.
  type: string
  inputBinding:
    prefix: --prefix
- id: include_bed
  doc: File of regions from which to include variants. Used to filter both test and
    truth variants.
  type: string
  inputBinding:
    prefix: --includebed
- id: test_filter
  doc: String specifying the value in the test VCF record's "FILTER" field in order
    for a variant to be included in the comparison.
  type: string
  inputBinding:
    prefix: --testfilter
- id: truth_filter
  doc: String specifying the value in the truth VCF record's "FILTER" field in order
    for a variant to be included in the comparison.
  type: string
  inputBinding:
    prefix: --truthfilter
- id: norm_shift
  doc: Maximum allowable normalized shift between matching test and true variants.
  type: string
  inputBinding:
    prefix: --normshift
- id: norm_size_diff
  doc: Maximum allowable normalized size difference between matching test and true
    variants.
  type: string
  inputBinding:
    prefix: --normsizediff
- id: norm_size_dist
  doc: Maximum allowable normalized edit distance between matching test and true variants.
  type: string
  inputBinding:
    prefix: --normsizedist
outputs: []
cwlVersion: v1.1
baseCommand:
- SVbenchmark
