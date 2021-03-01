version 1.0

task MapBack {
  input {
    File? arg_seer_kmer
    Boolean? arg_file_tab
    Int? threads
    File other_options
  }
  command <<<
    map_back \
      ~{other_options} \
      ~{if (arg_seer_kmer) then "-k" else ""} \
      ~{if (arg_file_tab) then "-r" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    arg_seer_kmer: "[ --kmers ] arg       seer kmer output file"
    arg_file_tab: "[ --references ] arg  file with tab separated reference name and fasta"
    threads: "(=1)       number of threads. Suggested: 8"
    other_options: "Other options:"
  }
  output {
    File out_stdout = stdout()
    File out_arg_seer_kmer = "${in_arg_seer_kmer}"
  }
}