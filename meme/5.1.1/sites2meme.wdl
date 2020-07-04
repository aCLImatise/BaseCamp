version 1.0

task Sites2meme {
  input {
    String? ext
    String? tab_separated_file
    Boolean? protein
    String? alph
    String? bg
    String? pseudo
    Boolean? log_odds
    String? url
    Directory directory
  }
  command <<<
    sites2meme \
      ~{directory} \
      ~{if defined(ext) then ("-ext " +  '"' + ext + '"') else ""} \
      ~{if defined(tab_separated_file) then ("-map " +  '"' + tab_separated_file + '"') else ""} \
      ~{true="-protein" false="" protein} \
      ~{if defined(alph) then ("-alph " +  '"' + alph + '"') else ""} \
      ~{if defined(bg) then ("-bg " +  '"' + bg + '"') else ""} \
      ~{if defined(pseudo) then ("-pseudo " +  '"' + pseudo + '"') else ""} \
      ~{true="-logodds" false="" log_odds} \
      ~{if defined(url) then ("-url " +  '"' + url + '"') else ""}
  >>>
  parameter_meta {
    ext: "the file extension (with '.') of the sites files; the file name minus the extension will be used as the motif identifer; default: expect an extension of \".txt\""
    tab_separated_file: "tab separated file containing id, name pairs."
    protein: "Sets the expected alphabet to protein; default: the expected alphabet is DNA"
    alph: "Set the expected alphabet to the defintion in the file; default: DNA"
    bg: "file with background frequencies of letters;  default: use uniform background"
    pseudo: "add <total pseudocounts> times letter background to each frequency; default: 0"
    log_odds: "print log-odds matrix, too; default: print frequency matrix only"
    url: "website for the motif; The motif id is substituted for MOTIF_NAME"
    directory: ""
  }
}