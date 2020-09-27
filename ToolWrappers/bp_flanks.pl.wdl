version 1.0

task BpFlankspl {
  input {
    Boolean? position_uses_table
    Int? define_region_asnp
    Boolean? defaults_length_nucleotides
    File? flank_len
    String var_4
    String var_5
    String var_6
    String var_7
    String var_8
    String var_9
    String var_10
    String var_11
    String var_12
    String var_13
    String var_14
    String var_15
    String var_16
    String var_17
    String var_18
    String var_19
    String var_20
    String var_21
    String var_22
    String var_23
  }
  command <<<
    bp_flanks_pl \
      ~{var_4} \
      ~{var_5} \
      ~{var_6} \
      ~{var_7} \
      ~{var_8} \
      ~{var_9} \
      ~{var_10} \
      ~{var_11} \
      ~{var_12} \
      ~{var_13} \
      ~{var_14} \
      ~{var_15} \
      ~{var_16} \
      ~{var_17} \
      ~{var_18} \
      ~{var_19} \
      ~{var_20} \
      ~{var_21} \
      ~{var_22} \
      ~{var_23} \
      ~{if (position_uses_table) then "-p" else ""} \
      ~{if defined(define_region_asnp) then ("--position " +  '"' + define_region_asnp + '"') else ""} \
      ~{if (defaults_length_nucleotides) then "-f" else ""} \
      ~{if defined(flank_len) then ("--flanklen " +  '"' + flank_len + '"') else ""}
  >>>
  parameter_meta {
    position_uses_table: "Position uses simple nucleotide sequence feature table"
    define_region_asnp: "to define the region of interest, typically a\\nSNP or microsatellite repeat around which the flanks are\\ndefined.\\nThere can be more than one position option or you can\\ngive a comma separated list to one position option.\\nThe format of a position is:\\n[id:] int | range | in-between [-]\\nThe optional id is the name you want to call the new\\nsequence. If it not given in joins running number to the\\nentry name with an underscore.\\nThe position is either a point (e.g. 234), a range (e.g\\n250..300) or insertion point between nucleotides\\n(e.g. 234^235)\\nIf the position is not completely within the source\\nsequence the output sequence will be truncated and it\\nwill print a warning.\\nThe optional hyphen [-] at the end of the position\\nindicates that that you want the retrieved sequence to be\\nin the opposite strand."
    defaults_length_nucleotides: "Defaults to 100. This is the length of the nucleotides"
    flank_len: "retrieved on both sides of the given position.\\nIf the source file does not contain"
    var_4: "SYNOPSIS\\nbp_flanks --position POS [-p POS ...]  [--flanklen INT]\\naccession | filename"
    var_5: "ttttgtttttttcttttaagatctgggcatcttttgaatCtacccttcaagtattaagag"
    var_6: "tttgaggctgtcagagcgct"
    var_7: "head1 FEEDBACK"
    var_8: "- General discussion"
    var_9: "SYNOPSIS\\nbp_flanks --position POS [-p POS ...]  [--flanklen INT]\\naccession | filename"
    var_10: "ttttgtttttttcttttaagatctgggcatcttttgaatCtacccttcaagtattaagag"
    var_11: "tttgaggctgtcagagcgct"
    var_12: "head1 FEEDBACK"
    var_13: "- General discussion"
    var_14: "SYNOPSIS\\nbp_flanks --position POS [-p POS ...]  [--flanklen INT]\\naccession | filename"
    var_15: "ttttgtttttttcttttaagatctgggcatcttttgaatCtacccttcaagtattaagag"
    var_16: "tttgaggctgtcagagcgct"
    var_17: "head1 FEEDBACK"
    var_18: "- General discussion"
    var_19: "SYNOPSIS\\nbp_flanks --position POS [-p POS ...]  [--flanklen INT]\\naccession | filename"
    var_20: "ttttgtttttttcttttaagatctgggcatcttttgaatCtacccttcaagtattaagag"
    var_21: "tttgaggctgtcagagcgct"
    var_22: "head1 FEEDBACK"
    var_23: "- General discussion"
  }
  output {
    File out_stdout = stdout()
  }
}