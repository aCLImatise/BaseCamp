version 1.0

task ClumpMaker {
  input {
    String? penalty_clump_start
    String? max_jump_consistent
    Boolean? reference_assembly_first
    Boolean? reference_assembly_second
    Boolean? assume_input_sorted
  }
  command <<<
    clumpMaker \
      ~{if defined(penalty_clump_start) then ("-c " +  '"' + penalty_clump_start + '"') else ""} \
      ~{if defined(max_jump_consistent) then ("-j " +  '"' + max_jump_consistent + '"') else ""} \
      ~{true="-1" false="" reference_assembly_first} \
      ~{true="-2" false="" reference_assembly_second} \
      ~{true="-S" false="" assume_input_sorted}
  >>>
  parameter_meta {
    penalty_clump_start: "penalty for clump start, default 50000"
    max_jump_consistent: "max jump between consistent hits in a clump, default 200000"
    reference_assembly_first: "the reference assembly is the first one."
    reference_assembly_second: "the reference assembly is the second one (default)."
    assume_input_sorted: "assume the input is already sorted by the query IID, position. this will also make the output sorted by queryIID, queryPosition"
  }
}