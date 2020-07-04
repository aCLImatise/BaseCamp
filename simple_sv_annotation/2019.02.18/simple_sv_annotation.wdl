version 1.0

task SimpleSvAnnotation.py {
  input {
    String? gene_list
    String? known_fusion_pairs
    String? known_fusion_promiscuous
    String? output_file_name
    String? exon_nums
    String vcf
  }
  command <<<
    simple_sv_annotation.py \
      ~{vcf} \
      ~{if defined(gene_list) then ("--gene_list " +  '"' + gene_list + '"') else ""} \
      ~{if defined(known_fusion_pairs) then ("--known_fusion_pairs " +  '"' + known_fusion_pairs + '"') else ""} \
      ~{if defined(known_fusion_promiscuous) then ("--known_fusion_promiscuous " +  '"' + known_fusion_promiscuous + '"') else ""} \
      ~{if defined(output_file_name) then ("--output " +  '"' + output_file_name + '"') else ""} \
      ~{if defined(exon_nums) then ("--exonNums " +  '"' + exon_nums + '"') else ""}
  >>>
  parameter_meta {
    gene_list: "File with names of genes (one per line) for prioritisation"
    known_fusion_pairs: "File with known fusion gene pairs, one pair per line delimited by comma"
    known_fusion_promiscuous: "File with known promiscuous fusion genes, one gene name per line"
    output_file_name: "Output file name (must not exist). Does not support bgzipped output. Use \"-\" for stdout. [<invcf>.simpleann.vcf]"
    exon_nums: "List of custom exon numbers. A transcript listed in this file will be annotated with the numbers found in this file, not the numbers found in the snpEff result"
    vcf: "VCF file with snpEff annotations"
  }
}