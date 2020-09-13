version 1.0

task Tigmintcut {
  input {
    File? fast_a_out
    File? bed_out
    Int? processes
    Int? window
    Int? spanning
    Int? trim
    String fast_a
    String bed
  }
  command <<<
    tigmint_cut \
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
    bed_out: "The output BED file. Default is the output FASTA\\nfilename plus .bed"
    processes: "Number of parallel processes to launch [8]"
    window: "Window size used to check for spanning molecules (bp)\\n[1000]"
    spanning: "Spanning molecules threshold (no misassembly in window\\nif num. spanning molecules >= n [2])"
    trim: "Number of base pairs to trim at contig cuts (bp) [0]"
    fast_a: "Reference genome fasta file (must have FAI index\\ngenerated)"
    bed: "Sorted bed file of molecule extents"
  }
  output {
    File out_stdout = stdout()
    File out_fast_a_out = "${in_fast_a_out}"
    File out_bed_out = "${in_bed_out}"
  }
}