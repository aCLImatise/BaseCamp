version 1.0

task CycleFold {
  input {
    Boolean? big_loops
    Boolean? fast_a_constraints
    Boolean? max_expect
    Boolean? partition_function
    Boolean? seq_format
    Boolean? turbo
    Boolean? un_pairing_constraints
    Boolean? constraint_file
    Boolean? constraint_ct
    Boolean? gamma
    Boolean? iterations
    String sequence
  }
  command <<<
    CycleFold \
      ~{sequence} \
      ~{if (big_loops) then "--bigloops" else ""} \
      ~{if (fast_a_constraints) then "--fastaConstraints" else ""} \
      ~{if (max_expect) then "--maxExpect" else ""} \
      ~{if (partition_function) then "--partitionFunction" else ""} \
      ~{if (seq_format) then "--seqFormat" else ""} \
      ~{if (turbo) then "--turbo" else ""} \
      ~{if (un_pairing_constraints) then "--unpairingConstraints" else ""} \
      ~{if (constraint_file) then "--constraintFile" else ""} \
      ~{if (constraint_ct) then "--constraintCt" else ""} \
      ~{if (gamma) then "--gamma" else ""} \
      ~{if (iterations) then "--iterations" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    big_loops: "Toggle whether large hairpins and internal loops are permitted in the\\nstructure.\\nDefault: off"
    fast_a_constraints: "Specify that the input fasta file contains secondary structure constraints\\n(in dot-bracket format) to be applied to each structure.\\nDefault: off."
    max_expect: "Specify that a MaxExpect calculation should be performed."
    partition_function: "Specify that pair probabilities should be printed."
    seq_format: "Indicate that the input file is a SEQ formatted sequence (rather than a\\nFASTA, which is the default)."
    turbo: "Specify that a TurboFold calculation should be performed."
    un_pairing_constraints: "Toggle whether restraints should be treated as unpairing constraints.\\nDefault: off."
    constraint_file: "Specify a constraint file to be applied (in constraint file format)."
    constraint_ct: "Specify a constraint file to be applied (in ct format)."
    gamma: "Set gamma, the weighting parameter for extrinsic information inthe turbo\\ncalculation."
    iterations: "Set the number of iterations for the turbo calculation.\\n"
    sequence: ""
  }
  output {
    File out_stdout = stdout()
  }
}