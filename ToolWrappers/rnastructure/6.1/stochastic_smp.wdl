version 1.0

task Stochasticsmp {
  input {
    Boolean? dna
    Boolean? sequence
    Boolean? ensemble
    Boolean? seed
    String specified_dot
  }
  command <<<
    stochastic_smp \
      ~{specified_dot} \
      ~{if (dna) then "--DNA" else ""} \
      ~{if (sequence) then "--sequence" else ""} \
      ~{if (ensemble) then "--ensemble" else ""} \
      ~{if (seed) then "--seed" else ""}
  >>>
  parameter_meta {
    dna: "This flag only matters if the input file is a sequence file and has been\\nspecified as such. Specify that the sequence is DNA, and DNA parameters are\\nto be used.\\nDefault is to use RNA parameters."
    sequence: "Identify the input file format as a sequence file."
    ensemble: "Specify the ensemble size.\\nDefault is 1000 structures."
    seed: "Specify the random seed.\\nDefault is 1234.\\n"
    specified_dot: "<ct file>"
  }
  output {
    File out_stdout = stdout()
  }
}