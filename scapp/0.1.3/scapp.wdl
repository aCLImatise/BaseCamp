version 1.0

task Scapp {
  input {
    File? graph
    Directory? output_dir
    Int? max_k
    Int? min_length
    Int? max_cv
    Int? num_processes
    Boolean? use_scores
    Boolean? use_gene_hits
    File? bam
    Int? reads_one
    Int? reads_two
    File? plas_class
    File? plas_flow
    Float? classification_thresh
    Int? gene_match_thresh
    Float? self_loop_score_thresh
    Float? self_loop_mate_thresh
    Float? chromosome_score_thresh
    Int? chromosome_len_thresh
    Float? plasmid_score_thresh
    Int? plasmid_len_thresh
    Float? good_cyc_dominated_thresh
  }
  command <<<
    scapp \
      ~{if defined(graph) then ("--graph " +  '"' + graph + '"') else ""} \
      ~{if defined(output_dir) then ("--output_dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(max_k) then ("--max_k " +  '"' + max_k + '"') else ""} \
      ~{if defined(min_length) then ("--min_length " +  '"' + min_length + '"') else ""} \
      ~{if defined(max_cv) then ("--max_CV " +  '"' + max_cv + '"') else ""} \
      ~{if defined(num_processes) then ("--num_processes " +  '"' + num_processes + '"') else ""} \
      ~{if defined(use_scores) then ("--use_scores " +  '"' + use_scores + '"') else ""} \
      ~{if defined(use_gene_hits) then ("--use_gene_hits " +  '"' + use_gene_hits + '"') else ""} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(reads_one) then ("--reads1 " +  '"' + reads_one + '"') else ""} \
      ~{if defined(reads_two) then ("--reads2 " +  '"' + reads_two + '"') else ""} \
      ~{if defined(plas_class) then ("--plasclass " +  '"' + plas_class + '"') else ""} \
      ~{if defined(plas_flow) then ("--plasflow " +  '"' + plas_flow + '"') else ""} \
      ~{if defined(classification_thresh) then ("--classification_thresh " +  '"' + classification_thresh + '"') else ""} \
      ~{if defined(gene_match_thresh) then ("--gene_match_thresh " +  '"' + gene_match_thresh + '"') else ""} \
      ~{if defined(self_loop_score_thresh) then ("--selfloop_score_thresh " +  '"' + self_loop_score_thresh + '"') else ""} \
      ~{if defined(self_loop_mate_thresh) then ("--selfloop_mate_thresh " +  '"' + self_loop_mate_thresh + '"') else ""} \
      ~{if defined(chromosome_score_thresh) then ("--chromosome_score_thresh " +  '"' + chromosome_score_thresh + '"') else ""} \
      ~{if defined(chromosome_len_thresh) then ("--chromosome_len_thresh " +  '"' + chromosome_len_thresh + '"') else ""} \
      ~{if defined(plasmid_score_thresh) then ("--plasmid_score_thresh " +  '"' + plasmid_score_thresh + '"') else ""} \
      ~{if defined(plasmid_len_thresh) then ("--plasmid_len_thresh " +  '"' + plasmid_len_thresh + '"') else ""} \
      ~{if defined(good_cyc_dominated_thresh) then ("--good_cyc_dominated_thresh " +  '"' + good_cyc_dominated_thresh + '"') else ""}
  >>>
  parameter_meta {
    graph: "Assembly graph FASTG file to process"
    output_dir: "Output directory"
    max_k: "Integer reflecting maximum k value used by the\\nassembler"
    min_length: "Minimum length required for reporting [default: 1000]"
    max_cv: "Coefficient of variation used for pre-selection\\n[default: 0.5, higher--> less restrictive]"
    num_processes: "Number of processes to use"
    use_scores: "Boolean flag of whether to use sequence classification\\nscores in plasmid assembly"
    use_gene_hits: "Boolean flag of whether to use plasmid-specific gene\\nhits in plasmid assembly"
    bam: "BAM file resulting from aligning reads to contigs\\nfile, filtering for best matches"
    reads_one: "1st paired-end read file path"
    reads_two: "1st paired-end read file path"
    plas_class: "PlasClass score file with scores of the assembly graph\\nnodes"
    plas_flow: "PlasFlow score file with scores of the assembly graph\\nnodes"
    classification_thresh: "threshold for classifying potential plasmid [0.5]"
    gene_match_thresh: "threshold for % identity and fraction of length to\\nmatch plasmid genes [0.75]"
    self_loop_score_thresh: "threshold for self-loop plasmid score [0.9]"
    self_loop_mate_thresh: "threshold for self-loop off loop mates [0.1]"
    chromosome_score_thresh: "threshold for high confidence chromosome node score\\n[0.2]"
    chromosome_len_thresh: "threshold for high confidence chromosome node length\\n[10000]"
    plasmid_score_thresh: "threshold for high confidence plasmid node score [0.9]"
    plasmid_len_thresh: "threshold for high confidence plasmid node length\\n[10000]"
    good_cyc_dominated_thresh: "threshold for # of mate-pairs off the cycle in\\ndominated node [0.5]\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}