version 1.0

task Cdhitlap {
  input {
    Boolean? input_file
    File? output_file
    Boolean? minimum_length_overlapping
    Boolean? minimum_percentage_percentage
    Boolean? description_length_default
    Boolean? random_number_seed
    Boolean? stdout
  }
  command <<<
    cd_hit_lap \
      ~{if (input_file) then "-i" else ""} \
      ~{if (output_file) then "-o" else ""} \
      ~{if (minimum_length_overlapping) then "-m" else ""} \
      ~{if (minimum_percentage_percentage) then "-p" else ""} \
      ~{if (description_length_default) then "-d" else ""} \
      ~{if (random_number_seed) then "-s" else ""} \
      ~{if (stdout) then "-stdout" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cd-hit-auxtools:4.8.1--hc9558a2_0"
  }
  parameter_meta {
    input_file: "Input file;"
    output_file: "Output file;"
    minimum_length_overlapping: "Minimum length of overlapping part (default 20);"
    minimum_percentage_percentage: "Minimum percentage of overlapping part (default 0, any percentage);"
    description_length_default: "Description length (default 0, truncate at the first whitespace character)"
    random_number_seed: "Random number seed for shuffling (default 0, no shuffling; shuffled before sorting by length);"
    stdout: "Standard output type (default \\\"log\\\", other options \\\"rep\\\", \\\"clstr\\\");"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}