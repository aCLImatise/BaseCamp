version 1.0

task FastaUtilsSplit {
  input {
    String? prefix
    Int? number
    Boolean? gzip
    String? fast_a_file
  }
  command <<<
    fasta-utils split \
      ~{fast_a_file} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(number) then ("--number " +  '"' + number + '"') else ""} \
      ~{true="--gzip" false="" gzip}
  >>>
  parameter_meta {
    prefix: "Prefix for the file name in output  [default: split]"
    number: "Number of chunks into which split the FASTA file [default: 10]"
    gzip: "gzip output files"
    fast_a_file: ""
  }
}