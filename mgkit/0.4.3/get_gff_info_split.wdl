version 1.0

task GetGffInfoSplit {
  input {
    String? prefix
    Int? number
    Boolean? gzip
    String? gff_file
  }
  command <<<
    get-gff-info split \
      ~{gff_file} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(number) then ("--number " +  '"' + number + '"') else ""} \
      ~{true="--gzip" false="" gzip}
  >>>
  parameter_meta {
    prefix: "Prefix for the file name in output  [default: split]"
    number: "Number of chunks into which split the GFF file [default: 10]"
    gzip: "gzip output files"
    gff_file: ""
  }
}