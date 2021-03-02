version 1.0

task Biocontainerssearch {
  input {
    String? search_term
    Boolean? json
    Boolean? show_images
    Boolean? v
  }
  command <<<
    biocontainers_search \
      ~{if defined(search_term) then ("--search_term " +  '"' + search_term + '"') else ""} \
      ~{if (json) then "--json" else ""} \
      ~{if (show_images) then "--show_images" else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bioconda2biocontainer:0.0.6--py_0"
  }
  parameter_meta {
    search_term: "Search term"
    json: "Print json format"
    show_images: "Show all available images"
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}