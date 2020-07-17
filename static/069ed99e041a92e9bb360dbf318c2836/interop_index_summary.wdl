version 1.0

task InteropIndexSummary {
  input {
    Boolean? csv
    String? option_one
    String? option_two
    String run_folder
  }
  command <<<
    interop_index-summary \
      ~{run_folder} \
      ~{true="--csv" false="" csv} \
      ~{if defined(option_one) then ("--option1 " +  '"' + option_one + '"') else ""} \
      ~{if defined(option_two) then ("--option2 " +  '"' + option_two + '"') else ""}
  >>>
  parameter_meta {
    csv: "[0]: Format output as CSV only"
    option_one: ""
    option_two: ""
    run_folder: ""
  }
}