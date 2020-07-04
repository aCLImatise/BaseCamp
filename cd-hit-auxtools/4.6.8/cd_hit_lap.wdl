version 1.0

task CdHitLap {
  input {
    Boolean? input_file
    Boolean? output_file
    Boolean? minimum_length_overlapping
    Boolean? minimum_percentage_percentage
    Boolean? description_length_default
    Boolean? random_number_seed
    Boolean? stdout
  }
  command <<<
    cd-hit-lap \
      ~{true="-i" false="" input_file} \
      ~{true="-o" false="" output_file} \
      ~{true="-m" false="" minimum_length_overlapping} \
      ~{true="-p" false="" minimum_percentage_percentage} \
      ~{true="-d" false="" description_length_default} \
      ~{true="-s" false="" random_number_seed} \
      ~{true="-stdout" false="" stdout}
  >>>
  parameter_meta {
    input_file: "Input file;"
    output_file: "Output file;"
    minimum_length_overlapping: "Minimum length of overlapping part (default 20);"
    minimum_percentage_percentage: "Minimum percentage of overlapping part (default 0, any percentage);"
    description_length_default: "Description length (default 0, truncate at the first whitespace character)"
    random_number_seed: "Random number seed for shuffling (default 0, no shuffling; shuffled before sorting by length);"
    stdout: "Standard output type (default \"log\", other options \"rep\", \"clstr\");"
  }
}