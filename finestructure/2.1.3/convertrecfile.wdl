version 1.0

task Convertrecfile.pl {
  input {
    Boolean? val_specify_val
    Boolean? _verbose_mode
    Boolean? detailed_help_wide
  }
  command <<<
    convertrecfile.pl \
      ~{true="-M" false="" val_specify_val} \
      ~{true="-v" false="" _verbose_mode} \
      ~{true="-H" false="" detailed_help_wide}
  >>>
  parameter_meta {
    val_specify_val: ": <val>:      Specify the major mode. <val> can be: hapmap: The hapmap format is specified as 4 columns: chromosome, Position(BP) Rate(cM/Mb) Map(cM) This uses columns 2 and 4 to reconstruct the map. plain:  (default) Assumes that the data are specified in 2 columns, Position(BP) Rate(M/b) This is the mode assumed chromopainter (note: the rate is Morgans per base)."
    _verbose_mode: ":            Verbose mode."
    detailed_help_wide: ":             Detailed help on the wide variety of different options, including different column separators, different units, reading of Culmulative vs non-culmulative distributions, and handling maps that do not cover the full range of the SNPs."
  }
}