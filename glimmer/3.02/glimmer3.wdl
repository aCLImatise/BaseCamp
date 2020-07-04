version 1.0

task Glimmer3 {
  input {
    String? stop_codons
    String sequence_file
    String icm_file
    String tag
  }
  command <<<
    glimmer3 \
      ~{sequence_file} \
      ~{icm_file} \
      ~{tag} \
      ~{if defined(stop_codons) then ("--stop_codons " +  '"' + stop_codons + '"') else ""}
  >>>
  parameter_meta {
    stop_codons: "Use comma-separated list of codons as stop codons Sample format:  -Z tag,tga,taa"
    sequence_file: ""
    icm_file: ""
    tag: ""
  }
}