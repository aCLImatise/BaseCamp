version 1.0

task MatchWAnnotationpy {
  input {
    Int? min_query_overlap
    Int? min_gene_overlap_bp
    Int? min_gene_overlap
    String gene_annotation_file
    String input_fast_a
    String input_sam
    String output_prefix
  }
  command <<<
    match_w_annotation_py \
      ~{gene_annotation_file} \
      ~{input_fast_a} \
      ~{input_sam} \
      ~{output_prefix} \
      ~{if defined(min_query_overlap) then ("--min_query_overlap " +  '"' + min_query_overlap + '"') else ""} \
      ~{if defined(min_gene_overlap_bp) then ("--min_gene_overlap_bp " +  '"' + min_gene_overlap_bp + '"') else ""} \
      ~{if defined(min_gene_overlap) then ("--min_gene_overlap " +  '"' + min_gene_overlap + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    min_query_overlap: "Minimum query overlap, in ratio (default: 0.0)"
    min_gene_overlap_bp: "Minimum gene overlap, in bp (default: 0 bp)"
    min_gene_overlap: "Minimum gene overlap, in ratio (default: 0.5)\\n"
    gene_annotation_file: "Gene Annotation Text File"
    input_fast_a: "Input Fasta"
    input_sam: "Input SAM"
    output_prefix: "Output Prefix"
  }
  output {
    File out_stdout = stdout()
  }
}