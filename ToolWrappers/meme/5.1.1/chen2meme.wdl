version 1.0

task Chen2meme {
  input {
    String? skip
    File? bg
    Int? pseudo
    Boolean? log_odds
    String? url
  }
  command <<<
    chen2meme \
      ~{if defined(skip) then ("-skip " +  '"' + skip + '"') else ""} \
      ~{if defined(bg) then ("-bg " +  '"' + bg + '"') else ""} \
      ~{if defined(pseudo) then ("-pseudo " +  '"' + pseudo + '"') else ""} \
      ~{if (log_odds) then "-logodds" else ""} \
      ~{if defined(url) then ("-url " +  '"' + url + '"') else ""}
  >>>
  parameter_meta {
    skip: "skip this ID (may be repeated)"
    bg: "file with background frequencies of letters;\\ndefault: uniform background"
    pseudo: "add <total pseudocounts> times letter\\nbackground to each frequency; default: 0"
    log_odds: "print log-odds matrix, too;\\ndefault: print frequency matrix only"
    url: "website for the motif; The motif name\\nis substituted for MOTIF_NAME;"
  }
  output {
    File out_stdout = stdout()
  }
}