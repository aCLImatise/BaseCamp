version 1.0

task ScanMotifGenomeWidepl {
  input {
    Boolean? five_p
    Boolean? bed
    Boolean? round_motif_scores
    Boolean? homer_one
    Boolean? homer_two
    Boolean? keep_all
    Boolean? mask
    Boolean? number_cpus_use
    String motif
    String genome
  }
  command <<<
    scanMotifGenomeWide_pl \
      ~{motif} \
      ~{genome} \
      ~{if (five_p) then "-5p" else ""} \
      ~{if (bed) then "-bed" else ""} \
      ~{if (round_motif_scores) then "-int" else ""} \
      ~{if (homer_one) then "-homer1" else ""} \
      ~{if (homer_two) then "-homer2" else ""} \
      ~{if (keep_all) then "-keepAll" else ""} \
      ~{if (mask) then "-mask" else ""} \
      ~{if (number_cpus_use) then "-p" else ""}
  >>>
  parameter_meta {
    five_p: "(report positions centered on the 5' start of the motif)"
    bed: "(format as a BED file, i.e. for UCSC upload)"
    round_motif_scores: "(round motif scores to nearest integer, use if making bigBed file)"
    homer_one: "(use the original homer)"
    homer_two: "(use homer2 instead of the original homer, default)"
    keep_all: "(keep ALL sites, even ones that overlap, default is to keep one)"
    mask: "(search for motifs in repeat masked sequence)"
    number_cpus_use: "<#> (Number of CPUs to use)"
    motif: ""
    genome: ""
  }
  output {
    File out_stdout = stdout()
  }
}