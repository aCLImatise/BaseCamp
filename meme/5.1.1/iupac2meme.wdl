version 1.0

task Iupac2meme {
  input {
    Boolean? dna
    Boolean? rna
    Boolean? protein
    String? alph
    String? num_seqs
    String? bg
    String? pseudo
    Boolean? log_odds
    String? url
    Boolean? no_sort
    Boolean? named
    String iupac_motif
  }
  command <<<
    iupac2meme \
      ~{iupac_motif} \
      ~{true="-dna" false="" dna} \
      ~{true="-rna" false="" rna} \
      ~{true="-protein" false="" protein} \
      ~{if defined(alph) then ("-alph " +  '"' + alph + '"') else ""} \
      ~{if defined(num_seqs) then ("-numseqs " +  '"' + num_seqs + '"') else ""} \
      ~{if defined(bg) then ("-bg " +  '"' + bg + '"') else ""} \
      ~{if defined(pseudo) then ("-pseudo " +  '"' + pseudo + '"') else ""} \
      ~{true="-logodds" false="" log_odds} \
      ~{if defined(url) then ("-url " +  '"' + url + '"') else ""} \
      ~{true="-nosort" false="" no_sort} \
      ~{true="-named" false="" named}
  >>>
  parameter_meta {
    dna: "use DNA IUPAC alphabet"
    rna: "use RNA IUPAC alphabet"
    protein: "use protein IUPAC alphabet"
    alph: "file with alphabet definition; default: use DNA IUPAC alphabet"
    num_seqs: "assume frequencies based on this many  sequences; default: 20"
    bg: "file with background frequencies of letters;  default: uniform background"
    pseudo: "add <total pseudocounts> times letter  background to each frequency; default: 0"
    log_odds: "output the log-odds (PSSM) and frequency  (PSPM) motifs; default: PSPM motif only"
    url: "website for the motif; The motif name is  substituted for MOTIF_NAME; default: no url"
    no_sort: "don't sort the order of motifs"
    named: "looks for a motif name after each IUPAC code; default: use the IUPAC code as the motif name"
    iupac_motif: ""
  }
}