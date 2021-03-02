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
      ~{if (cn) then "-CN" else ""} \
      ~{if (en) then "-EN" else ""} \
      ~{if (fn) then "-FN" else ""} \
      ~{if (gn) then "-GN" else ""} \
      ~{if (hn) then "-HN" else ""} \
      ~{if (jn) then "-JN" else ""} \
      ~{if (maximum_total_number_missmatches) then "-MN" else ""} \
      ~{if (maximum_total_number_noncanonical) then "-NN" else ""} \
      ~{if (on) then "-ON" else ""} \
      ~{if (pn) then "-PN" else ""} \
      ~{if (maximum_total_number_unpaired) then "-UN" else ""} \
      ~{if (ln) then "-lN" else ""} \
      ~{if (maximum_allowed_missmatches) then "-mN" else ""} \
      ~{if (allow_noncanonical_boundary) then "-nN" else ""} \
      ~{if (maximum_allowed_bases) then "-uN" else ""} \
      ~{if (gs) then "-gS" else ""} \
      ~{if (sa) then "-Sa" else ""} \
      ~{if (sb) then "-Sb" else ""} \
      ~{if (sc) then "-Sc" else ""} \
      ~{if (sr) then "-Sr" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    cn: ":    Minimum % of coverage (0-100)"
    en: ":    Report only the best (N=1) or all (N=2) results per gene locus (1)"
    fn: ":    Filter Level (0 -> 3: no -> stringent)"
    gn: ":    Genetic code (0: universal)"
    hn: ":    Minimum spaln score"
    jn: ":    Minimum ORF length (300)"
    maximum_total_number_missmatches: ":    Maximum total number of missmatches"
    maximum_total_number_noncanonical: ":    Maximum total number of non-canonical boundaries"
    on: ":    Output format. 0:Gff3, 3:BED, 4:Native, 5:Intron,\\n6:cDNA, 7:translate, 8:CDS, 15:unique intron"
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
  output {
    File out_stdout = stdout()
  }
}