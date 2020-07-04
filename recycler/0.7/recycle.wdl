version 1.0

task Recycle.py {
  input {
    String? graph
    Int? max_k
    String? bam
    Int? length
    Int? max_cv
    String? iso
    String? output_dir
  }
  command <<<
    recycle.py \
      ~{if defined(graph) then ("--graph " +  '"' + graph + '"') else ""} \
      ~{if defined(max_k) then ("--max_k " +  '"' + max_k + '"') else ""} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if defined(max_cv) then ("--max_CV " +  '"' + max_cv + '"') else ""} \
      ~{if defined(iso) then ("--iso " +  '"' + iso + '"') else ""} \
      ~{if defined(output_dir) then ("--output_dir " +  '"' + output_dir + '"') else ""}
  >>>
  parameter_meta {
    graph: "(spades 3.50+) assembly graph FASTG file to process; recommended for spades 3.5: before_rr.fastg, for spades 3.6+:assembly_graph.fastg"
    max_k: "integer reflecting maximum k value used by the assembler"
    bam: "BAM file resulting from aligning reads to contigs file, filtering for best matches"
    length: "minimum length required for reporting [default: 1000]"
    max_cv: "coefficient of variation used for pre-selection [default: 0.5, higher--> less restrictive]"
    iso: "True or False value reflecting whether data sequenced was an isolated strain"
    output_dir: "Output directory"
  }
}