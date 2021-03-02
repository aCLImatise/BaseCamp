version 1.0

task SamtoolsDict {
  input {
    String? assembly
    Boolean? alternative_name
    Boolean? no_header
    File? file_write_file
    String? species
    File? uri
    File filed_otf_a_vertical_line_file_dot_fado_tgz
  }
  command <<<
    samtools dict \
      ~{filed_otf_a_vertical_line_file_dot_fado_tgz} \
      ~{if defined(assembly) then ("--assembly " +  '"' + assembly + '"') else ""} \
      ~{if (alternative_name) then "--alternative-name" else ""} \
      ~{if (no_header) then "--no-header" else ""} \
      ~{if defined(file_write_file) then ("--output " +  '"' + file_write_file + '"') else ""} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""} \
      ~{if defined(uri) then ("--uri " +  '"' + uri + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/samtools:1.11--h6270b1f_0"
  }
  parameter_meta {
    assembly: "assembly"
    alternative_name: "add AN tag by adding/removing 'chr'"
    no_header: "do not print @HD line"
    file_write_file: "file to write out dict file [stdout]"
    species: "species"
    uri: "URI [file:///abs/path/to/file.fa]"
    filed_otf_a_vertical_line_file_dot_fado_tgz: ""
  }
  output {
    File out_stdout = stdout()
    File out_file_write_file = "${in_file_write_file}"
  }
}