version 1.0

task BigwigCompare {
  input {
    String? bigwig_one
    String? bigwig_two
    String? scale_factors
    Array[String] pseudo_count
    Boolean? skip_zero_over_zero
    String? operation
    Boolean? skip_noncovered_regions
    Int? number_of_processors
    Boolean? verbose
    File? out_filename
    String? out_file_format
    String? deep_blue_url
    String? user_key
    String? deep_blue_tempdir
    Boolean? deep_blue_keep_temp
    Int? binsize
    String? bp
  }
  command <<<
    bigwigCompare \
      ~{bp} \
      ~{if defined(bigwig_one) then ("--bigwig1 " +  '"' + bigwig_one + '"') else ""} \
      ~{if defined(bigwig_two) then ("--bigwig2 " +  '"' + bigwig_two + '"') else ""} \
      ~{if defined(scale_factors) then ("--scaleFactors " +  '"' + scale_factors + '"') else ""} \
      ~{if defined(pseudo_count) then ("--pseudocount " +  '"' + pseudo_count + '"') else ""} \
      ~{true="--skipZeroOverZero" false="" skip_zero_over_zero} \
      ~{if defined(operation) then ("--operation " +  '"' + operation + '"') else ""} \
      ~{true="--skipNonCoveredRegions" false="" skip_noncovered_regions} \
      ~{if defined(number_of_processors) then ("--numberOfProcessors " +  '"' + number_of_processors + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(out_filename) then ("--outFileName " +  '"' + out_filename + '"') else ""} \
      ~{if defined(out_file_format) then ("--outFileFormat " +  '"' + out_file_format + '"') else ""} \
      ~{if defined(deep_blue_url) then ("--deepBlueURL " +  '"' + deep_blue_url + '"') else ""} \
      ~{if defined(user_key) then ("--userKey " +  '"' + user_key + '"') else ""} \
      ~{if defined(deep_blue_tempdir) then ("--deepBlueTempDir " +  '"' + deep_blue_tempdir + '"') else ""} \
      ~{true="--deepBlueKeepTemp" false="" deep_blue_keep_temp} \
      ~{if defined(binsize) then ("--binSize " +  '"' + binsize + '"') else ""}
  >>>
  parameter_meta {
    bigwig_one: "file, -b1 Bigwig file Bigwig file 1. Usually the file for the treatment. (default: None)"
    bigwig_two: "file, -b2 Bigwig file Bigwig file 2. Usually the file for the control. (default: None)"
    scale_factors: "Set this parameter to multipy the bigwig values by a constant. The format is scaleFactor1:scaleFactor2. For example 0.7:1 to scale the first bigwig file by 0.7 while not scaling the second bigwig file (default: None)"
    pseudo_count: "A small number to avoid x/0. Only useful together with --operation log2 or --operation ratio. You can specify different values as pseudocounts for the numerator and the denominator by providing two values (the first value is used as the numerator pseudocount and the second the denominator pseudocount). (Default: 1)"
    skip_zero_over_zero: "Skip bins where BOTH BAM files lack coverage. This is determined BEFORE any applicable pseudocount is added. (default: False)"
    operation: "The default is to output the log2ratio of the two samples. The reciprocal ratio returns the the negative of the inverse of the ratio if the ratio is less than 0. The resulting values are interpreted as negative fold changes. Instead of performing a computation using both files, the scaled signal can alternatively be output for the first or second file using the '-- operation first' or '--operation second' (Default: log2)"
    skip_noncovered_regions: "This parameter determines if non-covered regions (regions without a score) in the bigWig files should be skipped. The default is to treat those regions as having a value of zero. The decision to skip non- covered regions depends on the interpretation of the data. Non-covered regions in a bigWig file may represent repetitive regions that should be skipped. Alternatively, the interpretation of non-covered regions as zeros may be wrong and this option should be used (default: False)"
    number_of_processors: "Number of processors to use. Type \"max/2\" to use half the maximum number of processors or \"max\" to use all available processors. (Default: 1)"
    verbose: "Set to see processing messages. (default: False)"
    out_filename: "Output file name. (default: None)"
    out_file_format: "Output file type. Either \"bigwig\" or \"bedgraph\". (default: bigwig)"
    deep_blue_url: "For remote files bedgraph/wiggle files hosted on deepBlue, this specifies the server URL. The default is \"http://deepblue.mpi-inf.mpg.de/xmlrpc\", which should not be changed without good reason. (default: http://deepblue.mpi-inf.mpg.de/xmlrpc)"
    user_key: "For remote files bedgraph/wiggle files hosted on deepBlue, this specifies the user key to use for access. The default is \"anonymous_key\", which suffices for public datasets. If you need access to a restricted access/private dataset, then request a key from deepBlue and specify it here. (default: anonymous_key)"
    deep_blue_tempdir: "If specified, temporary files from preloading datasets from deepBlue will be written here (note, this directory must exist). If not specified, where ever temporary files would normally be written on your system is used. (default: None)"
    deep_blue_keep_temp: "If specified, temporary bigWig files from preloading deepBlue datasets are not deleted. A message will be printed noting where these files are and what sample they correspond to. These can then be used if you wish to analyse the same sample with the same regions again. (default: False)"
    binsize: ""
    bp: ""
  }
}