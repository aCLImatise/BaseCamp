version 1.0

task ProcessRepeats {
  input {
    String? species
    File? lib
    Boolean? no_low
    Boolean? no_int
    Boolean? l_cam_big
    Boolean? creates_untouched_file
    File? xm
    File? ace
    Boolean? gff
    File? poly
    Boolean? no_id
    Boolean? excl_n
    Boolean? orf_two
    File? shows_alignments_align
    File? mask_source
    Boolean? mask_repeats_lower
    Boolean? xsmall
    String biology
  }
  command <<<
    ProcessRepeats \
      ~{biology} \
      ~{if defined(species) then ("-species " +  '"' + species + '"') else ""} \
      ~{if defined(lib) then ("-lib " +  '"' + lib + '"') else ""} \
      ~{if (no_low) then "-nolow" else ""} \
      ~{if (no_int) then "-noint" else ""} \
      ~{if (l_cam_big) then "-lcambig" else ""} \
      ~{if (creates_untouched_file) then "-u" else ""} \
      ~{if defined(xm) then ("-xm " +  '"' + xm + '"') else ""} \
      ~{if (ace) then "-ace" else ""} \
      ~{if (gff) then "-gff" else ""} \
      ~{if (poly) then "-poly" else ""} \
      ~{if (no_id) then "-no_id" else ""} \
      ~{if (excl_n) then "-excln" else ""} \
      ~{if (orf_two) then "-orf2" else ""} \
      ~{if (shows_alignments_align) then "-a" else ""} \
      ~{if defined(mask_source) then ("-maskSource " +  '"' + mask_source + '"') else ""} \
      ~{if (mask_repeats_lower) then "-x" else ""} \
      ~{if (xsmall) then "-xsmall" else ""}
  >>>
  parameter_meta {
    species: "Post process RepeatMasker results run on sequence from this species.\\nDefault is human."
    lib: "Skips most processing, does not produce a .tbl file unless the\\ncustome library is in the \\\">name#class\\\" format."
    no_low: "Does not display simple repeats or low_complexity DNA in the\\nannotation."
    no_int: "Skips steps specific to interspersed repeats, saving lots of time."
    l_cam_big: "Outputs ambiguous DNA transposon fragments using a lower case name.\\nAll other repeats are listed in upper case. Ambiguous fragments\\nmatch multiple repeat elements and can only be called based on\\nflanking repeat information."
    creates_untouched_file: "Creates an untouched annotation file besides the manipulated file."
    xm: "an additional output file in cross_match format (for\\nparsing)."
    ace: "Creates an additional output file in ACeDB format."
    gff: "Creates an additional Gene Feature Finding format."
    poly: "Creates an output file listing only potentially polymorphic simple\\nrepeats."
    no_id: "Leaves out final column with unique number for each element (was\\ndefault)."
    excl_n: "Calculates repeat densities excluding long stretches of Ns in the\\nquery."
    orf_two: "Results in sometimes negative coordinates for L1 elements; all L1\\nsubfamilies are aligned over the ORF2 region, sometimes improving\\ninterpretation of data."
    shows_alignments_align: "Shows the alignments in a .align output file."
    mask_source: "Instructs ProcessRepeats to mask the sequence file using the\\nannotation."
    mask_repeats_lower: "Mask repeats with a lower case 'x'."
    xsmall: "Mask repeats by making the sequence lowercase."
    biology: "AUTHORS"
  }
  output {
    File out_stdout = stdout()
    File out_xm = "${in_xm}"
    File out_ace = "${in_ace}"
    File out_poly = "${in_poly}"
    File out_shows_alignments_align = "${in_shows_alignments_align}"
  }
}