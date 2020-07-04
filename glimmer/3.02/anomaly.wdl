version 1.0

task Anomaly {
  input {
    String? start_sample_format
    Boolean? omit_check_first
    Boolean? check_codon_coordinate
    String? stop_codons_format
    String sequence_file
    String coord_file
  }
  command <<<
    anomaly \
      ~{sequence_file} \
      ~{coord_file} \
      ~{if defined(start_sample_format) then ("-A " +  '"' + start_sample_format + '"') else ""} \
      ~{true="-s" false="" omit_check_first} \
      ~{true="-t" false="" check_codon_coordinate} \
      ~{if defined(stop_codons_format) then ("-Z " +  '"' + stop_codons_format + '"') else ""}
  >>>
  parameter_meta {
    start_sample_format: "Use comma-separated list of codons as start codons Sample format:  -A atg,gtg Default start codons are atg,gtg,ttg"
    omit_check_first: "Omit the check that the first codon is a start codon."
    check_codon_coordinate: "Check whether the codon preceding the start coordinate position is a stop codon.  This is useful if the coordinates represent the entire region between stop codons."
    stop_codons_format: "Use comma-separated list of codons as stop codons Sample format:  -Z tag,tga,taa"
    sequence_file: ""
    coord_file: ""
  }
}