version 1.0

task MinAbundanceFinder.pl {
  input {
    File file_dot_fast_q
  }
  command <<<
    min_abundance_finder.pl \
      ~{file_dot_fast_q}
  >>>
  parameter_meta {
    file_dot_fast_q: ""
  }
}