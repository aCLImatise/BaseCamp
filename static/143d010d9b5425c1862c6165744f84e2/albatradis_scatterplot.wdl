version 1.0

task Albatradisscatterplot {
  input {
    Int? control
    Int? condition
    Int? window_size
    File? output_file
    Boolean? normalise
    Boolean? verbose
    Boolean? debug
  }
  command <<<
    albatradis_scatterplot \
      ~{if defined(control) then ("--control " +  '"' + control + '"') else ""} \
      ~{if defined(condition) then ("--condition " +  '"' + condition + '"') else ""} \
      ~{if defined(window_size) then ("--window_size " +  '"' + window_size + '"') else ""} \
      ~{if defined(output_file) then ("--outputfile " +  '"' + output_file + '"') else ""} \
      ~{if (normalise) then "--normalise" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    control: "control files (use 2 or more) (default: None)"
    condition: "condition files (use 2 or more) (default: None)"
    window_size: "Window size (default: 50)"
    output_file: "Output filename prefix (default: scatter)"
    normalise: "normalise the files (default: False)"
    verbose: "Print out more information while it runs (default:\\nFalse)"
    debug: "Turn on debugging (default: False)"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}