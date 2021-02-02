version 1.0

task SVbenchmark {
  input {
    File? ref
    File? test
    File? truth
    Int? max_dist
    Int? minsize
    Directory? prefix
    File? include_bed
    String? test_filter
    String? truth_filter
    String? norm_shift
    Int? norm_size_diff
    String? norm_size_dist
    File? distance_file
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
      ~{if defined(norm_size_dist) then ("--normsizedist " +  '"' + norm_size_dist + '"') else ""} \
      ~{if defined(distance_file) then ("--distance_file " +  '"' + distance_file + '"') else ""}
  >>>
  parameter_meta {
    ref: "The fasta file that was used as the reference for the two VCF files\\nbeing compared."
    test: "The file of variants to be compared to the variants in the truth\\nfile."
    truth: "The file of variants to which the test variants will be compared."
    max_dist: "Maximum number of base pairs separating the POS values for two\\nvariants to be compared. Variants farther than this distance apart\\nwill be considered not to be matching."
    minsize: "Minimum size of a variant to be included in a benchmarking\\ncomparison. In calculations of recall/sensitivity, this minimum is\\napplied to the size of the \\\"true\\\" variant. In calculations of\\nprecision, this minimum is applied to the size of the test variant."
    prefix: "Prefix to be used in the naming of all output files. A directory\\nname can be included (e.g., \\\"myresults/sampleA\\\") so long as the\\ndirectory already exists."
    include_bed: "File of regions from which to include variants. Used to filter both\\ntest and truth variants."
    test_filter: "String specifying the value in the test VCF record's \\\"FILTER\\\" field\\nin order for a variant to be included in the comparison."
    truth_filter: "String specifying the value in the truth VCF record's \\\"FILTER\\\" field\\nin order for a variant to be included in the comparison."
    norm_shift: "Maximum allowable normalized shift between matching test and true\\nvariants."
    norm_size_diff: "Maximum allowable normalized size difference between matching test\\nand true variants."
    norm_size_dist: "Maximum allowable normalized edit distance between matching test and\\ntrue variants."
    distance_file: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_prefix = "${in_prefix}"
  }
}