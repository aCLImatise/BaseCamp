version 1.0

task Bed2DtoUCSCbedpl {
  input {
    Boolean? ucsc
    Boolean? peaks
    Boolean? interactions
    Boolean? ends
    File two_d_bed_file
  }
  command <<<
    bed2DtoUCSCbed_pl \
      ~{two_d_bed_file} \
      ~{if (ucsc) then "-ucsc" else ""} \
      ~{if (peaks) then "-peaks" else ""} \
      ~{if (interactions) then "-interactions" else ""} \
      ~{if (ends) then "-ends" else ""}
  >>>
  parameter_meta {
    ucsc: "(outputs BED12 format for visualizing 2D BED file in the UCSC browser)"
    peaks: "(outputs HOMER-style peak file spanning interaction region)"
    interactions: "(outputs HOMER-style interaction file for use with annotateInteractions.pl)"
    ends: "(outputs HOMER-style peak files representing the anchor points of each interaction)"
    two_d_bed_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}