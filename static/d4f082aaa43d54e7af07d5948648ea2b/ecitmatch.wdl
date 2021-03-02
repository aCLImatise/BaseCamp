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
    docker: "None"
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