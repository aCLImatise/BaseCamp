version 1.0

task FastautilsSplit {
  input {
    Boolean? verbose
    File? prefix
    Int? number
    Boolean? gzip
    String? fast_a_file
  }
  command <<<
    fasta_utils split \
      ~{fast_a_file} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(number) then ("--number " +  '"' + number + '"') else ""} \
      ~{if (gzip) then "--gzip" else ""}
  >>>
  parameter_meta {
    verbose: ""
    prefix: "Prefix for the file name in output  [default: split]"
    number: "Number of chunks into which split the FASTA file\\n[default: 10]"
    gzip: "gzip output files"
    fast_a_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_prefix = "${in_prefix}"
  }
}