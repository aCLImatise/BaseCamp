version 1.0

task Sites2meme {
  input {
    File? ext
    File? tab_separated_file
    Boolean? protein
    File? alph
    File? bg
    Int? pseudo
    Boolean? log_odds
    String? url
    Directory directory
  }
  command <<<
    sites2meme \
      ~{directory} \
      ~{if defined(ext) then ("-ext " +  '"' + ext + '"') else ""} \
      ~{if defined(tab_separated_file) then ("-map " +  '"' + tab_separated_file + '"') else ""} \
      ~{if (protein) then "-protein" else ""} \
      ~{if defined(alph) then ("-alph " +  '"' + alph + '"') else ""} \
      ~{if defined(bg) then ("-bg " +  '"' + bg + '"') else ""} \
      ~{if defined(pseudo) then ("-pseudo " +  '"' + pseudo + '"') else ""} \
      ~{if (log_odds) then "-logodds" else ""} \
      ~{if defined(url) then ("-url " +  '"' + url + '"') else ""}
  >>>
  parameter_meta {
    ext: "the file extension (with '.') of the sites files;\\nthe file name minus the extension will be\\nused as the motif identifer;\\ndefault: expect an extension of \\\".txt\\\""
    tab_separated_file: "tab separated file containing id, name pairs."
    protein: "Sets the expected alphabet to protein;\\ndefault: the expected alphabet is DNA"
    alph: "Set the expected alphabet to the defintion\\nin the file; default: DNA"
    bg: "file with background frequencies of letters;\\ndefault: use uniform background"
    pseudo: "add <total pseudocounts> times letter\\nbackground to each frequency; default: 0"
    log_odds: "print log-odds matrix, too;\\ndefault: print frequency matrix only"
    url: "website for the motif; The motif id is\\nsubstituted for MOTIF_NAME"
    directory: ""
  }
  output {
    File out_stdout = stdout()
  }
}