version 1.0

task FilterPairs.py {
  input {
    String? input_file_containing
    String? output_good
    String? output_bad
    Boolean? quiet
    String? author
  }
  command <<<
    filter_pairs.py \
      ~{if defined(input_file_containing) then ("--input " +  '"' + input_file_containing + '"') else ""} \
      ~{if defined(output_good) then ("--output_good " +  '"' + output_good + '"') else ""} \
      ~{if defined(output_bad) then ("--output_bad " +  '"' + output_bad + '"') else ""} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(author) then ("--author " +  '"' + author + '"') else ""}
  >>>
  parameter_meta {
    input_file_containing: "The input file containing the fusion (chromosomal) coordinates for each fusion genes."
    output_good: "The output file where the frame predictions are written."
    output_bad: "The output file where the frame predictions are written."
    quiet: "Do not print status messages to stdout."
    author: "Daniel Nicorici, E-mail: Daniel.Nicorici@gmail.com"
  }
}