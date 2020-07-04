version 1.0

task AlbatradisScatterplot {
  input {
    String? control
    String? condition
    String? window_size
    String? output_file
    Boolean? normalise
    Boolean? verbose
    Boolean? debug
  }
  command <<<
    albatradis-scatterplot \
      ~{if defined(control) then ("--control " +  '"' + control + '"') else ""} \
      ~{if defined(condition) then ("--condition " +  '"' + condition + '"') else ""} \
      ~{if defined(window_size) then ("--window_size " +  '"' + window_size + '"') else ""} \
      ~{if defined(output_file) then ("--outputfile " +  '"' + output_file + '"') else ""} \
      ~{true="--normalise" false="" normalise} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    control: "control files (use 2 or more) (default: None)"
    condition: "condition files (use 2 or more) (default: None)"
    window_size: "Window size (default: 50)"
    output_file: "Output filename prefix (default: scatter)"
    normalise: "normalise the files (default: False)"
    verbose: "Print out more information while it runs (default: False)"
    debug: "Turn on debugging (default: False)"
  }
}