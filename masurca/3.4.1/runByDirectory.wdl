version 1.0

task RunByDirectory {
  input {
    Int? num_threads
    File? output_file_read
    File? error_out
    Boolean? keep_directories
    Boolean? jumping_read_joining_run
    File? celera_terminator_directory
    Int? max_nodes
    Int? min_km_er_len
    Int? max_km_er_len
    Int? mean_for_faux_inserts
    Int? join_aggressive
    Int? stdev_for_faux_inserts
    Int? num_stdev_s_allowed
    File? mean_and_stdev_file
    File? output_dir
    File? contig_end_sequence_file
    Int? num_joins_per_directory
    Int? skip_gaps
    File? dir_for_read_sequences
    String cmdline_parse
  }
  command <<<
    runByDirectory \
      ~{cmdline_parse} \
      ~{if defined(num_threads) then ("--num-threads " +  '"' + num_threads + '"') else ""} \
      ~{if defined(output_file_read) then ("--output " +  '"' + output_file_read + '"') else ""} \
      ~{if defined(error_out) then ("--error-out " +  '"' + error_out + '"') else ""} \
      ~{if (keep_directories) then "--keep-directories" else ""} \
      ~{if (jumping_read_joining_run) then "--jumping-read-joining-run" else ""} \
      ~{if defined(celera_terminator_directory) then ("--Celera-terminator-directory " +  '"' + celera_terminator_directory + '"') else ""} \
      ~{if defined(max_nodes) then ("--max-nodes " +  '"' + max_nodes + '"') else ""} \
      ~{if defined(min_km_er_len) then ("--min-kmer-len " +  '"' + min_km_er_len + '"') else ""} \
      ~{if defined(max_km_er_len) then ("--max-kmer-len " +  '"' + max_km_er_len + '"') else ""} \
      ~{if defined(mean_for_faux_inserts) then ("--mean-for-faux-inserts " +  '"' + mean_for_faux_inserts + '"') else ""} \
      ~{if defined(join_aggressive) then ("--join-aggressive " +  '"' + join_aggressive + '"') else ""} \
      ~{if defined(stdev_for_faux_inserts) then ("--stdev-for-faux-inserts " +  '"' + stdev_for_faux_inserts + '"') else ""} \
      ~{if defined(num_stdev_s_allowed) then ("--num-stdevs-allowed " +  '"' + num_stdev_s_allowed + '"') else ""} \
      ~{if defined(mean_and_stdev_file) then ("--mean-and-stdev-file " +  '"' + mean_and_stdev_file + '"') else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(contig_end_sequence_file) then ("--contig-end-sequence-file " +  '"' + contig_end_sequence_file + '"') else ""} \
      ~{if defined(num_joins_per_directory) then ("--num-joins-per-directory " +  '"' + num_joins_per_directory + '"') else ""} \
      ~{if defined(skip_gaps) then ("--skip-gaps " +  '"' + skip_gaps + '"') else ""} \
      ~{if defined(dir_for_read_sequences) then ("--dir-for-read-sequences " +  '"' + dir_for_read_sequences + '"') else ""}
  >>>
  parameter_meta {
    num_threads: "Number of threads (1)"
    output_file_read: "Output file with sequence and read placement (output.txt)"
    error_out: "Output file with directories that failed (err_dirs.txt)"
    keep_directories: "Keep the individual gap directories (false)"
    jumping_read_joining_run: "This is a run to find short reversed jumping read inserts (false)"
    celera_terminator_directory: "*The location of the terminator directory for the Celera run"
    max_nodes: "Max nodes to use when closing gaps locally (200000)"
    min_km_er_len: "Minimum k-mer length used when closing gaps locally (17)"
    max_km_er_len: "Maximum k-mer length used when closing gaps locally (65)"
    mean_for_faux_inserts: "Mean specified when joining the ends of the contigs (500)"
    join_aggressive: "If set to 1 calls the pair joined if there is any path (as opposed to a unique path) (0)"
    stdev_for_faux_inserts: "Standard deviation specified when joining the ends of the contigs (200)"
    num_stdev_s_allowed: "Number of standard deviations the join length can be from the mean when trying to join a mate pair. (5)"
    mean_and_stdev_file: "File with means and standard deviations for each gap"
    output_dir: "The subdirectory to put the individual gaps into (.)"
    contig_end_sequence_file: "*Name of the file containing the contig end sequences for joining"
    num_joins_per_directory: "Number of joins put in each directory (1)"
    skip_gaps: "Number of gaps to skip -- useful for restarting (0)"
    dir_for_read_sequences: "*Name of dir where readFile.### exist; should be absolute"
    cmdline_parse: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file_read = "${in_output_file_read}"
    File out_error_out = "${in_error_out}"
  }
}