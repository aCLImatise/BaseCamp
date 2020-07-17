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
      ~{true="-journal" false="" journal} \
      ~{true="-year" false="" year} \
      ~{true="-volume" false="" volume} \
      ~{true="-page" false="" page} \
      ~{true="-author" false="" author}
  >>>
  parameter_meta {
    journal: "Journal Title"
    year: "Year"
    volume: "Volume"
    page: "First Page"
    author: "Author Name"
  }
}