version 1.0

task BrassIPrepBam.pl {
  input {
    Boolean? include
    Boolean? prefix
    Boolean? norm_panel
    Boolean? man
    String example
  }
  command <<<
    brassI_prep_bam.pl \
      ~{example} \
      ~{true="-include" false="" include} \
      ~{true="-prefix" false="" prefix} \
      ~{true="-norm_panel" false="" norm_panel} \
      ~{true="-man" false="" man}
  >>>
  parameter_meta {
    include: "-i    Include reads where self and mate are mapped to this ref name (or unmapped)."
    prefix: "-p    Prefix all readgroup IDs with this text to force unique between samples, (e.g. T, N) - csv"
    norm_panel: "-np   For generation of normal panel input only"
    man: "-m    Full documentation."
    example: "... | brassI_prep_bam.pl -b my.bam.bas -e NC_007605,hs37d5,GL% | <some digesting process>"
  }
}