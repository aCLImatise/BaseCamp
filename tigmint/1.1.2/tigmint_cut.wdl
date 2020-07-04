version 1.0

task TigmintCut {
  input {
    String? fast_a_out
    String? bed_out
    String? processes
    String? window
    String? spanning
    String? trim
    String fast_a
    String bed
  }
  command <<<
    tigmint-cut \
      ~{fast_a} \
      ~{bed} \
      ~{if defined(fast_a_out) then ("--fastaout " +  '"' + fast_a_out + '"') else ""} \
      ~{if defined(bed_out) then ("--bedout " +  '"' + bed_out + '"') else ""} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""} \
      ~{if defined(window) then ("--window " +  '"' + window + '"') else ""} \
      ~{if defined(spanning) then ("--spanning " +  '"' + spanning + '"') else ""} \
      ~{if defined(trim) then ("--trim " +  '"' + trim + '"') else ""}
  >>>
  parameter_meta {
    fast_a_out: "The output FASTA file."
    bed_out: "The output BED file. Default is the output FASTA filename plus .bed"
    processes: "Number of parallel processes to launch [8]"
    window: "Window size used to check for spanning molecules (bp) [1000]"
    spanning: "Spanning molecules threshold (no misassembly in window if num. spanning molecules >= n [2])"
    trim: "Number of base pairs to trim at contig cuts (bp) [0]"
    fast_a: "Reference genome fasta file (must have FAI index generated)"
    bed: "Sorted bed file of molecule extents"
  }
}