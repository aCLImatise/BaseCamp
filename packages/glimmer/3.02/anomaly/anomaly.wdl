version 1.0

task Anomaly {
  input {
    String? start_codonssample_format
    Boolean? omit_check_first
    Boolean? check_codon_coordinate
    String? stop_codonssample_format
    File sequence_file
    File coord_file
  }
  command <<<
    anomaly \
      ~{sequence_file} \
      ~{coord_file} \
      ~{if defined(start_codonssample_format) then ("-A " +  '"' + start_codonssample_format + '"') else ""} \
      ~{if (omit_check_first) then "-s" else ""} \
      ~{if (check_codon_coordinate) then "-t" else ""} \
      ~{if defined(stop_codonssample_format) then ("-Z " +  '"' + stop_codonssample_format + '"') else ""}
  >>>
  parameter_meta {
    start_codonssample_format: "Use comma-separated list of codons as start codons\\nSample format:  -A atg,gtg\\nDefault start codons are atg,gtg,ttg"
    omit_check_first: "Omit the check that the first codon is a start codon."
    check_codon_coordinate: "Check whether the codon preceding the start coordinate position\\nis a stop codon.  This is useful if the coordinates represent\\nthe entire region between stop codons."
    stop_codonssample_format: "Use comma-separated list of codons as stop codons\\nSample format:  -Z tag,tga,taa\\n"
    sequence_file: ""
    coord_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}