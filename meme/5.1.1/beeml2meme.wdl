version 1.0

task Beeml2meme {
  input {
    String? bg
    String? pseudo
    String? sg
    Boolean? log_odds
    String? url
    String matrix_file
  }
  command <<<
    beeml2meme \
      ~{matrix_file} \
      ~{if defined(bg) then ("-bg " +  '"' + bg + '"') else ""} \
      ~{if defined(pseudo) then ("-pseudo " +  '"' + pseudo + '"') else ""} \
      ~{if defined(sg) then ("-sg " +  '"' + sg + '"') else ""} \
      ~{true="-logodds" false="" log_odds} \
      ~{if defined(url) then ("-url " +  '"' + url + '"') else ""}
  >>>
  parameter_meta {
    bg: "file with background frequencies of letters default: uniform background"
    pseudo: "add <total pseudocounts> times letter background to each frequency; default: 0"
    sg: "specifify a file containing the contents of:  http://the_brain.bwh.harvard.edu/uniprobe/browse.php and use the uniprobe ID as the alternate name"
    log_odds: "print log-odds matrix, too; default: print frequency matrix only"
    url: "website for the motif; The UNIPROBE ID is substituted for MOTIF_NAME; default: no url"
    matrix_file: ""
  }
}