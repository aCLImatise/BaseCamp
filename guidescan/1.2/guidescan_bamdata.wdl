version 1.0

task GuidescanBamdata {
  input {
    String? project_name_load
    String? label
    String? name_file_guidernas
    String? maximum_hamming_distance
    Int? max_off_count
    String? how_many_threads
  }
  command <<<
    guidescan_bamdata \
      ~{if defined(project_name_load) then ("-n " +  '"' + project_name_load + '"') else ""} \
      ~{if defined(label) then ("--label " +  '"' + label + '"') else ""} \
      ~{if defined(name_file_guidernas) then ("-g " +  '"' + name_file_guidernas + '"') else ""} \
      ~{if defined(maximum_hamming_distance) then ("-d " +  '"' + maximum_hamming_distance + '"') else ""} \
      ~{if defined(max_off_count) then ("--maxoffcount " +  '"' + max_off_count + '"') else ""} \
      ~{if defined(how_many_threads) then ("-t " +  '"' + how_many_threads + '"') else ""}
  >>>
  parameter_meta {
    project_name_load: "project name, load previously saved arguments and save additional output (default: myguides)"
    label: "use in file name of output database for this run (default: test)"
    name_file_guidernas: "name of file with guideRNAs for which to compute BAM database; may be gzipped (.gz); if not provided, use all candidate guideRNAs found in the project (default: )"
    maximum_hamming_distance: "maximum Hamming distance to consider from guideRNA to its off-target; off-target is an alternative occurrence (with any PAM) of this guideRNA in the genome at Hamming distance at most this number (including PAM); use -1 for omitting any off-target info in resulting BAM (works much faster) (default: 3)"
    max_off_count: "maximum number of off-targets to store for a guideRNA in a resulting BAM library; ignore if OFFDIST is -1 (default: 1000)"
    how_many_threads: "how many threads to use; do not specify more than you have on your system; currently not implemented (default: 1)"
  }
}