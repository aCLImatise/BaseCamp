version 1.0

task SimpleSvAnnotationpy {
  input {
    File? gene_list
    File? known_fusion_pairs
    File? known_fusion_promiscuous
    File? output_file_name
    File? exon_nums
  }
  command <<<
    simple_sv_annotation_py \
      ~{if defined(gene_list) then ("--gene_list " +  '"' + gene_list + '"') else ""} \
      ~{if defined(known_fusion_pairs) then ("--known_fusion_pairs " +  '"' + known_fusion_pairs + '"') else ""} \
      ~{if defined(known_fusion_promiscuous) then ("--known_fusion_promiscuous " +  '"' + known_fusion_promiscuous + '"') else ""} \
      ~{if defined(output_file_name) then ("--output " +  '"' + output_file_name + '"') else ""} \
      ~{if defined(exon_nums) then ("--exonNums " +  '"' + exon_nums + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    gene_list: "File with names of genes (one per line) for\\nprioritisation"
    known_fusion_pairs: "File with known fusion gene pairs, one pair per line\\ndelimited by comma"
    known_fusion_promiscuous: "File with known promiscuous fusion genes, one gene\\nname per line"
    output_file_name: "Output file name (must not exist). Does not support\\nbgzipped output. Use \\\"-\\\" for stdout.\\n[<invcf>.simpleann.vcf]"
    exon_nums: "List of custom exon numbers. A transcript listed in\\nthis file will be annotated with the numbers found in\\nthis file, not the numbers found in the snpEff result\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
  }
}