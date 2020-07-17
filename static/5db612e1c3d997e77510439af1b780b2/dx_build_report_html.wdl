version 1.0

task DxBuildReportHtml {
  input {
    String? remote
    String? local
    String? width
    String? height
    String src
  }
  command <<<
    dx-build-report-html \
      ~{src} \
      ~{if defined(remote) then ("--remote " +  '"' + remote + '"') else ""} \
      ~{if defined(local) then ("--local " +  '"' + local + '"') else ""} \
      ~{if defined(width) then ("--width " +  '"' + width + '"') else ""} \
      ~{if defined(height) then ("--height " +  '"' + height + '"') else ""}
  >>>
  parameter_meta {
    remote: "Destination route. Can be: (1) a project ID, (2) a path, with or without object name (e.g. /PATH/REPORT_NAME), (3) project ID + path (e.g. PROJECT:/PATH/REPORT_NAME)"
    local: "Local file to save baked HTML to"
    width: "Width of the final report, in pixels"
    height: "Height of the final report, in pixels"
    src: "Source image or HTML file(s)"
  }
}