version 1.0

task MimoddInfo {
  input {
    File? ofile
    Boolean? verbose
    String? o_format
    String info
  }
  command <<<
    mimodd info \
      ~{info} \
      ~{if defined(ofile) then ("--ofile " +  '"' + ofile + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(o_format) then ("--oformat " +  '"' + o_format + '"') else ""}
  >>>
  parameter_meta {
    ofile: "redirect the output to the specified file (default:\\nstdout)"
    verbose: "verbose output"
    o_format: "|txt    format for the output (default: txt)"
    info: ""
  }
  output {
    File out_stdout = stdout()
    File out_ofile = "${in_ofile}"
  }
}