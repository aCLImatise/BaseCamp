version 1.0

task Biocontainerssearch {
  input {
    String? search_term
    Boolean? json
    Boolean? show_images
  }
  command <<<
    biocontainers_search \
      ~{if defined(search_term) then ("--search_term " +  '"' + search_term + '"') else ""} \
      ~{if (json) then "--json" else ""} \
      ~{if (show_images) then "--show_images" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    search_term: "Search term"
    json: "Print json format"
    show_images: "Show all available images"
  }
  output {
    File out_stdout = stdout()
  }
}