version 1.0

task Sreformat {
  input {
    Boolean? force_dna_alphabet
    Boolean? force_rna_alphabet
    Boolean? force_lower_case
    Boolean? force_upper_case
    Boolean? convert_chars_dna
    File? in_format
    Boolean? min_gap
    Boolean? no_gap
    Boolean? pfam
    Boolean? sam
    String? sam_frac
    String? gap_sym
    Boolean? options
    String fast_a
    String embl
    String genbank
    String gcg
    String gcg_data
    String pir
  }
  command <<<
    sreformat \
      ~{fast_a} \
      ~{embl} \
      ~{genbank} \
      ~{gcg} \
      ~{gcg_data} \
      ~{pir} \
      ~{if (force_dna_alphabet) then "-d" else ""} \
      ~{if (force_rna_alphabet) then "-r" else ""} \
      ~{if (force_lower_case) then "-l" else ""} \
      ~{if (force_upper_case) then "-u" else ""} \
      ~{if (convert_chars_dna) then "-x" else ""} \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""} \
      ~{if (min_gap) then "--mingap" else ""} \
      ~{if (no_gap) then "--nogap" else ""} \
      ~{if (pfam) then "--pfam" else ""} \
      ~{if (sam) then "--sam" else ""} \
      ~{if defined(sam_frac) then ("--samfrac " +  '"' + sam_frac + '"') else ""} \
      ~{if defined(gap_sym) then ("--gapsym " +  '"' + gap_sym + '"') else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    force_dna_alphabet: ": force DNA alphabet for nucleic acid sequence"
    force_rna_alphabet: ": force RNA alphabet for nucleic acid sequence"
    force_lower_case: ": force lower case"
    force_upper_case: ": force upper case"
    convert_chars_dna: ": convert non-IUPAC chars in DNA to N's for IUPAC/BLAST compatibility"
    in_format: ": input sequence file is in format <s>"
    min_gap: ": remove columns containing all gaps (seqfile=alignment)"
    no_gap: ": remove columns containing any gaps (seqfile=alignment)"
    pfam: ": modify Stockholm format output to be in PFAM style (1 line/seq)"
    sam: ": try to convert gaps to SAM style (seqfile=alignment)"
    sam_frac: ": convert to SAM convention; cols w/ gapfrac > x are inserts"
    gap_sym: ": convert all gaps to character '<c>'"
    options: ""
    fast_a: "stockholm"
    embl: "msf"
    genbank: "a2m"
    gcg: "phylip"
    gcg_data: "clustal"
    pir: "selex"
  }
  output {
    File out_stdout = stdout()
  }
}