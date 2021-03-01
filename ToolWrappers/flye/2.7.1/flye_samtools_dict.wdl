version 1.0

task FlyesamtoolsDict {
  input {
    String? assembly
    Boolean? no_header
    File? file_write_file
    String? species
    File? uri
    String sam_tools
    String dict
    File filed_otf_a_vertical_line_file_dot_fado_tgz
  }
  command <<<
    flye_samtools dict \
      ~{sam_tools} \
      ~{dict} \
      ~{filed_otf_a_vertical_line_file_dot_fado_tgz} \
      ~{if defined(assembly) then ("--assembly " +  '"' + assembly + '"') else ""} \
      ~{if (no_header) then "--no-header" else ""} \
      ~{if defined(file_write_file) then ("--output " +  '"' + file_write_file + '"') else ""} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""} \
      ~{if defined(uri) then ("--uri " +  '"' + uri + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
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
  output {
    File out_stdout = stdout()
    File out_file_write_file = "${in_file_write_file}"
  }
}