version 1.0

task GetgffinfoSplit {
  input {
    Boolean? verbose
    File? prefix
    Int? number
    Boolean? gzip
    String? gff_file
  }
  command <<<
    get_gff_info split \
      ~{gff_file} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(number) then ("--number " +  '"' + number + '"') else ""} \
      ~{if (gzip) then "--gzip" else ""}
  >>>
  parameter_meta {
    verbose: ""
    prefix: "Prefix for the file name in output  [default: split]"
    number: "Number of chunks into which split the GFF file\\n[default: 10]"
    gzip: "gzip output files"
    gff_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_prefix = "${in_prefix}"
  }
}