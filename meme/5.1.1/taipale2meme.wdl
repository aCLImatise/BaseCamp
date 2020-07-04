version 1.0

task Taipale2meme {
  input {
    String? postfix
    String? strands
    String? bg
    String? pseudo
    Boolean? log_odds
    String? url
  }
  command <<<
    taipale2meme \
      ~{if defined(postfix) then ("-postfix " +  '"' + postfix + '"') else ""} \
      ~{if defined(strands) then ("-strands " +  '"' + strands + '"') else ""} \
      ~{if defined(bg) then ("-bg " +  '"' + bg + '"') else ""} \
      ~{if defined(pseudo) then ("-pseudo " +  '"' + pseudo + '"') else ""} \
      ~{true="-logodds" false="" log_odds} \
      ~{if defined(url) then ("-url " +  '"' + url + '"') else ""}
  >>>
  parameter_meta {
    postfix: "text to append to motif names."
    strands: "|2            print '+ -' or '+' on the MEME strand line; default: 2 (prints '+ -')"
    bg: "file with background frequencies of letters;  default: uniform"
    pseudo: "add <A> times background frequency to each count when computing letter frequencies default: 0"
    log_odds: "print log-odds matrix as well as frequency matrix; default: frequency matrix only"
    url: "website for the motif if it doesn't have one  already; The motif name is substituted for  MOTIF_NAME; default: use existing url"
  }
}