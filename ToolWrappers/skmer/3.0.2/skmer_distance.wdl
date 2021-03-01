version 1.0

task SkmerDistance {
  input {
    String? output_distances_prefix
    Boolean? apply_jukescantor_transformation
    Int? max_number_use
    String library
  }
  command <<<
    skmer distance \
      ~{library} \
      ~{if defined(output_distances_prefix) then ("-o " +  '"' + output_distances_prefix + '"') else ""} \
      ~{if (apply_jukescantor_transformation) then "-t" else ""} \
      ~{if defined(max_number_use) then ("-p " +  '"' + max_number_use + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_distances_prefix: "Output (distances) prefix. Default: ref-dist-mat"
    apply_jukescantor_transformation: "Apply Jukes-Cantor transformation to distances. Output 5.0 if\\nnot applicable"
    max_number_use: "Max number of processors to use [1-8]. Default for this machine:\\n8\\n"
    library: "Directory of the input (processed) library"
  }
  output {
    File out_stdout = stdout()
  }
}