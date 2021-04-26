version 1.0

task DrawCircosImagessh {
  input {
    Directory? directory_containing_files
    Directory? containing_config_files
    File? file_selected_draw
    File? s
    Directory? directory_create_config
    String? remove_config_files
    String? usage_message
  }
  command <<<
    draw_circos_images_sh \
      ~{if defined(directory_containing_files) then ("-i " +  '"' + directory_containing_files + '"') else ""} \
      ~{if defined(containing_config_files) then ("-d " +  '"' + containing_config_files + '"') else ""} \
      ~{if defined(file_selected_draw) then ("-C " +  '"' + file_selected_draw + '"') else ""} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""} \
      ~{if defined(directory_create_config) then ("-o " +  '"' + directory_create_config + '"') else ""} \
      ~{if defined(remove_config_files) then ("-c " +  '"' + remove_config_files + '"') else ""} \
      ~{if defined(usage_message) then ("-v " +  '"' + usage_message + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/plasmidid:1.6.5--hdfd78af_0"
  }
  parameter_meta {
    directory_containing_files: "directory containing files to represent"
    containing_config_files: "containing config files"
    file_selected_draw: "file selected to draw"
    s: "file"
    directory_create_config: "directory to create config and pictures"
    remove_config_files: ": remove config files"
    usage_message: "usage message"
  }
  output {
    File out_stdout = stdout()
  }
}