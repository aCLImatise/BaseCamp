version 1.0

task Bed2DtoUCSCbed.pl {
  input {
    Boolean? ucsc
    Boolean? peaks
    Boolean? interactions
    Boolean? ends
    String two_d_bed_file
  }
  command <<<
    bed2DtoUCSCbed.pl \
      ~{two_d_bed_file} \
      ~{true="-ucsc" false="" ucsc} \
      ~{true="-peaks" false="" peaks} \
      ~{true="-interactions" false="" interactions} \
      ~{true="-ends" false="" ends}
  >>>
  parameter_meta {
    ucsc: "(outputs BED12 format for visualizing 2D BED file in the UCSC browser)"
    peaks: "(outputs HOMER-style peak file spanning interaction region)"
    interactions: "(outputs HOMER-style interaction file for use with annotateInteractions.pl)"
    ends: "(outputs HOMER-style peak files representing the anchor points of each interaction)"
    two_d_bed_file: ""
  }
}