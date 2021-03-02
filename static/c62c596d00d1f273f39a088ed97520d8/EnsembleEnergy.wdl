version 1.0

task EnsembleEnergy {
  input {
    Boolean? dna
    Boolean? silent
    Boolean? sequence
    File input_file
  }
  command <<<
    EnsembleEnergy \
      ~{input_file} \
      ~{if (dna) then "--DNA" else ""} \
      ~{if (silent) then "--silent" else ""} \
      ~{if (sequence) then "--sequence" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    dna: "This flag only matters if the input file is a sequence file and has been\\nspecified as such. Specify that the sequence is DNA, and DNA parameters are\\nto be used.\\nDefault is to use RNA parameters."
    silent: "Suppress all progress messages except the final ensemble energy result.\\nNote that this does NOT suppress errors."
    sequence: "Identify the input file format as a sequence file."
    input_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}