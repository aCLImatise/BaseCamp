version 1.0

task GenomeOntologypl {
  input {
    Boolean? g_size
    File? bg
    File peak_file_slash_tag_directory
    String genome
    Directory output_directory
    String? additional
  }
  command <<<
    GenomeOntology_pl \
      ~{peak_file_slash_tag_directory} \
      ~{genome} \
      ~{output_directory} \
      ~{additional} \
      ~{if (g_size) then "-gsize" else ""} \
      ~{if defined(bg) then ("-bg " +  '"' + bg + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    g_size: "<#> (Genome size used for significance calculations)"
    bg: "(Performs additional significance calculations\\nrelative to Control Peaks/Tags)\\n"
    peak_file_slash_tag_directory: ""
    genome: ""
    output_directory: ""
    additional: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}