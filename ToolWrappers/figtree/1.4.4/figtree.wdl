version 1.0

task Figtree {
  input {
    String? graphic
    String? width
    String? height
    File? url
    String a_dotrambautateddotacdotuk
  }
  command <<<
    figtree \
      ~{a_dotrambautateddotacdotuk} \
      ~{if defined(graphic) then ("-graphic " +  '"' + graphic + '"') else ""} \
      ~{if defined(width) then ("-width " +  '"' + width + '"') else ""} \
      ~{if defined(height) then ("-height " +  '"' + height + '"') else ""} \
      ~{if defined(url) then ("-url " +  '"' + url + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    graphic: "a graphic with the given format"
    width: "width of the graphic in pixels"
    height: "height of the graphic in pixels"
    url: "input file is a URL"
    a_dotrambautateddotacdotuk: "http://tree.bio.ed.ac.uk/"
  }
  output {
    File out_stdout = stdout()
  }
}