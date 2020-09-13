version 1.0

task Fermi2Assemble {
  input {
    Int? min_match
    Int? min_merge_length
    Int? number_of_threads
    String reads_dot_rld
  }
  command <<<
    fermi2 assemble \
      ~{reads_dot_rld} \
      ~{if defined(min_match) then ("-l " +  '"' + min_match + '"') else ""} \
      ~{if defined(min_merge_length) then ("-m " +  '"' + min_merge_length + '"') else ""} \
      ~{if defined(number_of_threads) then ("-t " +  '"' + number_of_threads + '"') else ""}
  >>>
  parameter_meta {
    min_match: "min match [0]"
    min_merge_length: "min merge length [0]"
    number_of_threads: "number of threads [1]"
    reads_dot_rld: ""
  }
  output {
    File out_stdout = stdout()
  }
}