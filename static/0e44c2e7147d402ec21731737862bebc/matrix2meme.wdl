version 1.0

task Matrix2meme {
  input {
    Boolean? dna
    Boolean? rna
    Boolean? protein
    File? alph
    String? orien
    Int? num_seqs
    File? bg
    Int? pseudo
    Boolean? log_odds
    String? url
  }
  command <<<
    matrix2meme \
      ~{if (dna) then "-dna" else ""} \
      ~{if (rna) then "-rna" else ""} \
      ~{if (protein) then "-protein" else ""} \
      ~{if defined(alph) then ("-alph " +  '"' + alph + '"') else ""} \
      ~{if defined(orien) then ("-orien " +  '"' + orien + '"') else ""} \
      ~{if defined(num_seqs) then ("-numseqs " +  '"' + num_seqs + '"') else ""} \
      ~{if defined(bg) then ("-bg " +  '"' + bg + '"') else ""} \
      ~{if defined(pseudo) then ("-pseudo " +  '"' + pseudo + '"') else ""} \
      ~{if (log_odds) then "-logodds" else ""} \
      ~{if defined(url) then ("-url " +  '"' + url + '"') else ""}
  >>>
  parameter_meta {
    dna: "use DNA IUPAC alphabet"
    rna: "use RNA IUPAC alphabet"
    protein: "use protein IUPAC alphabet"
    alph: "Alphabet definition; default: DNA"
    orien: "|col|row           The matrix orientation; default: auto"
    num_seqs: "assume frequencies based on this many\\nsequences when probabilty matrix is used;\\ndefault: 20"
    bg: "file with background frequencies of letters;\\ndefault: uniform background"
    pseudo: "add <total pseudocounts> times letter\\nbackground to each frequency; default: 0"
    log_odds: "output the log-odds (PSSM) and frequency\\n(PSPM) motifs; default: PSPM motif only"
    url: "website for the motif; The motif name is\\nsubstituted for MOTIF_NAME; default: no url"
  }
  output {
    File out_stdout = stdout()
  }
}