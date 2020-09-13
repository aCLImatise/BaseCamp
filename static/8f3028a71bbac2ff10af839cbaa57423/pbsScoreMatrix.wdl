version 1.0

task PbsScoreMatrix {
  input {
    Int? branch_length
    File? no_pbs
    Boolean? half_pbs
    String tree_dot_mod
    String? code_file
  }
  command <<<
    pbsScoreMatrix \
      ~{tree_dot_mod} \
      ~{code_file} \
      ~{if defined(branch_length) then ("--branch-length " +  '"' + branch_length + '"') else ""} \
      ~{if (no_pbs) then "--no-pbs" else ""} \
      ~{if (half_pbs) then "--half-pbs" else ""}
  >>>
  parameter_meta {
    branch_length: "Output a matrix for a branch of the specified length, rather\\nthan a matrix for every branch of the tree.  The given length\\nmust be non-negative and in units of expected substitutions\\nper site."
    no_pbs: "Output a 4 x 4 matrix, as described above.  With this option,\\na code file is not needed."
    half_pbs: "Output an N x 4 matrix, as described above."
    tree_dot_mod: ""
    code_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_no_pbs = "${in_no_pbs}"
  }
}