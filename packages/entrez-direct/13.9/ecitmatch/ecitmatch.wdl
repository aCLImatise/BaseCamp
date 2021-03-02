version 1.0

task Ecitmatch {
  input {
    Boolean? journal
    Boolean? year
    Boolean? volume
    Boolean? page
    Boolean? author
  }
  command <<<
    ecitmatch \
      ~{if (journal) then "-journal" else ""} \
      ~{if (year) then "-year" else ""} \
      ~{if (volume) then "-volume" else ""} \
      ~{if (page) then "-page" else ""} \
      ~{if (author) then "-author" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/entrez-direct:13.9--pl526h375a9b1_1"
  }
  parameter_meta {
    journal: "Journal Title"
    year: "Year"
    volume: "Volume"
    page: "First Page"
    author: "Author Name"
  }
  output {
    File out_stdout = stdout()
  }
}