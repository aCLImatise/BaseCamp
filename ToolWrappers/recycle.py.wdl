version 1.0

task Recyclepy {
  input {
    File? graph
    Int? max_k
    File? bam
    Int? length
    Int? max_cv
    String? iso
    Directory? output_dir
  }
  command <<<
    recycle_py \
      ~{if defined(graph) then ("--graph " +  '"' + graph + '"') else ""} \
      ~{if defined(max_k) then ("--max_k " +  '"' + max_k + '"') else ""} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if defined(max_cv) then ("--max_CV " +  '"' + max_cv + '"') else ""} \
      ~{if defined(iso) then ("--iso " +  '"' + iso + '"') else ""} \
      ~{if defined(output_dir) then ("--output_dir " +  '"' + output_dir + '"') else ""}
  >>>
  parameter_meta {
    graph: "(spades 3.50+) assembly graph FASTG file to process;\\nrecommended for spades 3.5: before_rr.fastg, for\\nspades 3.6+:assembly_graph.fastg"
    max_k: "integer reflecting maximum k value used by the\\nassembler"
    bam: "BAM file resulting from aligning reads to contigs\\nfile, filtering for best matches"
    length: "minimum length required for reporting [default: 1000]"
    max_cv: "coefficient of variation used for pre-selection\\n[default: 0.5, higher--> less restrictive]"
    iso: "True or False value reflecting whether data sequenced\\nwas an isolated strain"
    output_dir: "Output directory\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}