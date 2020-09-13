version 1.0

task DrawCircosImagessh {
  input {
    Directory? directory_containing_files
    Directory? containing_config_files
    File? file_selected_draw
    String? s
    String? g
    File? file
    Directory? directory_create_config
    String? remove_config_files
    String? var_8
    String? var_9
    String? usage_message
  }
  command <<<
    draw_circos_images_sh \
      ~{if defined(directory_containing_files) then ("-i " +  '"' + directory_containing_files + '"') else ""} \
      ~{if defined(containing_config_files) then ("-d " +  '"' + containing_config_files + '"') else ""} \
      ~{if defined(file_selected_draw) then ("-C " +  '"' + file_selected_draw + '"') else ""} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""} \
      ~{if defined(file) then ("-l " +  '"' + file + '"') else ""} \
      ~{if defined(directory_create_config) then ("-o " +  '"' + directory_create_config + '"') else ""} \
      ~{if defined(remove_config_files) then ("-c " +  '"' + remove_config_files + '"') else ""} \
      ~{if defined(var_8) then ("-v " +  '"' + var_8 + '"') else ""} \
      ~{if defined(var_9) then ("-V " +  '"' + var_9 + '"') else ""} \
      ~{if defined(usage_message) then ("-h " +  '"' + usage_message + '"') else ""}
  >>>
  parameter_meta {
    directory_containing_files: "directory containing files to represent"
    containing_config_files: "containing config files"
    file_selected_draw: "file selected to draw"
    s: ""
    g: ""
    file: "file"
    directory_create_config: "directory to create config and pictures"
    remove_config_files: ": remove config files"
    var_8: ""
    var_9: ""
    usage_message: "usage message"
  }
  output {
    File out_stdout = stdout()
  }
}