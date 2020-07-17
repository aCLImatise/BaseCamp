version 1.0

task ScanMotifGenomeWide.pl {
  input {
    Boolean? five_p
    Boolean? bed
    Boolean? homer_one
    Boolean? homer_two
    Boolean? keep_all
    Boolean? mask
    Boolean? number_cpus_use
    String motif
    String genome
  }
  command <<<
    scanMotifGenomeWide.pl \
      ~{motif} \
      ~{genome} \
      ~{true="-5p" false="" five_p} \
      ~{true="-bed" false="" bed} \
      ~{true="-homer1" false="" homer_one} \
      ~{true="-homer2" false="" homer_two} \
      ~{true="-keepAll" false="" keep_all} \
      ~{true="-mask" false="" mask} \
      ~{true="-p" false="" number_cpus_use}
  >>>
  parameter_meta {
    five_p: "(report positions centered on the 5' start of the motif)"
    bed: "(format as a BED file, i.e. for UCSC upload) -int (round motif scores to nearest integer, use if making bigBed file)"
    homer_one: "(use the original homer)"
    homer_two: "(use homer2 instead of the original homer, default)"
    keep_all: "(keep ALL sites, even ones that overlap, default is to keep one)"
    mask: "(search for motifs in repeat masked sequence)"
    number_cpus_use: "<#> (Number of CPUs to use)"
    motif: ""
    genome: ""
  }
}