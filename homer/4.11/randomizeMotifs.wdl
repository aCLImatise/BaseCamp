version 1.0

task RandomizeMotifs.pl {
  input {
    String motif_file
    String? var_1
    String? var_2
  }
  command <<<
    randomizeMotifs.pl \
      ~{motif_file} \
      ~{var_1} \
      ~{var_2}
  >>>
  parameter_meta {
    motif_file: ""
    var_1: ""
    var_2: ""
  }
}