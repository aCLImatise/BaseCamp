version 1.0

task BrPmfetch.rb {
  input {
    Boolean? query
    Boolean? title
    Boolean? journal
    Boolean? volume
    Boolean? issue
    Boolean? page
    Boolean? author
    Boolean? mesh
    String? format
    Boolean? pmid_list
    Boolean? ret_max
    Boolean? ret_start
    String? sort
    Boolean? rel_date
    String? min_date
    String? maxdate
    Boolean? examples
    String? options_dot_dot_dot
  }
  command <<<
    br_pmfetch.rb \
      ~{options_dot_dot_dot} \
      ~{true="--query" false="" query} \
      ~{true="--title" false="" title} \
      ~{true="--journal" false="" journal} \
      ~{true="--volume" false="" volume} \
      ~{true="--issue" false="" issue} \
      ~{true="--page" false="" page} \
      ~{true="--author" false="" author} \
      ~{true="--mesh" false="" mesh} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{true="--pmidlist" false="" pmid_list} \
      ~{true="--retmax" false="" ret_max} \
      ~{true="--retstart" false="" ret_start} \
      ~{if defined(sort) then ("--sort " +  '"' + sort + '"') else ""} \
      ~{true="--reldate" false="" rel_date} \
      ~{if defined(min_date) then ("--mindate " +  '"' + min_date + '"') else ""} \
      ~{if defined(maxdate) then ("--maxdate " +  '"' + maxdate + '"') else ""} \
      ~{true="--examples" false="" examples}
  >>>
  parameter_meta {
    query: "\"genome AND virus\"  Query string for PubMed search"
    title: "\"mobile elements\"   Title of the article to search"
    journal: "\"genome res\"      Journal title to search"
    volume: "#                  Journal volume to search"
    issue: "#                   Journal issue to search"
    page: "#                    First page number of the article to search"
    author: "\"Altschul SF\"      Author name to search"
    mesh: "\"SARS virus\"         MeSH term to search"
    format: "Summary output format"
    pmid_list: "Output only a list of PubMed IDs"
    ret_max: "#                  Number of articles to retrieve at the maximum"
    ret_start: "#                Starting number of the articles to retrieve"
    sort: "+date             Sort method for the summary output"
    rel_date: "#                 Search articles published within recent # days"
    min_date: "Search articles published after the date"
    maxdate: "Search articles published before the date"
    examples: "Output examples, then exit"
    options_dot_dot_dot: ""
  }
}