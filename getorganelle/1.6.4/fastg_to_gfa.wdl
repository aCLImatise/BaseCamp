version 1.0

task FastgToGfa.py {
  input {
    String fastgtwogfadotpy
  }
  command <<<
    fastg_to_gfa.py \
      ~{fastgtwogfadotpy}
  >>>
  parameter_meta {
    fastgtwogfadotpy: ""
  }
}