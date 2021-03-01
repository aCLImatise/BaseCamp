version 1.0

task CollectReadSequencesForLocalGapClosing {
  input {
    File? faux_reads_file
    File? faux_read_matches_to_kunis_file
    File? read_matches_to_kunis_file
    File? reads_file
    File? dir_for_gaps
    Int? num_joins_per_directory
    Int? max_reads_in_memory
    String cmdline_parse
  }
  command <<<
    collectReadSequencesForLocalGapClosing \
      ~{cmdline_parse} \
      ~{if defined(faux_reads_file) then ("--faux-reads-file " +  '"' + faux_reads_file + '"') else ""} \
      ~{if defined(faux_read_matches_to_kunis_file) then ("--faux-read-matches-to-kunis-file " +  '"' + faux_read_matches_to_kunis_file + '"') else ""} \
      ~{if defined(read_matches_to_kunis_file) then ("--read-matches-to-kunis-file " +  '"' + read_matches_to_kunis_file + '"') else ""} \
      ~{if defined(reads_file) then ("--reads-file " +  '"' + reads_file + '"') else ""} \
      ~{if defined(dir_for_gaps) then ("--dir-for-gaps " +  '"' + dir_for_gaps + '"') else ""} \
      ~{if defined(num_joins_per_directory) then ("--num-joins-per-directory " +  '"' + num_joins_per_directory + '"') else ""} \
      ~{if defined(max_reads_in_memory) then ("--max-reads-in-memory " +  '"' + max_reads_in_memory + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    faux_reads_file: "*Name of the faux reads file"
    faux_read_matches_to_kunis_file: "*Name of the file with matches from faux reads to k-unitigs"
    read_matches_to_kunis_file: "*Name of the file with matches from reads to k-unitigs"
    reads_file: "Name of the reads file(s)"
    dir_for_gaps: "Directory to use for files we keep for local gap closing (.)"
    num_joins_per_directory: "Number of joins put in each directory (1)"
    max_reads_in_memory: "Number of reads to hold in memory for gap closing bins (100000000)"
    cmdline_parse: ""
  }
  output {
    File out_stdout = stdout()
  }
}