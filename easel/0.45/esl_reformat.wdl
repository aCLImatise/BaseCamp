version 1.0

task Eslreformat {
  input {
    Boolean? convert_dna_alphabet
    Boolean? convert_lower_case
    Boolean? remove_dna_codes
    File? send_output_file
    Boolean? convert_rna_tu
    Boolean? convert_upper_case
    Boolean? convert_chars_x
    String? gap_sym
    File? in_format
    Boolean? min_gap
    Boolean? keep_rf
    Boolean? no_gap
    Boolean? w_us_sify
    Boolean? de_wuss
    Boolean? full_wuss
    String? ignore
    String? accept_x
    Int? rename
    Int? replace
    Boolean? small
    File? id_map
    Boolean? options
    String fast_a
    String hmm_pg_md
    String clustal
    String pfam
    String phylip_s
    String selex
  }
  command <<<
    esl_reformat \
      ~{fast_a} \
      ~{hmm_pg_md} \
      ~{clustal} \
      ~{pfam} \
      ~{phylip_s} \
      ~{selex} \
      ~{if (convert_dna_alphabet) then "-d" else ""} \
      ~{if (convert_lower_case) then "-l" else ""} \
      ~{if (remove_dna_codes) then "-n" else ""} \
      ~{if defined(send_output_file) then ("-o " +  '"' + send_output_file + '"') else ""} \
      ~{if (convert_rna_tu) then "-r" else ""} \
      ~{if (convert_upper_case) then "-u" else ""} \
      ~{if (convert_chars_x) then "-x" else ""} \
      ~{if defined(gap_sym) then ("--gapsym " +  '"' + gap_sym + '"') else ""} \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""} \
      ~{if (min_gap) then "--mingap" else ""} \
      ~{if (keep_rf) then "--keeprf" else ""} \
      ~{if (no_gap) then "--nogap" else ""} \
      ~{if (w_us_sify) then "--wussify" else ""} \
      ~{if (de_wuss) then "--dewuss" else ""} \
      ~{if (full_wuss) then "--fullwuss" else ""} \
      ~{if defined(ignore) then ("--ignore " +  '"' + ignore + '"') else ""} \
      ~{if defined(accept_x) then ("--acceptx " +  '"' + accept_x + '"') else ""} \
      ~{if defined(rename) then ("--rename " +  '"' + rename + '"') else ""} \
      ~{if defined(replace) then ("--replace " +  '"' + replace + '"') else ""} \
      ~{if (small) then "--small" else ""} \
      ~{if defined(id_map) then ("--id_map " +  '"' + id_map + '"') else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    convert_dna_alphabet: ": convert to DNA alphabet (U->T)"
    convert_lower_case: ": convert to lower case"
    remove_dna_codes: ": remove DNA IUPAC codes; convert ambig chars to N"
    send_output_file: ": send output to file <f>, not stdout"
    convert_rna_tu: ": convert to RNA alphabet (T->U)"
    convert_upper_case: ": convert to upper case"
    convert_chars_x: ": convert non-IUPAC chars (e.g. X) in DNA to N"
    gap_sym: ": convert all gaps to character <s>"
    in_format: ": input sequence file is in format <s>"
    min_gap: ": remove columns containing all gaps (seqfile=MSA)"
    keep_rf: ": with --mingap, keep all nongap #=GC RF columns"
    no_gap: ": remove columns containing any gaps (seqfile=MSA)"
    w_us_sify: ": convert old RNA structure markup lines to WUSS"
    de_wuss: ": convert WUSS RNA structure markup to old format"
    full_wuss: ": convert simple WUSS notation to full (output) WUSS"
    ignore: ": ignore input seq characters listed in string <s>"
    accept_x: ": accept input seq chars in string <s> as X"
    rename: ": rename and number each sequence <s>.<n>"
    replace: ": <s> = <s1>:<s2> replace characters in <s1> with those in <s2>"
    small: ": use minimal RAM, input must be pfam, output must be afa or pfam"
    id_map: ": if format is hmmpgmd, put the id map into file <s>"
    options: ""
    fast_a: "a2m        "
    hmm_pg_md: "afa        "
    clustal: "clustallike"
    pfam: "phylip     "
    phylip_s: "psiblast   "
    selex: "stockholm  "
  }
  output {
    File out_stdout = stdout()
    File out_send_output_file = "${in_send_output_file}"
  }
}