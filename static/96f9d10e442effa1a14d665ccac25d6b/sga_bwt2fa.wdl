version 1.0

task SgaBwt2fa {
  input {
    Boolean? verbose
    File? outfile
    String? prefix
    String? option
  }
  command <<<
    sga bwt2fa \
      ~{option} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""}
  >>>
  parameter_meta {
    verbose: "display verbose output"
    outfile: "write the sequences to FILE"
    prefix: "prefix the names of the reads with STR"
    option: ""
  }
}