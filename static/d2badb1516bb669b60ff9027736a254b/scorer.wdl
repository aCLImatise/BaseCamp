version 1.0

task Scorer {
  input {
    Boolean? exact
    File? print
    File? number
    String predicted_ct
    String accepted_ct
    File output_file
  }
  command <<<
    scorer \
      ~{predicted_ct} \
      ~{accepted_ct} \
      ~{output_file} \
      ~{if (exact) then "--exact" else ""} \
      ~{if (print) then "--print" else ""} \
      ~{if (number) then "--number" else ""}
  >>>
  parameter_meta {
    exact: "Specify exact comparison when structure comparison is scored.\\nDefault is to allow flexible pairings."
    print: "Prints the output file to standard output. This won't override the default\\nbehavior of writing to a file."
    number: "Specify the index of a particular structure in the predicted CT to be\\ncompared with the accepted CT, one-indexed.\\nDefault is -1, which signifies all structures output to one file.\\n"
    predicted_ct: ""
    accepted_ct: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_print = "${in_print}"
    File out_number = "${in_number}"
    File out_output_file = "${in_output_file}"
  }
}