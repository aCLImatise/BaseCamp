version 1.0

task RemoveTailpy {
  input {
    File? outfile
    Boolean? verbose
    Boolean? debug
  }
  command <<<
    remove_tail_py \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  parameter_meta {
    outfile: "Write results to this file."
    verbose: "Be verbose."
    debug: "Print lots of debugging information"
  }
  output {
    File out_stdout = stdout()
  }
}