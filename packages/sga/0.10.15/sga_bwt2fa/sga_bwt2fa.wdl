version 1.0

task SgaBwt2fa {
  input {
    Boolean? verbose
    File? outfile
    String? prefix
  }
  command <<<
    sga bwt2fa \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""}
  >>>
  parameter_meta {
    verbose: "display verbose output"
    outfile: "write the sequences to FILE"
    prefix: "prefix the names of the reads with STR"
  }
  output {
    File out_stdout = stdout()
  }
}