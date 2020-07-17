version 1.0

task Priority2meme {
  input {
    Boolean? numbers
    String? bg
    String? pseudo
    Boolean? log_odds
    String? url
    String matrix_file
  }
  command <<<
    priority2meme \
      ~{matrix_file} \
      ~{true="-numbers" false="" numbers} \
      ~{if defined(bg) then ("-bg " +  '"' + bg + '"') else ""} \
      ~{if defined(pseudo) then ("-pseudo " +  '"' + pseudo + '"') else ""} \
      ~{true="-logodds" false="" log_odds} \
      ~{if defined(url) then ("-url " +  '"' + url + '"') else ""}
  >>>
  parameter_meta {
    numbers: "use numbers instead of strings as motif names;"
    bg: "file with background frequencies of letters;  default: uniform background"
    pseudo: "add <total pseudocounts> times letter background to each frequency; default: 0"
    log_odds: "print log-odds matrix, too; default: print frequency matrix only"
    url: "website for the motif; default: no url"
    matrix_file: ""
  }
}