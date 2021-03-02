version 1.0

task BuildKaryotypesh {
  input {
    File? i
    File? directory_optional_default
    File? f
    String? g
    String? value_display_summary
    String? value_display_individual
    String? usage_message
  }
  command <<<
    build_karyotype_sh \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(directory_optional_default) then ("-o " +  '"' + directory_optional_default + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""} \
      ~{if defined(value_display_summary) then ("-R " +  '"' + value_display_summary + '"') else ""} \
      ~{if defined(value_display_individual) then ("-k " +  '"' + value_display_individual + '"') else ""} \
      ~{if defined(usage_message) then ("-v " +  '"' + usage_message + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    i: "file"
    directory_optional_default: "directory (optional). By default the file is replaced in the same location"
    f: "name for identification"
    g: "name for identification"
    value_display_summary: "value to display plasmids covered >= in summary image"
    value_display_individual: "value to display plasmids covered >= in individual image"
    usage_message: "usage message"
  }
  output {
    File out_stdout = stdout()
  }
}