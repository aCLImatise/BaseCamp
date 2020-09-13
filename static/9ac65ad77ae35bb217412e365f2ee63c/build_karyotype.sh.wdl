version 1.0

task BuildKaryotypesh {
  input {
    File? file
    File? directory_optional_default
    File? f
    String? g
    String? r
    String? value_display_summary
    String? value_display_individual
    String? v
    String? usage_message
  }
  command <<<
    build_karyotype_sh \
      ~{if defined(file) then ("-i " +  '"' + file + '"') else ""} \
      ~{if defined(directory_optional_default) then ("-o " +  '"' + directory_optional_default + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""} \
      ~{if defined(r) then ("-R " +  '"' + r + '"') else ""} \
      ~{if defined(value_display_summary) then ("-K " +  '"' + value_display_summary + '"') else ""} \
      ~{if defined(value_display_individual) then ("-k " +  '"' + value_display_individual + '"') else ""} \
      ~{if defined(v) then ("-v " +  '"' + v + '"') else ""} \
      ~{if defined(usage_message) then ("-h " +  '"' + usage_message + '"') else ""}
  >>>
  parameter_meta {
    file: "file"
    directory_optional_default: "directory (optional). By default the file is replaced in the same location"
    f: "name for identification"
    g: "name for identification"
    r: ""
    value_display_summary: "value to display plasmids covered >= in summary image"
    value_display_individual: "value to display plasmids covered >= in individual image"
    v: ""
    usage_message: "usage message"
  }
  output {
    File out_stdout = stdout()
  }
}