version 1.0

task InteropSummary {
  input {
    Boolean? level
    Boolean? csv
    Int? option_two
    Int? option_one
    String run_folder
  }
  command <<<
    interop_summary \
      ~{run_folder} \
      ~{if (level) then "--level" else ""} \
      ~{if (csv) then "--csv" else ""} \
      ~{if defined(option_two) then ("--option2 " +  '"' + option_two + '"') else ""} \
      ~{if defined(option_one) then ("--option1 " +  '"' + option_one + '"') else ""}
  >>>
  parameter_meta {
    level: "[5]: Level of summary information: 0: total, 1: non-index, 2: Read, 3: Lane, 4: Surface"
    csv: "[0]: Format output as CSV only"
    option_two: ""
    option_one: ""
    run_folder: ""
  }
  output {
    File out_stdout = stdout()
  }
}