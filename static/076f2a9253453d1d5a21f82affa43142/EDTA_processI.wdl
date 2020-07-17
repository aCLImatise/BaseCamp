version 1.0

task EDTAProcessI.pl {
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
    EDTA_processI.pl \
      ~{true="-genome" false="" genome} \
      ~{true="-ltr" false="" ltr} \
      ~{true="-tir" false="" tir} \
      ~{true="-helitron" false="" heli_tron} \
      ~{true="-mindiff_ltr" false="" min_diff_ltr} \
      ~{true="-mindiff_tir" false="" min_diff_tir} \
      ~{true="-mindiff_hel" false="" min_diff_hel} \
      ~{true="-repeatmasker" false="" repeatmasker} \
      ~{true="-blast" false="" blast} \
      ~{true="-protlib" false="" prot_lib} \
      ~{true="-threads" false="" threads}
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
    prot_lib: "[File] Protein-coding aa sequences to be removed from TE candidates. (default lib: alluniRefprexp082813 (plant)) You may use uniprot_sprot database available from here: ftp://ftp.uniprot.org/pub/databases/uniprot/current_release/knowledgebase/taxonomic_divisions/"
    threads: "[int]   Number of theads to run this script"
  }
}