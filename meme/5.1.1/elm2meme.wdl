version 1.0

task Elm2meme {
  input {
    Boolean? anchored
    String? bg
    String? pseudo
    Boolean? log_odds
    String? url
    String elm_file
  }
  command <<<
    elm2meme \
      ~{elm_file} \
      ~{true="-anchored" false="" anchored} \
      ~{if defined(bg) then ("-bg " +  '"' + bg + '"') else ""} \
      ~{if defined(pseudo) then ("-pseudo " +  '"' + pseudo + '"') else ""} \
      ~{true="-logodds" false="" log_odds} \
      ~{if defined(url) then ("-url " +  '"' + url + '"') else ""}
  >>>
  parameter_meta {
    anchored: "allow anchored motifs;  default: skip anchored motifs"
    bg: "file with background frequencies of letters;  default: uniform background"
    pseudo: "add <total pseudocounts> times letter  background to each frequency; default: 0"
    log_odds: "print log-odds matrix, too;  default: print frequency matrix only"
    url: "website for the motif; The motif name is substituted for MOTIF_NAME;"
    elm_file: ""
  }
}