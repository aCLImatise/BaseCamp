version 1.0

task InteropIndexsummary {
  input {
    Boolean? csv
    Int? option_two
    Int? option_one
    String run_folder
  }
  command <<<
    interop_index_summary \
      ~{run_folder} \
      ~{if (csv) then "--csv" else ""} \
      ~{if defined(option_two) then ("--option2 " +  '"' + option_two + '"') else ""} \
      ~{if defined(option_one) then ("--option1 " +  '"' + option_one + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/illumina-interop:1.1.23--h1b792b2_0"
  }
  parameter_meta {
    csv: "[0]: Format output as CSV only"
    option_two: ""
    option_one: ""
    run_folder: ""
  }
  output {
    File out_stdout = stdout()
  }
}