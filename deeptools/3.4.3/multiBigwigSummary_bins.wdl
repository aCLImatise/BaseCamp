version 1.0

task MultiBigwigSummaryBins {
  input {
    File? bw_files
    String? out_filename
    Int? number_of_processors
    Boolean? verbose
    File? out_raw_counts
    String? deep_blue_url
    String? user_key
    String? deep_blue_tempdir
    Boolean? deep_blue_keep_temp
    File? b
    File file_two_dot_bw
  }
  command <<<
    multiBigwigSummary bins \
      ~{file_two_dot_bw} \
      ~{if defined(bw_files) then ("--bwfiles " +  '"' + bw_files + '"') else ""} \
      ~{if defined(out_filename) then ("--outFileName " +  '"' + out_filename + '"') else ""} \
      ~{if defined(number_of_processors) then ("--numberOfProcessors " +  '"' + number_of_processors + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(out_raw_counts) then ("--outRawCounts " +  '"' + out_raw_counts + '"') else ""} \
      ~{if defined(deep_blue_url) then ("--deepBlueURL " +  '"' + deep_blue_url + '"') else ""} \
      ~{if defined(user_key) then ("--userKey " +  '"' + user_key + '"') else ""} \
      ~{if defined(deep_blue_tempdir) then ("--deepBlueTempDir " +  '"' + deep_blue_tempdir + '"') else ""} \
      ~{true="--deepBlueKeepTemp" false="" deep_blue_keep_temp} \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""}
  >>>
  parameter_meta {
    bw_files: "FILE2 [FILE1 FILE2 ...], -b FILE1 FILE2 [FILE1 FILE2 ...] List of bigWig files, separated by spaces. (default: None)"
    out_filename: "File name to save the compressed matrix file (npz format) needed by the \"plotPCA\" and \"plotCorrelation\" tools. (default: None)"
    number_of_processors: "Number of processors to use. Type \"max/2\" to use half the maximum number of processors or \"max\" to use all available processors. (Default: 1)"
    verbose: "Set to see processing messages. (default: False)"
    out_raw_counts: "Save average scores per region for each bigWig file to a single tab-delimited file. (default: None)"
    deep_blue_url: "For remote files bedgraph/wiggle files hosted on deepBlue, this specifies the server URL. The default is \"http://deepblue.mpi-inf.mpg.de/xmlrpc\", which should not be changed without good reason. (default: http://deepblue.mpi-inf.mpg.de/xmlrpc)"
    user_key: "For remote files bedgraph/wiggle files hosted on deepBlue, this specifies the user key to use for access. The default is \"anonymous_key\", which suffices for public datasets. If you need access to a restricted access/private dataset, then request a key from deepBlue and specify it here. (default: anonymous_key)"
    deep_blue_tempdir: "If specified, temporary files from preloading datasets from deepBlue will be written here (note, this directory must exist). If not specified, where ever temporary files would normally be written on your system is used. (default: None)"
    deep_blue_keep_temp: "If specified, temporary bigWig files from preloading deepBlue datasets are not deleted. A message will be printed noting where these files are and what sample they correspond to. These can then be used if you wish to analyse the same sample with the same regions again. (default: False)"
    b: ""
    file_two_dot_bw: ""
  }
}