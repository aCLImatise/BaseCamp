version 1.0

task Sreformat {
  input {
    Boolean? force_dna_alphabet
    Boolean? force_rna_alphabet
    Boolean? force_lower_case
    Boolean? force_upper_case
    Boolean? convert_noniupac_chars
    Boolean? remove_iupac_codes
    String? in_format
    Boolean? min_gap
    Boolean? no_gap
    Boolean? pfam
    Boolean? sam
    String? sam_frac
    String? gap_sym
    Boolean? w_us_sify
    Boolean? de_wuss
    Boolean? options
    String fast_a
    String embl
    String genbank
    String gcg
    String gcg_data
    String pir
    String raw
  }
  command <<<
    sreformat \
      ~{fast_a} \
      ~{embl} \
      ~{genbank} \
      ~{gcg} \
      ~{gcg_data} \
      ~{pir} \
      ~{raw} \
      ~{true="-d" false="" force_dna_alphabet} \
      ~{true="-r" false="" force_rna_alphabet} \
      ~{true="-l" false="" force_lower_case} \
      ~{true="-u" false="" force_upper_case} \
      ~{true="-x" false="" convert_noniupac_chars} \
      ~{true="-n" false="" remove_iupac_codes} \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""} \
      ~{true="--mingap" false="" min_gap} \
      ~{true="--nogap" false="" no_gap} \
      ~{true="--pfam" false="" pfam} \
      ~{true="--sam" false="" sam} \
      ~{if defined(sam_frac) then ("--samfrac " +  '"' + sam_frac + '"') else ""} \
      ~{if defined(gap_sym) then ("--gapsym " +  '"' + gap_sym + '"') else ""} \
      ~{true="--wussify" false="" w_us_sify} \
      ~{true="--dewuss" false="" de_wuss} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    force_dna_alphabet: ": force DNA alphabet for nucleic acid sequence"
    force_rna_alphabet: ": force RNA alphabet for nucleic acid sequence"
    force_lower_case: ": force lower case"
    force_upper_case: ": force upper case"
    convert_noniupac_chars: ": convert non-IUPAC chars (i.e. X's) in DNA to N's for IUPAC/BLAST compatibility"
    remove_iupac_codes: ": remove IUPAC codes; convert all ambiguous chars in DNA/RNA to N's"
    in_format: ": input sequence file is in format <s>"
    min_gap: ": remove columns containing all gaps (seqfile=alignment)"
    no_gap: ": remove columns containing any gaps (seqfile=alignment)"
    pfam: ": modify Stockholm format output to be in PFAM style (1 line/seq)"
    sam: ": try to convert gaps to SAM style (seqfile=alignment)"
    sam_frac: ": convert to SAM convention; cols w/ gapfrac > x are inserts"
    gap_sym: ": convert all gaps to character '<c>'"
    w_us_sify: ": convert old format RNA structure markup lines to WUSS"
    de_wuss: ": convert WUSS notation RNA structure markup lines to old format"
    options: ""
    fast_a: "stockholm"
    embl: "msf"
    genbank: "a2m"
    gcg: "phylip"
    gcg_data: "clustal"
    pir: "selex"
    raw: "eps"
  }
}