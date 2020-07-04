version 1.0

task InteropAggregate {
  input {
    Boolean? max_tile
    String? option_one
    String? option_two
    String run_folder
  }
  command <<<
    interop_aggregate \
      ~{run_folder} \
      ~{true="--max-tile" false="" max_tile} \
      ~{if defined(option_one) then ("--option1 " +  '"' + option_one + '"') else ""} \
      ~{if defined(option_two) then ("--option2 " +  '"' + option_two + '"') else ""}
  >>>
  parameter_meta {
    max_tile: "[0]: Maximum tile number to include"
    option_one: ""
    option_two: ""
    run_folder: ""
  }
}