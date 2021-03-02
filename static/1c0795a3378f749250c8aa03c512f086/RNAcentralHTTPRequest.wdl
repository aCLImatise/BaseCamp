version 1.0

task RNAcentralHTTPRequest {
  input {
    String? input_sequence
    Boolean? verbose
    Boolean? quiet
  }
  command <<<
    RNAcentralHTTPRequest \
      ~{if defined(input_sequence) then ("--inputsequence " +  '"' + input_sequence + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_sequence: "input sequence"
    verbose: "Loud verbosity"
    quiet: "Quiet verbosity"
  }
  output {
    File out_stdout = stdout()
  }
}