version 1.0

task FastautilsSplit {
  input {
    File? verbose
    Int? number
    Boolean? gzip
    String? fast_a_file
  }
  command <<<
    fasta_utils split \
      ~{fast_a_file} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if defined(number) then ("--number " +  '"' + number + '"') else ""} \
      ~{if (gzip) then "--gzip" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "Prefix for the file name in output  [default: split]"
    number: "Number of chunks into which split the FASTA file\\n[default: 10]"
    gzip: "gzip output files"
    fast_a_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_verbose = "${in_verbose}"
  }
}