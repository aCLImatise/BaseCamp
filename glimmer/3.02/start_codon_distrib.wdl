version 1.0

task StartCodonDistrib {
  input {
    Boolean? three_comma
    String sequence_file
    String coords
  }
  command <<<
    start-codon-distrib \
      ~{sequence_file} \
      ~{coords} \
      ~{true="--3comma" false="" three_comma}
  >>>
  parameter_meta {
    three_comma: "output only a comma separated list (no spaces) of atg, gtg, ttg"
    sequence_file: ""
    coords: ""
  }
}