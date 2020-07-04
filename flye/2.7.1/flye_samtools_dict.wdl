version 1.0

task FlyeSamtoolsDict {
  input {
    String? assembly
    Boolean? no_header
    String? file_write_file
    String? species
    String? uri
    String sam_tools
    String dict
    File filed_otf_a_vertical_line_file_dot_fado_tgz
  }
  command <<<
    flye-samtools dict \
      ~{sam_tools} \
      ~{dict} \
      ~{filed_otf_a_vertical_line_file_dot_fado_tgz} \
      ~{if defined(assembly) then ("--assembly " +  '"' + assembly + '"') else ""} \
      ~{true="--no-header" false="" no_header} \
      ~{if defined(file_write_file) then ("--output " +  '"' + file_write_file + '"') else ""} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""} \
      ~{if defined(uri) then ("--uri " +  '"' + uri + '"') else ""}
  >>>
  parameter_meta {
    assembly: "assembly"
    no_header: "do not print @HD line"
    file_write_file: "file to write out dict file [stdout]"
    species: "species"
    uri: "URI [file:///abs/path/to/file.fa]"
    sam_tools: ""
    dict: ""
    filed_otf_a_vertical_line_file_dot_fado_tgz: ""
  }
}