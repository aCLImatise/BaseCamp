version 1.0

task GuidescanProcesser {
  input {
    String? path_fasta_file
    String? project_name_use
    Int? min_chr
    String? list_names_chromosomes
    Int? desired_length_including
    String? pam_sequence_default
    String? alternative_pam_sequences
    String? pam_pos
    String? minimum_mismatch_similarity
    String? maximum_distance_consider
    Int? max_off_pos
    Int? max_off_count
    String? gnu_path
    String? how_many_threads
  }
  command <<<
    guidescan_processer \
      ~{if defined(path_fasta_file) then ("-f " +  '"' + path_fasta_file + '"') else ""} \
      ~{if defined(project_name_use) then ("-n " +  '"' + project_name_use + '"') else ""} \
      ~{if defined(min_chr) then ("--minchr " +  '"' + min_chr + '"') else ""} \
      ~{if defined(list_names_chromosomes) then ("-c " +  '"' + list_names_chromosomes + '"') else ""} \
      ~{if defined(desired_length_including) then ("-l " +  '"' + desired_length_including + '"') else ""} \
      ~{if defined(pam_sequence_default) then ("-p " +  '"' + pam_sequence_default + '"') else ""} \
      ~{if defined(alternative_pam_sequences) then ("-a " +  '"' + alternative_pam_sequences + '"') else ""} \
      ~{if defined(pam_pos) then ("--pampos " +  '"' + pam_pos + '"') else ""} \
      ~{if defined(minimum_mismatch_similarity) then ("-s " +  '"' + minimum_mismatch_similarity + '"') else ""} \
      ~{if defined(maximum_distance_consider) then ("-d " +  '"' + maximum_distance_consider + '"') else ""} \
      ~{if defined(max_off_pos) then ("--maxoffpos " +  '"' + max_off_pos + '"') else ""} \
      ~{if defined(max_off_count) then ("--maxoffcount " +  '"' + max_off_count + '"') else ""} \
      ~{if defined(gnu_path) then ("--gnupath " +  '"' + gnu_path + '"') else ""} \
      ~{if defined(how_many_threads) then ("-t " +  '"' + how_many_threads + '"') else ""}
  >>>
  parameter_meta {
    path_fasta_file: "path to fasta file or folder with fasta files (will use all .fa, .fasta, .fa.gz, .fasta.gz files found in the folder) (default: None)"
    project_name_use: "project name, use in all output (will produce a folder with this name containing intermediate and final files in it) (default: myguides)"
    min_chr: "minimum chromosome length to consider, chromosomes in input FASTA that are shorter than this will be excluded from analysis; simple way to exclude scaffolds unassigned to known chromosomes etc. (default: 10000)"
    list_names_chromosomes: "list names of chromosomes (comma separated) that will be used in analysis, or name of file where this list is stored (default: )"
    desired_length_including: "desired length of guideRNAs (not including PAM) (default: 20)"
    pam_sequence_default: "PAM sequence (default: NGG)"
    alternative_pam_sequences: "alternative PAM sequences (separate multiple ones by commas), will not be used in primary guideRNAs, but will be considered in off-targets; all PAM sequences should be mutually exclusive and of the same length (default: NAG)"
    pam_pos: "position of PAM with respect to guideRNA (default: end)"
    minimum_mismatch_similarity: "minimum mismatch similarity between guideRNAs; a candidate guideRNA (with primary PAM) should not have alternative occurences in the genome (with any PAM) with less than this many mismatches (not including PAM) (default: 2)"
    maximum_distance_consider: "maximum distance to consider from guideRNA to its off- target; off-target is an alternative occurrence (with any PAM) of this guideRNA in the genome at edit distance at most this number (including PAM); currently values larger than 4 are infeasible for large (e.g., mammalian) genomes, and value 3 will take long time to compute; use -1 if do not want any off- target info in resulting database (can add it later using bamdata) (default: 3)"
    max_off_pos: "maximum number of positions of k-mers to remember; for k-mer occurring multiple times in the genome (such k-mers cannot be guideRNAs, but their positions can be off-targets of guideRNAs) store at most this many arbitrary their occurrences in the genome (default: 10)"
    max_off_count: "maximum number of off-targets to store for a guideRNA in a resulting BAM library (default: 1000)"
    gnu_path: "path to gnu utilities, e.g. \"/usr/local/bin\"; if empty, use system defaults; requires: cut, sort, uniq, shuf (default: )"
    how_many_threads: "how many threads to use; do not specify more than you have on your system; currently not implemented (default: 1)"
  }
}