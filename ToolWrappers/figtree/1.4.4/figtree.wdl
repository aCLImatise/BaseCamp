version 1.0

task Figtree {
  input {
    String? graphic
    String? width
    String? height
    File? url
    File? tree_file_name
    File? graphic_file_name
  }
  command <<<
    figtree \
      ~{tree_file_name} \
      ~{graphic_file_name} \
      ~{if defined(graphic) then ("-graphic " +  '"' + graphic + '"') else ""} \
      ~{if defined(width) then ("-width " +  '"' + width + '"') else ""} \
      ~{if defined(height) then ("-height " +  '"' + height + '"') else ""} \
      ~{if defined(url) then ("-url " +  '"' + url + '"') else ""}
  >>>
  parameter_meta {
    graphic: "a graphic with the given format"
    width: "width of the graphic in pixels"
    height: "height of the graphic in pixels"
    url: "input file is a URL"
    tree_file_name: ""
    graphic_file_name: ""
  }
  output {
    File out_stdout = stdout()
  }
}