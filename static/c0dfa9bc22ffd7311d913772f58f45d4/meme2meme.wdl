version 1.0

task Meme2meme {
  input {
    Boolean? consensus
    Boolean? numbers
    File? bg
    Boolean? log_odds
    String? url
    Boolean? force_url
    Boolean? x_alph
    String meme_file
  }
  command <<<
    meme2meme \
      ~{meme_file} \
      ~{true="-consensus" false="" consensus} \
      ~{true="-numbers" false="" numbers} \
      ~{if defined(bg) then ("-bg " +  '"' + bg + '"') else ""} \
      ~{true="-logodds" false="" log_odds} \
      ~{if defined(url) then ("-url " +  '"' + url + '"') else ""} \
      ~{true="-forceurl" false="" force_url} \
      ~{true="-xalph" false="" x_alph}
  >>>
  parameter_meta {
    consensus: "numeric names are swapped for an IUPAC consensus; default: use existing names"
    numbers: "use numbers instead of strings for motif names; default: use existing ID"
    bg: "file with background frequencies of letters; default: use first file background"
    log_odds: "print log-odds matrix as well as frequency matrix; default: frequency matrix only"
    url: "website for the motif if it doesn't have one already; The motif name is substituted for MOTIF_NAME; default: use existing url"
    force_url: "Existing urls are ignored"
    x_alph: "Convert all motifs to use the same alphabet as specified in the first file which must be a superset; default: all alphabets must be identical"
    meme_file: ""
  }
}