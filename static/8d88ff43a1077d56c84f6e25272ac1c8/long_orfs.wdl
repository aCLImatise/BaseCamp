version 1.0

task LongOrfs {
  input {
    String? stop_codons
    String sequence_file
    String output_file
  }
  command <<<
    long-orfs \
      ~{sequence_file} \
      ~{output_file} \
      ~{if defined(stop_codons) then ("--stop_codons " +  '"' + stop_codons + '"') else ""}
  >>>
  parameter_meta {
    stop_codons: "Use comma-separated list of codons as stop codons Sample format:  -Z tag,tga,taa"
    sequence_file: ""
    output_file: ""
  }
}