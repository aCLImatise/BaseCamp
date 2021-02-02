class: CommandLineTool
id: SVbenchmark.cwl
inputs:
- id: in_ref
  doc: "The fasta file that was used as the reference for the two VCF files\nbeing\
    \ compared."
  type: File
  inputBinding:
    prefix: --ref
- id: in_test
  doc: "The file of variants to be compared to the variants in the truth\nfile."
  type: File
  inputBinding:
    prefix: --test
- id: in_truth
  doc: The file of variants to which the test variants will be compared.
  type: File
  inputBinding:
    prefix: --truth
- id: in_max_dist
  doc: "Maximum number of base pairs separating the POS values for two\nvariants to\
    \ be compared. Variants farther than this distance apart\nwill be considered not\
    \ to be matching."
  type: long
  inputBinding:
    prefix: --maxdist
- id: in_minsize
  doc: "Minimum size of a variant to be included in a benchmarking\ncomparison. In\
    \ calculations of recall/sensitivity, this minimum is\napplied to the size of\
    \ the \"true\" variant. In calculations of\nprecision, this minimum is applied\
    \ to the size of the test variant."
  type: long
  inputBinding:
    prefix: --minsize
- id: in_prefix
  doc: "Prefix to be used in the naming of all output files. A directory\nname can\
    \ be included (e.g., \"myresults/sampleA\") so long as the\ndirectory already\
    \ exists."
  type: Directory
  inputBinding:
    prefix: --prefix
- id: in_include_bed
  doc: "File of regions from which to include variants. Used to filter both\ntest\
    \ and truth variants."
  type: File
  inputBinding:
    prefix: --includebed
- id: in_test_filter
  doc: "String specifying the value in the test VCF record's \"FILTER\" field\nin\
    \ order for a variant to be included in the comparison."
  type: string
  inputBinding:
    prefix: --testfilter
- id: in_truth_filter
  doc: "String specifying the value in the truth VCF record's \"FILTER\" field\nin\
    \ order for a variant to be included in the comparison."
  type: string
  inputBinding:
    prefix: --truthfilter
- id: in_norm_shift
  doc: "Maximum allowable normalized shift between matching test and true\nvariants."
  type: string
  inputBinding:
    prefix: --normshift
- id: in_norm_size_diff
  doc: "Maximum allowable normalized size difference between matching test\nand true\
    \ variants."
  type: long
  inputBinding:
    prefix: --normsizediff
- id: in_norm_size_dist
  doc: "Maximum allowable normalized edit distance between matching test and\ntrue\
    \ variants."
  type: string
  inputBinding:
    prefix: --normsizedist
- id: in_distance_file
  doc: ''
  type: File
  inputBinding:
    prefix: --distance_file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_prefix
  doc: "Prefix to be used in the naming of all output files. A directory\nname can\
    \ be included (e.g., \"myresults/sampleA\") so long as the\ndirectory already\
    \ exists."
  type: Directory
  outputBinding:
    glob: $(inputs.in_prefix)
cwlVersion: v1.1
baseCommand:
- SVbenchmark
