version 1.0

task PbsScoreMatrix {
  input {
    Int? branch_length
    Boolean? half_pbs
    Boolean? no_pbs
    String tree_dot_mod
    String? code_file
  }
  command <<<
    pbsScoreMatrix \
      ~{tree_dot_mod} \
      ~{code_file} \
      ~{if defined(branch_length) then ("--branch-length " +  '"' + branch_length + '"') else ""} \
      ~{true="--half-pbs" false="" half_pbs} \
      ~{true="--no-pbs" false="" no_pbs}
  >>>
  parameter_meta {
    branch_length: "Output a matrix for a branch of the specified length, rather than a matrix for every branch of the tree.  The given length must be non-negative and in units of expected substitutions per site."
    half_pbs: "Output an N x 4 matrix, as described above."
    no_pbs: "Output a 4 x 4 matrix, as described above.  With this option, a code file is not needed."
    tree_dot_mod: ""
    code_file: ""
  }
}