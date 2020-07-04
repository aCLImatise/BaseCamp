version 1.0

task Teloclip {
  input {
    String? ref_idx
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
      ~{true="--noRev" false="" norev} \
      ~{true="--noPoly" false="" no_poly} \
      ~{true="--matchAny" false="" match_any}
  >>>
  parameter_meta {
    ref_idx: "Path to fai index for reference fasta. Index fasta using `samtools faidx FASTA`"
    min_clip: "Require clip to extend past ref contig end by at least N bases."
    max_break: "Tolerate max N unaligned bases at contig ends."
    motifs: "If set keep only reads containing given motif/s from comma delimited list of strings. By default also search for reverse complement of motifs. i.e. TTAGGG,TTAAGGG will also match CCCTAA,CCCTTAA"
    norev: "If set do NOT search for reverse complement of specified motifs."
    no_poly: "If set collapse homopolymer tracks within motifs before searching overhangs. i.e. \"TTAGGGTTAGGGTTAGGGTTAGGGTTAGGG\" -> \"TAGTAGTAGTAGTAG\". Useful for PacBio or ONP long reads homopolymer length errors. Default: Off"
    match_any: "If set motif match may occur in unclipped region of alignment."
  }
}