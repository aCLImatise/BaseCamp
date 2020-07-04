version 1.0

task ProteinorthoCompareProteinorthoGraphs.pl {
  input {
    File file_a
    File file_b
  }
  command <<<
    proteinortho_compareProteinorthoGraphs.pl \
      ~{file_a} \
      ~{file_b}
  >>>
  parameter_meta {
    file_a: ""
    file_b: ""
  }
}