version 1.0

task DrawCircosImagessh {
  input {
    File? directory_containing_files
  }
  command <<<
    draw_circos_images_sh \
      ~{if defined(directory_containing_files) then ("-i " +  '"' + directory_containing_files + '"') else ""}
  >>>
  parameter_meta {
    directory_containing_files: "directory containing files to represent\\n-d directory containing config files\\n-C config file selected to draw\\n-s sample\\n-g group\\n-l log file\\n-o output directory to create config and pictures\\n-c clean: remove config files\\n-v version\\n-V verbose\\n-h display usage message\\n"
  }
  output {
    File out_stdout = stdout()
    File out_directory_containing_files = "${in_directory_containing_files}"
  }
}