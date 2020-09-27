version 1.0

task BrassIPrepBampl {
  input {
    Boolean? bas
    Boolean? prefix
    Boolean? norm_panel
    Boolean? man
    String example
    String optional
  }
  command <<<
    brassI_prep_bam_pl \
      ~{example} \
      ~{optional} \
      ~{if (bas) then "-bas" else ""} \
      ~{if (prefix) then "-prefix" else ""} \
      ~{if (norm_panel) then "-norm_panel" else ""} \
      ~{if (man) then "-man" else ""}
  >>>
  parameter_meta {
    bas: "-b    Bas statistics file for BAM being streame"
    prefix: "-p    Prefix all readgroup IDs with this text to force unique between samples, (e.g. T, N)\\n- csv"
    norm_panel: "-np   For generation of normal panel input only"
    man: "-m    Full documentation."
    example: "... | brassI_prep_bam.pl -b my.bam.bas -e NC_007605,hs37d5,GL% | <some digesting process>"
    optional: "-include      -i    Include reads where self and mate are mapped to this ref name (or unmapped)."
  }
  output {
    File out_stdout = stdout()
  }
}