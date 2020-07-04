version 1.0

task Sortgrcd {
  input {
    Boolean? cn
    Boolean? en
    Boolean? fn
    Boolean? gn
    Boolean? hn
    Boolean? jn
    Boolean? maximum_total_number_missmatches
    Boolean? maximum_total_number_noncanonical
    Boolean? on
    Boolean? pn
    Boolean? maximum_total_number_unpaired
    Boolean? ln
    Boolean? maximum_allowed_missmatches
    Boolean? allow_noncanonical_boundary
    Boolean? maximum_allowed_bases
    Boolean? gs
    Boolean? sa
    Boolean? sb
    Boolean? sc
    Boolean? sr
  }
  command <<<
    sortgrcd \
      ~{true="-CN" false="" cn} \
      ~{true="-EN" false="" en} \
      ~{true="-FN" false="" fn} \
      ~{true="-GN" false="" gn} \
      ~{true="-HN" false="" hn} \
      ~{true="-JN" false="" jn} \
      ~{true="-MN" false="" maximum_total_number_missmatches} \
      ~{true="-NN" false="" maximum_total_number_noncanonical} \
      ~{true="-ON" false="" on} \
      ~{true="-PN" false="" pn} \
      ~{true="-UN" false="" maximum_total_number_unpaired} \
      ~{true="-lN" false="" ln} \
      ~{true="-mN" false="" maximum_allowed_missmatches} \
      ~{true="-nN" false="" allow_noncanonical_boundary} \
      ~{true="-uN" false="" maximum_allowed_bases} \
      ~{true="-gS" false="" gs} \
      ~{true="-Sa" false="" sa} \
      ~{true="-Sb" false="" sb} \
      ~{true="-Sc" false="" sc} \
      ~{true="-Sr" false="" sr}
  >>>
  parameter_meta {
    cn: ":    Minimum % of coverage (0-100)"
    en: ":    Report only the best (N=1) or all (N=2) results per gene locus (1)"
    fn: ":    Filter Level (0 -> 3: no -> stringent)"
    gn: ":    Genetic code (0: universal)"
    hn: ":    Minimum spaln score"
    jn: ":    Minimum ORF length (300)"
    maximum_total_number_missmatches: ":    Maximum total number of missmatches"
    maximum_total_number_noncanonical: ":    Maximum total number of non-canonical boundaries"
    on: ":    Output format. 0:Gff3, 3:BED, 4:Native, 5:Intron,  6:cDNA, 7:translate, 8:CDS, 15:unique intron"
    pn: ":    Minimum Overall % identity (0-100)"
    maximum_total_number_unpaired: ":    Maximum total number of unpaired bases in gaps"
    ln: ":    Number of residues per line for -O6 or -O7 (60)"
    maximum_allowed_missmatches: ":    Maximum allowed missmatches at both exon boundaries"
    allow_noncanonical_boundary: ":    allow non-canonical boundary? [0: no; 1: AT-AN; 2: 1bp mismatch; 3: any]"
    maximum_allowed_bases: ":    Maximum allowed unpaired bases in gaps at both exon boundaries"
    gs: ":    Specify the .grp file name"
    sa: ":    sort chromosomes in the alphabetical order of identifier (default)"
    sb: ":    sort chromosomes in the order of abundance mapped on them"
    sc: ":    sort chromosomes in the order of apparence in the genome db"
    sr: ":    sort records mapped on minus strand in the reverse order of genomic positions"
  }
}