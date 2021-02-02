version 1.0

task Teloclip {
  input {
    File? ref_idx
    Int? min_clip
    Int? max_break
    String? motifs
    Boolean? norev
    Boolean? no_poly
    Boolean? match_any
  }
  command <<<
    teloclip \
      ~{if defined(ref_idx) then ("--refIdx " +  '"' + ref_idx + '"') else ""} \
      ~{if defined(min_clip) then ("--minClip " +  '"' + min_clip + '"') else ""} \
      ~{if defined(max_break) then ("--maxBreak " +  '"' + max_break + '"') else ""} \
      ~{if defined(motifs) then ("--motifs " +  '"' + motifs + '"') else ""} \
      ~{if (norev) then "--noRev" else ""} \
      ~{if (no_poly) then "--noPoly" else ""} \
      ~{if (match_any) then "--matchAny" else ""}
  >>>
  parameter_meta {
    ref_idx: "Path to fai index for reference fasta. Index fasta\\nusing `samtools faidx FASTA`"
    min_clip: "Require clip to extend past ref contig end by at least\\nN bases."
    max_break: "Tolerate max N unaligned bases at contig ends."
    motifs: "If set keep only reads containing given motif/s from\\ncomma delimited list of strings. By default also search\\nfor reverse complement of motifs. i.e. TTAGGG,TTAAGGG\\nwill also match CCCTAA,CCCTTAA"
    norev: "If set do NOT search for reverse complement of\\nspecified motifs."
    no_poly: "If set collapse homopolymer tracks within motifs before\\nsearching overhangs. i.e.\\n\\\"TTAGGGTTAGGGTTAGGGTTAGGGTTAGGG\\\" -> \\\"TAGTAGTAGTAGTAG\\\".\\nUseful for PacBio or ONP long reads homopolymer length\\nerrors. Default: Off"
    match_any: "If set motif match may occur in unclipped region of"
  }
  output {
    File out_stdout = stdout()
  }
}