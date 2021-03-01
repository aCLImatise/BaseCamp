version 1.0

task Dxbuildreporthtml {
  input {
    File? remote
    File? local
    String? width
    String? height
    String src
  }
  command <<<
    dx_build_report_html \
      ~{src} \
      ~{if defined(remote) then ("--remote " +  '"' + remote + '"') else ""} \
      ~{if defined(local) then ("--local " +  '"' + local + '"') else ""} \
      ~{if defined(width) then ("--width " +  '"' + width + '"') else ""} \
      ~{if defined(height) then ("--height " +  '"' + height + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    remote: "Destination route. Can be: (1) a project ID, (2) a\\npath, with or without object name (e.g.\\n/PATH/REPORT_NAME), (3) project ID + path (e.g.\\nPROJECT:/PATH/REPORT_NAME)"
    local: "Local file to save baked HTML to"
    width: "Width of the final report, in pixels"
    height: "Height of the final report, in pixels\\n"
    src: "Source image or HTML file(s)"
  }
  output {
    File out_stdout = stdout()
  }
}