version 1.0

task AlfredCountRna {
  input {
    Boolean? arg_min_mapping
    Boolean? arg_strandspecific_counting
    Boolean? n
    File? arg_output_file
    Boolean? count_ambiguous_readsd
    Boolean? arg_gtfgff_file
    Boolean? arg_geneid_gtfgff
    Boolean? arg_exon_feature
    Boolean? arg_bed_file
    String aligned_dot_bam
  }
  command <<<
    alfred count_rna \
      ~{aligned_dot_bam} \
      ~{if (arg_min_mapping) then "-m" else ""} \
      ~{if (arg_strandspecific_counting) then "-s" else ""} \
      ~{if (n) then "-n" else ""} \
      ~{if (arg_output_file) then "-o" else ""} \
      ~{if (count_ambiguous_readsd) then "-a" else ""} \
      ~{if (arg_gtfgff_file) then "-g" else ""} \
      ~{if (arg_geneid_gtfgff) then "-i" else ""} \
      ~{if (arg_exon_feature) then "-f" else ""} \
      ~{if (arg_bed_file) then "-b" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/alfred:0.2.3--hf3ca161_0"
  }
  parameter_meta {
    arg_min_mapping: "[ --map-qual ] arg (=10)           min. mapping quality"
    arg_strandspecific_counting: "[ --stranded ] arg (=0)            strand-specific counting (0:\\nunstranded, 1: stranded, 2: reverse\\nstranded)"
    n: "[ --normalize ] arg (=raw)         normalization [raw|fpkm|fpkm_uq]"
    arg_output_file: "[ --outfile ] arg (=\\\"gene.count\\\")  output file"
    count_ambiguous_readsd: "[ --ambiguous ]                    count ambiguous readsd"
    arg_gtfgff_file: "[ --gtf ] arg                      gtf/gff3 file"
    arg_geneid_gtfgff: "[ --id ] arg (=gene_id)            gtf/gff3 attribute"
    arg_exon_feature: "[ --feature ] arg (=exon)          gtf/gff3 feature"
    arg_bed_file: "[ --bed ] arg                      bed file"
    aligned_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
    File out_arg_output_file = "${in_arg_output_file}"
  }
}