version 1.0

task ProbKnotsmp {
  input {
    Boolean? dna
    Boolean? ensemble
    Boolean? sequence
    Boolean? iterations
    Boolean? minimum
    String specified_dot
  }
  command <<<
    ProbKnot_smp \
      ~{specified_dot} \
      ~{if (dna) then "--DNA" else ""} \
      ~{if (ensemble) then "--ensemble" else ""} \
      ~{if (sequence) then "--sequence" else ""} \
      ~{if (iterations) then "--iterations" else ""} \
      ~{if (minimum) then "--minimum" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    dna: "This flag only matters if the input file is a sequence file or an ensemble\\nstructure file and has been specified as such. Specify that the sequence is\\nDNA, and DNA parameters are to be used.\\nDefault is to use RNA parameters."
    ensemble: "Identify the input file format as an ensemble ctructure file. NOTE: all\\nstructures in the file must have the same sequence."
    sequence: "Identify the input file format as a sequence file."
    iterations: "Specify the number of iterations the calculation will undergo.\\nDefault is 1 iteration."
    minimum: "Specify the minimum length accepted for a helix.\\nDefault is 3 base pairs.\\n"
    specified_dot: "<ct file>"
  }
  output {
    File out_stdout = stdout()
  }
}