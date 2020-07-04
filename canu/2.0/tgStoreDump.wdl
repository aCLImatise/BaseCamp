version 1.0

task TgStoreDump {
  input {
    String? path_sequence_store
    String? path_tigstore_version
    String? tig
    Boolean? unassembled
    Boolean? contigs
    Boolean? repeats
    Boolean? bubbles
    Boolean? circular
    Int? n_reads
    Int? length
    String? coverage
    Boolean? status
    Boolean? tig_s
    Boolean? consensus
    Boolean? multi_align
    Boolean? sizes
    Boolean? depth
    Boolean? overlap
    Boolean? overlap_histogram
    String v
    String? opts
  }
  command <<<
    tgStoreDump \
      ~{v} \
      ~{opts} \
      ~{if defined(path_sequence_store) then ("-S " +  '"' + path_sequence_store + '"') else ""} \
      ~{if defined(path_tigstore_version) then ("-T " +  '"' + path_tigstore_version + '"') else ""} \
      ~{if defined(tig) then ("-tig " +  '"' + tig + '"') else ""} \
      ~{true="-unassembled" false="" unassembled} \
      ~{true="-contigs" false="" contigs} \
      ~{true="-repeats" false="" repeats} \
      ~{true="-bubbles" false="" bubbles} \
      ~{true="-circular" false="" circular} \
      ~{if defined(n_reads) then ("-nreads " +  '"' + n_reads + '"') else ""} \
      ~{if defined(length) then ("-length " +  '"' + length + '"') else ""} \
      ~{if defined(coverage) then ("-coverage " +  '"' + coverage + '"') else ""} \
      ~{true="-status" false="" status} \
      ~{true="-tigs" false="" tig_s} \
      ~{true="-consensus" false="" consensus} \
      ~{true="-multialign" false="" multi_align} \
      ~{true="-sizes" false="" sizes} \
      ~{true="-depth" false="" depth} \
      ~{true="-overlap" false="" overlap} \
      ~{true="-overlaphistogram" false="" overlap_histogram}
  >>>
  parameter_meta {
    path_sequence_store: "path to the sequence store"
    path_tigstore_version: "<v>       path to the tigStore, version, to use"
    tig: "[-B]              only dump tigs between ids A and B"
    unassembled: "only dump tigs that are 'unassembled'"
    contigs: "only dump tigs that are 'contigs'"
    repeats: "only dump tigs that are (probably) repeats"
    bubbles: "only dump tigs that are (probably) bubbles"
    circular: "only dump tigs that are (probably) circular"
    n_reads: "max         only dump tigs with between min and max reads"
    length: "max         only dump tigs with length between 'min' and 'max' bases"
    coverage: "C g G       only dump tigs with between fraction g and G at coverage between c and C example:  -coverage 10 inf 0.5 1.0 would report tigs where half of the bases are at 10+ times coverage."
    status: "the number of tigs in the store"
    tig_s: "a list of tigs, and some information about them"
    consensus: "[opts]       the consensus sequence, with options: -reverse          reverse complement the sequence -fasta            report sequences in FASTA format (the default) -fastq            report sequences in FASTQ format"
    multi_align: "[opts]      the full multialignment, output is to stdout -w width          width of the page -s spacing        spacing between reads on the same line"
    sizes: "[opts]           size statistics -s genomesize     denominator to use for n50 computation"
    depth: "[opts]           a histogram of depths -single           one histogram per tig"
    overlap: "read overlaps -thin overlap     report regions where the (thickest) read overlap is less than 'overlap' bases"
    overlap_histogram: "a histogram of the thickest overlaps used -o outputPrefix   write plots to 'outputPrefix.*' in the current directory"
    v: ""
    opts: ""
  }
}