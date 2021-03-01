version 1.0

task TgStoreDump {
  input {
    File? path_sequence_store
    File? path_tigstore_version
    String? tig
    Boolean? unassembled
    Boolean? contigs
    Boolean? repeats
    Boolean? bubbles
    Boolean? circular
    Int? n_reads
    Int? length
    Float? coverage
    Boolean? status
    Boolean? tig_s
    Boolean? consensus
    Boolean? reverse
    Boolean? fast_a
    Boolean? fast_q
    Boolean? multi_align
    String? width_of_page
    String? spacing_reads_same
    Boolean? sizes
    Directory? write_plots_current
    Boolean? depth
    Boolean? single
    Boolean? overlap
    String? thin
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
      ~{if (unassembled) then "-unassembled" else ""} \
      ~{if (contigs) then "-contigs" else ""} \
      ~{if (repeats) then "-repeats" else ""} \
      ~{if (bubbles) then "-bubbles" else ""} \
      ~{if (circular) then "-circular" else ""} \
      ~{if defined(n_reads) then ("-nreads " +  '"' + n_reads + '"') else ""} \
      ~{if defined(length) then ("-length " +  '"' + length + '"') else ""} \
      ~{if defined(coverage) then ("-coverage " +  '"' + coverage + '"') else ""} \
      ~{if (status) then "-status" else ""} \
      ~{if (tig_s) then "-tigs" else ""} \
      ~{if (consensus) then "-consensus" else ""} \
      ~{if (reverse) then "-reverse" else ""} \
      ~{if (fast_a) then "-fasta" else ""} \
      ~{if (fast_q) then "-fastq" else ""} \
      ~{if (multi_align) then "-multialign" else ""} \
      ~{if defined(width_of_page) then ("-w " +  '"' + width_of_page + '"') else ""} \
      ~{if defined(spacing_reads_same) then ("-s " +  '"' + spacing_reads_same + '"') else ""} \
      ~{if (sizes) then "-sizes" else ""} \
      ~{if defined(write_plots_current) then ("-o " +  '"' + write_plots_current + '"') else ""} \
      ~{if (depth) then "-depth" else ""} \
      ~{if (single) then "-single" else ""} \
      ~{if (overlap) then "-overlap" else ""} \
      ~{if defined(thin) then ("-thin " +  '"' + thin + '"') else ""} \
      ~{if (overlap_histogram) then "-overlaphistogram" else ""}
  >>>
  runtime {
    docker: "None"
  }
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
    coverage: "C g G       only dump tigs with between fraction g and G at coverage between c and C\\nexample:  -coverage 10 inf 0.5 1.0 would report tigs where half of the\\nbases are at 10+ times coverage."
    status: "the number of tigs in the store"
    tig_s: "a list of tigs, and some information about them"
    consensus: "[opts]       the consensus sequence, with options:"
    reverse: "reverse complement the sequence"
    fast_a: "report sequences in FASTA format (the default)"
    fast_q: "report sequences in FASTQ format"
    multi_align: "[opts]      the full multialignment, output is to stdout"
    width_of_page: "width of the page"
    spacing_reads_same: "spacing between reads on the same line"
    sizes: "[opts]           size statistics"
    write_plots_current: "write plots to 'outputPrefix.*' in the current directory"
    depth: "[opts]           a histogram of depths"
    single: "one histogram per tig"
    overlap: "read overlaps"
    thin: "report regions where the (thickest) read overlap is less than 'overlap' bases"
    overlap_histogram: "a histogram of the thickest overlaps used"
    v: ""
    opts: ""
  }
  output {
    File out_stdout = stdout()
  }
}