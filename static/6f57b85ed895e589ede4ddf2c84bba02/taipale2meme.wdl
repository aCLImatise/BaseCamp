version 1.0

task Taipale2meme {
  input {
    String? postfix
    Int? strands
    File? bg
    Int? pseudo
    Boolean? log_odds
    String? url
  }
  command <<<
    taipale2meme \
      ~{if defined(postfix) then ("-postfix " +  '"' + postfix + '"') else ""} \
      ~{if defined(strands) then ("-strands " +  '"' + strands + '"') else ""} \
      ~{if defined(bg) then ("-bg " +  '"' + bg + '"') else ""} \
      ~{if defined(pseudo) then ("-pseudo " +  '"' + pseudo + '"') else ""} \
      ~{if (log_odds) then "-logodds" else ""} \
      ~{if defined(url) then ("-url " +  '"' + url + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0"
  }
  parameter_meta {
    postfix: "text to append to motif names."
    strands: "|2            print '+ -' or '+' on the MEME strand line;\\ndefault: 2 (prints '+ -')"
    bg: "file with background frequencies of letters;\\ndefault: uniform"
    pseudo: "add <A> times background frequency to\\neach count when computing letter frequencies\\ndefault: 0"
    log_odds: "print log-odds matrix as well as frequency matrix;\\ndefault: frequency matrix only"
    url: "website for the motif if it doesn't have one\\nalready; The motif name is substituted for\\nMOTIF_NAME; default: use existing url"
  }
  output {
    File out_stdout = stdout()
  }
}