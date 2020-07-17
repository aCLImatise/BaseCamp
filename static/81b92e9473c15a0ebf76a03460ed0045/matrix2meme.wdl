version 1.0

task Matrix2meme {
  input {
    Boolean? dna
    Boolean? rna
    Boolean? protein
    String? alph
    String? orien
    String? num_seqs
    String? bg
    String? pseudo
    Boolean? log_odds
    String? url
  }
  command <<<
    matrix2meme \
      ~{true="-dna" false="" dna} \
      ~{true="-rna" false="" rna} \
      ~{true="-protein" false="" protein} \
      ~{if defined(alph) then ("-alph " +  '"' + alph + '"') else ""} \
      ~{if defined(orien) then ("-orien " +  '"' + orien + '"') else ""} \
      ~{if defined(num_seqs) then ("-numseqs " +  '"' + num_seqs + '"') else ""} \
      ~{if defined(bg) then ("-bg " +  '"' + bg + '"') else ""} \
      ~{if defined(pseudo) then ("-pseudo " +  '"' + pseudo + '"') else ""} \
      ~{true="-logodds" false="" log_odds} \
      ~{if defined(url) then ("-url " +  '"' + url + '"') else ""}
  >>>
  parameter_meta {
    dna: "use DNA IUPAC alphabet"
    rna: "use RNA IUPAC alphabet"
    protein: "use protein IUPAC alphabet"
    alph: "Alphabet definition; default: DNA"
    orien: "|col|row           The matrix orientation; default: auto"
    num_seqs: "assume frequencies based on this many  sequences when probabilty matrix is used; default: 20"
    bg: "file with background frequencies of letters;  default: uniform background"
    pseudo: "add <total pseudocounts> times letter  background to each frequency; default: 0"
    log_odds: "output the log-odds (PSSM) and frequency  (PSPM) motifs; default: PSPM motif only"
    url: "website for the motif; The motif name is  substituted for MOTIF_NAME; default: no url"
  }
}