version 1.0

task DrawCircosImages.sh {
  input {
    String? usage_message
  }
  command <<<
    draw_circos_images.sh \
      ~{if defined(usage_message) then ("-h " +  '"' + usage_message + '"') else ""}
  >>>
  parameter_meta {
    usage_message: "usage message"
  }
}