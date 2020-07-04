version 1.0

task Chen2meme {
  input {
    String? skip
    String? bg
    String? pseudo
    Boolean? log_odds
    String? url
  }
  command <<<
    chen2meme \
      ~{if defined(skip) then ("-skip " +  '"' + skip + '"') else ""} \
      ~{if defined(bg) then ("-bg " +  '"' + bg + '"') else ""} \
      ~{if defined(pseudo) then ("-pseudo " +  '"' + pseudo + '"') else ""} \
      ~{true="-logodds" false="" log_odds} \
      ~{if defined(url) then ("-url " +  '"' + url + '"') else ""}
  >>>
  parameter_meta {
    skip: "skip this ID (may be repeated)"
    bg: "file with background frequencies of letters;  default: uniform background"
    pseudo: "add <total pseudocounts> times letter  background to each frequency; default: 0"
    log_odds: "print log-odds matrix, too;  default: print frequency matrix only"
    url: "website for the motif; The motif name is substituted for MOTIF_NAME;"
  }
}