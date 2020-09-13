version 1.0

task Bdf2gdfontpl {
  input {
    Boolean? hlucidatypewriterboldrnormalsansmiso_
    String gd_dot
    Int one_zero_dot
    String limitations
    String gd
  }
  command <<<
    bdf2gdfont_pl \
      ~{gd_dot} \
      ~{one_zero_dot} \
      ~{limitations} \
      ~{gd} \
      ~{if (hlucidatypewriterboldrnormalsansmiso_) then "-B" else ""}
  >>>
  parameter_meta {
    hlucidatypewriterboldrnormalsansmiso_: "&H-LucidaTypewriter-Bold-R-Normal-Sans-18-180-75-75-M-110-ISO8859-"
    gd_dot: "SYNOPSIS\\n% bdf2gdfont.pl courR12.bdf > courR12.fnt"
    one_zero_dot: "3. Using the pcf2bdf utility."
    limitations: "This font converter only works with fixed-width fonts. If used with a\\nTrueType or proportional font it will die with an error message."
    gd: "AUTHOR"
  }
  output {
    File out_stdout = stdout()
  }
}