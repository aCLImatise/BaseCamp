version 1.0

task Iupac2meme {
  input {
    Boolean? use_dna_iupac_alphabet
    Boolean? use_rna_iupac_alphabet
    Boolean? use_protein_iupac_alphabet
    File? alph
    Int? num_seqs
    File? bg
    Int? pseudo
    Boolean? output_logodds_pssm
    String? url
    Boolean? no_sort
    Boolean? named
    String add
    String assume
    String default
    File var_file
    String iupac_motif
    String var_output
    String use
    String var_18
    String var_19
    String frequencies
    String var_21
    String the
    String total_pseudo_counts
    String with
    String iupac
    String alphabet
    String background
    String based
    String var_29
    String times
    String definition
    String letter
    String on
    String of
    String this
    String letters
    String many
  }
  command <<<
    iupac2meme \
      ~{add} \
      ~{assume} \
      ~{default} \
      ~{var_file} \
      ~{iupac_motif} \
      ~{var_output} \
      ~{use} \
      ~{var_18} \
      ~{var_19} \
      ~{frequencies} \
      ~{var_21} \
      ~{the} \
      ~{total_pseudo_counts} \
      ~{with} \
      ~{iupac} \
      ~{alphabet} \
      ~{background} \
      ~{based} \
      ~{var_29} \
      ~{times} \
      ~{definition} \
      ~{letter} \
      ~{on} \
      ~{of} \
      ~{this} \
      ~{letters} \
      ~{many} \
      ~{if (use_dna_iupac_alphabet) then "-dna" else ""} \
      ~{if (use_rna_iupac_alphabet) then "-rna" else ""} \
      ~{if (use_protein_iupac_alphabet) then "-protein" else ""} \
      ~{if defined(alph) then ("-alph " +  '"' + alph + '"') else ""} \
      ~{if defined(num_seqs) then ("-numseqs " +  '"' + num_seqs + '"') else ""} \
      ~{if defined(bg) then ("-bg " +  '"' + bg + '"') else ""} \
      ~{if defined(pseudo) then ("-pseudo " +  '"' + pseudo + '"') else ""} \
      ~{if (output_logodds_pssm) then "-logodds" else ""} \
      ~{if defined(url) then ("-url " +  '"' + url + '"') else ""} \
      ~{if (no_sort) then "-nosort" else ""} \
      ~{if (named) then "-named" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    use_dna_iupac_alphabet: "use DNA IUPAC alphabet"
    use_rna_iupac_alphabet: "use RNA IUPAC alphabet"
    use_protein_iupac_alphabet: "use protein IUPAC alphabet"
    alph: "file with alphabet definition;\\ndefault: use DNA IUPAC alphabet"
    num_seqs: "assume frequencies based on this many\\nsequences; default: 20"
    bg: "file with background frequencies of letters;\\ndefault: uniform background"
    pseudo: "add <total pseudocounts> times letter\\nbackground to each frequency; default: 0"
    output_logodds_pssm: "output the log-odds (PSSM) and frequency\\n(PSPM) motifs; default: PSPM motif only"
    url: "website for the motif; The motif name is\\nsubstituted for MOTIF_NAME; default: no url"
    no_sort: "don't sort the order of motifs"
    named: "looks for a motif name after each IUPAC code;\\ndefault: use the IUPAC code as the motif name"
    add: ""
    assume: ""
    default: ""
    var_file: ""
    iupac_motif: ""
    var_output: ""
    use: ""
    var_18: ""
    var_19: ""
    frequencies: ""
    var_21: ""
    the: ""
    total_pseudo_counts: ""
    with: ""
    iupac: ""
    alphabet: ""
    background: ""
    based: ""
    var_29: ""
    times: ""
    definition: ""
    letter: ""
    on: ""
    of: ""
    this: ""
    letters: ""
    many: ""
  }
  output {
    File out_stdout = stdout()
  }
}