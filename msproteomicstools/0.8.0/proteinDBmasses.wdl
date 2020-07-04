version 1.0

task ProteinDBmasses.py {
  input {
    String fast_a_file
  }
  command <<<
    proteinDBmasses.py \
      ~{fast_a_file}
  >>>
  parameter_meta {
    fast_a_file: ""
  }
}