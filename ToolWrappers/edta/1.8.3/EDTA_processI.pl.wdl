version 1.0

task EDTAProcessIpl {
  input {
    Boolean? genome
    Boolean? ltr
    Boolean? tir
    Boolean? heli_tron
    Boolean? min_diff_ltr
    Boolean? min_diff_tir
    Boolean? min_diff_hel
    Boolean? repeatmasker
    Boolean? blast
    Boolean? prot_lib
    Boolean? threads
  }
  command <<<
    EDTA_processI_pl \
      ~{if (genome) then "-genome" else ""} \
      ~{if (ltr) then "-ltr" else ""} \
      ~{if (tir) then "-tir" else ""} \
      ~{if (heli_tron) then "-helitron" else ""} \
      ~{if (min_diff_ltr) then "-mindiff_ltr" else ""} \
      ~{if (min_diff_tir) then "-mindiff_tir" else ""} \
      ~{if (min_diff_hel) then "-mindiff_hel" else ""} \
      ~{if (repeatmasker) then "-repeatmasker" else ""} \
      ~{if (blast) then "-blast" else ""} \
      ~{if (prot_lib) then "-protlib" else ""} \
      ~{if (threads) then "-threads" else ""}
  >>>
  parameter_meta {
    genome: "[File]  The genome FASTA"
    ltr: "[File]  The raw LTR library FASTA"
    tir: "[File]  The raw TIR library FASTA"
    heli_tron: "[File]  The raw Helitron library FASTA"
    min_diff_ltr: "[float] The minimum fold difference in richness between LTRs and contaminants (default: 1)"
    min_diff_tir: "[float] The minimum fold difference in richness between TIRs and contaminants (default: 1)"
    min_diff_hel: "[float] The minimum fold difference in richness between Helitrons and contaminants (default: 4)"
    repeatmasker: "[path]    The directory containing RepeatMasker (default: read from ENV)"
    blast: "[path]   The directory containing Blastn (default: read from ENV)"
    prot_lib: "[File] Protein-coding aa sequences to be removed from TE candidates. (default lib: alluniRefprexp082813 (plant))\\nYou may use uniprot_sprot database available from here:\\nftp://ftp.uniprot.org/pub/databases/uniprot/current_release/knowledgebase/taxonomic_divisions/"
    threads: "[int]   Number of theads to run this script"
  }
  output {
    File out_stdout = stdout()
  }
}