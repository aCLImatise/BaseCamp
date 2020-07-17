version 1.0

task FilterWiggle.py {
  input {
    String? input_file_containing
    String? output_file_written
    Boolean? quiet
    String? author
  }
  command <<<
    filter-wiggle.py \
      ~{if defined(input_file_containing) then ("--input " +  '"' + input_file_containing + '"') else ""} \
      ~{if defined(output_file_written) then ("--output " +  '"' + output_file_written + '"') else ""} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(author) then ("--author " +  '"' + author + '"') else ""}
  >>>
  parameter_meta {
    input_file_containing: "The input file containing the fusion (chromosomal) coordinates for each fusion genes."
    output_file_written: "The output file where the frame predictions are written."
    quiet: "Do not print status messages to stdout."
    author: "Daniel Nicorici, E-mail: Daniel.Nicorici@gmail.com"
  }
}