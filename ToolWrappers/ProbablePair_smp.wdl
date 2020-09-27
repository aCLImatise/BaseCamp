version 1.0

task ProbablePairsmp {
  input {
    Boolean? dna
    Boolean? sequence
    Boolean? threshold
    String specified_dot
  }
  command <<<
    ProbablePair_smp \
      ~{specified_dot} \
      ~{if (dna) then "--DNA" else ""} \
      ~{if (sequence) then "--sequence" else ""} \
      ~{if (threshold) then "--threshold" else ""}
  >>>
  parameter_meta {
    dna: "This flag only matters if the input file is a sequence file and has been\\nspecified as such. Specify that the sequence is DNA, and DNA parameters are\\nto be used.\\nDefault is to use RNA parameters."
    sequence: "Identify the input file format as a sequence file."
    threshold: "The threshold at which pairs should be included in a structure. This should\\nbe expressed as a number: 0.5 <= x <= 1.0.\\nDefault is 0, which signifies that structures should be generated at\\nmultiple thresholds: >= 0.99, >= 0.97, >= 0.95, >= 0.90, >= 0.80, >= 0.70,\\n>= 0.60, and >= 0.50.\\n"
    specified_dot: "<ct file>"
  }
  output {
    File out_stdout = stdout()
  }
}