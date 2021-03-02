version 1.0

task JoinKUnitigsV3 {
  input {
    Int? min_overlap_length
    File? mean_and_stdev_by_prefix_file
    Int? num_stdev_s_allowed
    File? unit_ig_lengths_file
    File? k_unit_igs_translation_file
    File? overlaps_file
    File? num_k_unit_igs_file
    Int? max_nodes_allowed
    Int? join_aggressive
    File? output_file_superreadsoutput
    Int? threads
    String cmdline_parse
    File input_file
  }
  command <<<
    joinKUnitigs_v3 \
      ~{cmdline_parse} \
      ~{input_file} \
      ~{if defined(min_overlap_length) then ("--min-overlap-length " +  '"' + min_overlap_length + '"') else ""} \
      ~{if defined(mean_and_stdev_by_prefix_file) then ("--mean-and-stdev-by-prefix-file " +  '"' + mean_and_stdev_by_prefix_file + '"') else ""} \
      ~{if defined(num_stdev_s_allowed) then ("--num-stdevs-allowed " +  '"' + num_stdev_s_allowed + '"') else ""} \
      ~{if defined(unit_ig_lengths_file) then ("--unitig-lengths-file " +  '"' + unit_ig_lengths_file + '"') else ""} \
      ~{if defined(k_unit_igs_translation_file) then ("--kunitigs-translation-file " +  '"' + k_unit_igs_translation_file + '"') else ""} \
      ~{if defined(overlaps_file) then ("--overlaps-file " +  '"' + overlaps_file + '"') else ""} \
      ~{if defined(num_k_unit_igs_file) then ("--num-kunitigs-file " +  '"' + num_k_unit_igs_file + '"') else ""} \
      ~{if defined(max_nodes_allowed) then ("--max-nodes-allowed " +  '"' + max_nodes_allowed + '"') else ""} \
      ~{if defined(join_aggressive) then ("--join-aggressive " +  '"' + join_aggressive + '"') else ""} \
      ~{if defined(output_file_superreadsoutput) then ("--output " +  '"' + output_file_superreadsoutput + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    min_overlap_length: "*Minimum length of an overlap between unitigs"
    mean_and_stdev_by_prefix_file: "*File containing the mean and stdev for each prefix library."
    num_stdev_s_allowed: "Number of standard deviations the join length can be from the mean when trying to join a mate pair. (5)"
    unit_ig_lengths_file: "*File containing the length of the unitigs."
    k_unit_igs_translation_file: "File containing map from original unitigs to new (longer) unitigs."
    overlaps_file: "*Celera-style overlap file between unitigs in binary format."
    num_k_unit_igs_file: "*File containing the number of k-unitigs."
    max_nodes_allowed: "Max records allowed when trying to join a mate pair. (4000)"
    join_aggressive: "Report a join even if it is not unique. (0)"
    output_file_superreadsoutput: "Output file (super_reads_output)"
    threads: "Number of threads (1)"
    cmdline_parse: ""
    input_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file_superreadsoutput = "${in_output_file_superreadsoutput}"
  }
}