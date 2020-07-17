version 1.0

task ProcessRepeats {
  input {
    Boolean? ace
    Boolean? gff
    Boolean? poly
    Boolean? no_id
    Boolean? excl_n
    Boolean? orf_two
    Boolean? shows_alignments_align
    String? mask_source
    Boolean? mask_repeats_lower
    Boolean? xsmall
  }
  command <<<
    ProcessRepeats \
      ~{true="-ace" false="" ace} \
      ~{true="-gff" false="" gff} \
      ~{true="-poly" false="" poly} \
      ~{true="-no_id" false="" no_id} \
      ~{true="-excln" false="" excl_n} \
      ~{true="-orf2" false="" orf_two} \
      ~{true="-a" false="" shows_alignments_align} \
      ~{if defined(mask_source) then ("-maskSource " +  '"' + mask_source + '"') else ""} \
      ~{true="-x" false="" mask_repeats_lower} \
      ~{true="-xsmall" false="" xsmall}
  >>>
  parameter_meta {
    ace: "Creates an additional output file in ACeDB format."
    gff: "Creates an additional Gene Feature Finding format."
    poly: "Creates an output file listing only potentially polymorphic simple repeats."
    no_id: "Leaves out final column with unique number for each element (was default)."
    excl_n: "Calculates repeat densities excluding long stretches of Ns in the query."
    orf_two: "Results in sometimes negative coordinates for L1 elements; all L1 subfamilies are aligned over the ORF2 region, sometimes improving interpretation of data."
    shows_alignments_align: "Shows the alignments in a .align output file."
    mask_source: "Instructs ProcessRepeats to mask the sequence file using the annotation."
    mask_repeats_lower: "Mask repeats with a lower case 'x'."
    xsmall: "Mask repeats by making the sequence lowercase."
  }
}