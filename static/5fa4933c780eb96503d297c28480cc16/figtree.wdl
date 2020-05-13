version 1.0

task Figtree {
  input {
    String graphicGraphic
    String widthWidth
    String heightHeight
    String urlUrl
  }
  command <<<
    figtree \
      ~{if defined(graphicGraphic) then ("-graphic " +  '"' + graphicGraphic + '"') else ""} \
      ~{if defined(widthWidth) then ("-width " +  '"' + widthWidth + '"') else ""} \
      ~{if defined(heightHeight) then ("-height " +  '"' + heightHeight + '"') else ""} \
      ~{if defined(urlUrl) then ("-url " +  '"' + urlUrl + '"') else ""}
  >>>
}