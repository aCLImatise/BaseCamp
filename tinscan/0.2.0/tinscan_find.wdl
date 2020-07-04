version 1.0

task TinscanFind {
  input {
    String? in_file
    String? outdir
    String? gff_out
    Boolean? no_flanks
    Int? max_tsd
    Int? max_insert
    Int? min_insert
    String? q_gap
    Int? mini_dent
    Int? max_ident_diff
  }
  command <<<
    tinscan-find \
      ~{if defined(in_file) then ("--infile " +  '"' + in_file + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(gff_out) then ("--gffOut " +  '"' + gff_out + '"') else ""} \
      ~{true="--noflanks" false="" no_flanks} \
      ~{if defined(max_tsd) then ("--maxTSD " +  '"' + max_tsd + '"') else ""} \
      ~{if defined(max_insert) then ("--maxInsert " +  '"' + max_insert + '"') else ""} \
      ~{if defined(min_insert) then ("--minInsert " +  '"' + min_insert + '"') else ""} \
      ~{if defined(q_gap) then ("--qGap " +  '"' + q_gap + '"') else ""} \
      ~{if defined(mini_dent) then ("--minIdent " +  '"' + mini_dent + '"') else ""} \
      ~{if defined(max_ident_diff) then ("--maxIdentDiff " +  '"' + max_ident_diff + '"') else ""}
  >>>
  parameter_meta {
    in_file: "Input file containing tab delimited LASTZ alignment data."
    outdir: "Optional: Directory to write output to."
    gff_out: "Write features to this file as gff3."
    no_flanks: "If set, do not report flanking hit regions in GFF."
    max_tsd: "Maximum overlap of insertion flanking sequences in QUERY genome to be considered as target site duplication. Flank pairs with greater overlaps will be discarded Note: Setting this value too high may result in tandem duplications in the target genome being falsely classified as insertion events."
    max_insert: "Maximum length of sequence to consider as an insertion event."
    min_insert: "Minimum length of sequence to consider as an insertion event. Note: If too short may detect small non-TE indels."
    q_gap: "Maximum gap allowed between aligned flanks in QUERY sequence. Equivalent to target sequence deleted upon insertion event."
    mini_dent: "Minimum identity for a hit to be considered."
    max_ident_diff: "Maximum divergence in identity (to query) allowed between insert flanking sequences."
  }
}