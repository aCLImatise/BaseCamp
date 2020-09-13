version 1.0

task InteropAggregate {
  input {
    Boolean? max_tile
    Int? option_two
    Int? option_one
    String run_folder
  }
  command <<<
    interop_aggregate \
      ~{run_folder} \
      ~{if (max_tile) then "--max-tile" else ""} \
      ~{if defined(option_two) then ("--option2 " +  '"' + option_two + '"') else ""} \
      ~{if defined(option_one) then ("--option1 " +  '"' + option_one + '"') else ""}
  >>>
  parameter_meta {
    max_tile: "[0]: Maximum tile number to include"
    option_two: ""
    option_one: ""
    run_folder: ""
  }
  output {
    File out_stdout = stdout()
  }
}