version 1.0

task GetTopLongestFastaEntriespl {
  command <<<
    get_top_longest_fasta_entries_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}