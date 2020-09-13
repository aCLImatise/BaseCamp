version 1.0

task FermiUnitig {
  input {
    Int? min_match
    Int? number_of_threads
    File? rank_file
    String reads_dot_fmd
  }
  command <<<
    fermi unitig \
      ~{reads_dot_fmd} \
      ~{if defined(min_match) then ("-l " +  '"' + min_match + '"') else ""} \
      ~{if defined(number_of_threads) then ("-t " +  '"' + number_of_threads + '"') else ""} \
      ~{if defined(rank_file) then ("-r " +  '"' + rank_file + '"') else ""}
  >>>
  parameter_meta {
    min_match: "min match [0]"
    number_of_threads: "number of threads [1]"
    rank_file: "rank file [null]"
    reads_dot_fmd: ""
  }
  output {
    File out_stdout = stdout()
  }
}