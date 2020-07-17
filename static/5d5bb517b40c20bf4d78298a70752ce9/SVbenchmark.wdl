version 1.0

task SVbenchmark {
  input {
    File? ref
    File? test
    File? truth
    Int? max_dist
    Int? minsize
    String? prefix
    String? include_bed
    String? test_filter
    String? truth_filter
    String? norm_shift
    String? norm_size_diff
    String? norm_size_dist
  }
  command <<<
    SVbenchmark \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if defined(test) then ("--test " +  '"' + test + '"') else ""} \
      ~{if defined(truth) then ("--truth " +  '"' + truth + '"') else ""} \
      ~{if defined(max_dist) then ("--maxdist " +  '"' + max_dist + '"') else ""} \
      ~{if defined(minsize) then ("--minsize " +  '"' + minsize + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(include_bed) then ("--includebed " +  '"' + include_bed + '"') else ""} \
      ~{if defined(test_filter) then ("--testfilter " +  '"' + test_filter + '"') else ""} \
      ~{if defined(truth_filter) then ("--truthfilter " +  '"' + truth_filter + '"') else ""} \
      ~{if defined(norm_shift) then ("--normshift " +  '"' + norm_shift + '"') else ""} \
      ~{if defined(norm_size_diff) then ("--normsizediff " +  '"' + norm_size_diff + '"') else ""} \
      ~{if defined(norm_size_dist) then ("--normsizedist " +  '"' + norm_size_dist + '"') else ""}
  >>>
  parameter_meta {
    ref: "The fasta file that was used as the reference for the two VCF files being compared."
    test: "The file of variants to be compared to the variants in the truth file."
    truth: "The file of variants to which the test variants will be compared."
    max_dist: "Maximum number of base pairs separating the POS values for two variants to be compared. Variants farther than this distance apart will be considered not to be matching."
    minsize: "Minimum size of a variant to be included in a benchmarking comparison. In calculations of recall/sensitivity, this minimum is applied to the size of the \"true\" variant. In calculations of precision, this minimum is applied to the size of the test variant."
    prefix: "Prefix to be used in the naming of all output files. A directory name can be included (e.g., \"myresults/sampleA\") so long as the directory already exists."
    include_bed: "File of regions from which to include variants. Used to filter both test and truth variants."
    test_filter: "String specifying the value in the test VCF record's \"FILTER\" field in order for a variant to be included in the comparison."
    truth_filter: "String specifying the value in the truth VCF record's \"FILTER\" field in order for a variant to be included in the comparison."
    norm_shift: "Maximum allowable normalized shift between matching test and true variants."
    norm_size_diff: "Maximum allowable normalized size difference between matching test and true variants."
    norm_size_dist: "Maximum allowable normalized edit distance between matching test and true variants."
  }
}