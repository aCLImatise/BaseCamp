version 1.0

task Tamo2meme {
  input {
    String? skip
    Boolean? numbers
    String? bg
    String? pseudo
    Boolean? log_odds
    String? url
    String tamo_file
  }
  command <<<
    tamo2meme \
      ~{tamo_file} \
      ~{if defined(skip) then ("-skip " +  '"' + skip + '"') else ""} \
      ~{true="-numbers" false="" numbers} \
      ~{if defined(bg) then ("-bg " +  '"' + bg + '"') else ""} \
      ~{if defined(pseudo) then ("-pseudo " +  '"' + pseudo + '"') else ""} \
      ~{true="-logodds" false="" log_odds} \
      ~{if defined(url) then ("-url " +  '"' + url + '"') else ""}
  >>>
  parameter_meta {
    skip: "skip this ID (may be repeated)"
    numbers: "use numbers instead of strings as motif names"
    bg: "file with background frequencies of letters; default: uniform background"
    pseudo: "add <total pseudocounts> times letter background to each frequency; default: 0"
    log_odds: "print log-odds matrix, too; default: print frequency matrix only"
    url: "website for the motif; The tamo ID is substituted for MOTIF_NAME; default: no url"
    tamo_file: ""
  }
}