version 1.0

task Sim4db {
  input {
    Boolean? no_def_lines
    Boolean? alignments
    Boolean? poly_tails
    Boolean? cut
    String? noncanonical
    Boolean? splice_model
    Boolean? force_strand
    String? interspecies
    Boolean? set_spaced_pattern
    Boolean? set_relink_factor
    Boolean? set_first_threshold
    Boolean? set_second_threshold
    Boolean? ma
    Boolean? mp
    String? genomic
    String? cdna
    String? var_output
  }
  command <<<
    sim4db \
      ~{true="-nodeflines" false="" no_def_lines} \
      ~{true="-alignments" false="" alignments} \
      ~{true="-polytails" false="" poly_tails} \
      ~{true="-cut" false="" cut} \
      ~{if defined(noncanonical) then ("-noncanonical " +  '"' + noncanonical + '"') else ""} \
      ~{true="-splicemodel" false="" splice_model} \
      ~{true="-forcestrand" false="" force_strand} \
      ~{if defined(interspecies) then ("-interspecies " +  '"' + interspecies + '"') else ""} \
      ~{true="-Z" false="" set_spaced_pattern} \
      ~{true="-H" false="" set_relink_factor} \
      ~{true="-K" false="" set_first_threshold} \
      ~{true="-C" false="" set_second_threshold} \
      ~{true="-Ma" false="" ma} \
      ~{true="-Mp" false="" mp} \
      ~{if defined(genomic) then ("-genomic " +  '"' + genomic + '"') else ""} \
      ~{if defined(cdna) then ("-cdna " +  '"' + cdna + '"') else ""} \
      ~{if defined(var_output) then ("-output " +  '"' + var_output + '"') else ""}
  >>>
  parameter_meta {
    no_def_lines: "don't include the defline in the output"
    alignments: "print alignments"
    poly_tails: "DON'T mask poly-A and poly-T tails."
    cut: "Trim marginal exons if A/T % > x (poly-AT tails)"
    noncanonical: "'t force canonical splice sites"
    splice_model: "Use the following splice model: 0 - original sim4; 1 - GeneSplicer; 2 - Glimmer (default: 0)"
    force_strand: "Force the strand prediction to always be 'forward' or 'reverse'"
    interspecies: "sim4cc for inter-species alignments"
    set_spaced_pattern: "set the (spaced) seed pattern"
    set_relink_factor: "set the relink weight factor"
    set_first_threshold: "set the first MSP threshold"
    set_second_threshold: "set the second MSP threshold"
    ma: "set the limit of the number of MSPs allowed"
    mp: "same, as percentage of bases in cDNA NOTE:  If used, both -Ma and -Mp must be specified!"
    genomic: ""
    cdna: ""
    var_output: ""
  }
}