version 1.0

task InteropSummary {
  input {
    Boolean? level
    Boolean? csv
    String? option_one
    String? option_two
    String run_folder
  }
  command <<<
    interop_summary \
      ~{run_folder} \
      ~{true="--level" false="" level} \
      ~{true="--csv" false="" csv} \
      ~{if defined(option_one) then ("--option1 " +  '"' + option_one + '"') else ""} \
      ~{if defined(option_two) then ("--option2 " +  '"' + option_two + '"') else ""}
  >>>
  parameter_meta {
    level: "[5]: Level of summary information: 0: total, 1: non-index, 2: Read, 3: Lane, 4: Surface"
    csv: "[0]: Format output as CSV only"
    option_one: ""
    option_two: ""
    run_folder: ""
  }
}