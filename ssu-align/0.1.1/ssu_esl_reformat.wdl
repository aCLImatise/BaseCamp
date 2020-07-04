version 1.0

task SsuEslReformat {
  input {
    Boolean? convert_dna_alphabet
    Boolean? convert_lower_case
    Boolean? remove_dna_iupac
    String? send_output_file
    Boolean? convert_rna_alphabet
    Boolean? convert_upper_case
    Boolean? convert_noniupac_chars
    String? gap_sym
    String? in_format
    Boolean? min_gap
    Boolean? keep_rf
    Boolean? no_gap
    Boolean? w_us_sify
    Boolean? de_wuss
    Boolean? full_wuss
    String? ignore
    String? accept_x
    String? rename
    Boolean? small
    Boolean? options
    String fast_a
  }
  command <<<
    ssu-esl-reformat \
      ~{fast_a} \
      ~{true="-d" false="" convert_dna_alphabet} \
      ~{true="-l" false="" convert_lower_case} \
      ~{true="-n" false="" remove_dna_iupac} \
      ~{if defined(send_output_file) then ("-o " +  '"' + send_output_file + '"') else ""} \
      ~{true="-r" false="" convert_rna_alphabet} \
      ~{true="-u" false="" convert_upper_case} \
      ~{true="-x" false="" convert_noniupac_chars} \
      ~{if defined(gap_sym) then ("--gapsym " +  '"' + gap_sym + '"') else ""} \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""} \
      ~{true="--mingap" false="" min_gap} \
      ~{true="--keeprf" false="" keep_rf} \
      ~{true="--nogap" false="" no_gap} \
      ~{true="--wussify" false="" w_us_sify} \
      ~{true="--dewuss" false="" de_wuss} \
      ~{true="--fullwuss" false="" full_wuss} \
      ~{if defined(ignore) then ("--ignore " +  '"' + ignore + '"') else ""} \
      ~{if defined(accept_x) then ("--acceptx " +  '"' + accept_x + '"') else ""} \
      ~{if defined(rename) then ("--rename " +  '"' + rename + '"') else ""} \
      ~{true="--small" false="" small} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    convert_dna_alphabet: ": convert to DNA alphabet (U->T)"
    convert_lower_case: ": convert to lower case"
    remove_dna_iupac: ": remove DNA IUPAC codes; convert ambig chars to N"
    send_output_file: ": send output to file <f>, not stdout"
    convert_rna_alphabet: ": convert to RNA alphabet (T->U)"
    convert_upper_case: ": convert to upper case"
    convert_noniupac_chars: ": convert non-IUPAC chars (e.g. X) in DNA to N"
    gap_sym: ": convert all gaps to character <c>"
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
    small: ": use minimal RAM, input must be pfam, ouput must be afa or pfam"
    options: ""
    fast_a: "stockholm pfam a2m psiblast afa"
  }
}