version 1.0

task MapBack {
  input {
    Boolean? arg_seer_file
    Boolean? arg_file_tab
    String? threads
  }
  command <<<
    map_back \
      ~{true="-k" false="" arg_seer_file} \
      ~{true="-r" false="" arg_file_tab} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    arg_seer_file: "[ --kmers ] arg       seer kmer output file"
    arg_file_tab: "[ --references ] arg  file with tab separated reference name and fasta  file"
    threads: "(=1)       number of threads. Suggested: 8"
  }
}