version 1.0

task TransIndelBuildRNApy {
  input {
    Boolean? reference_genome_used
    Boolean? gtf_gene_annotatino
    Boolean? splice_site_size
    Boolean? mapq_cut_off
    Boolean? max_del_length
    File? o
    File? i
  }
  command <<<
    transIndel_build_RNA_py \
      ~{if (reference_genome_used) then "-r" else ""} \
      ~{if (gtf_gene_annotatino) then "-g" else ""} \
      ~{if (splice_site_size) then "-s" else ""} \
      ~{if (mapq_cut_off) then "--mapq_cutoff" else ""} \
      ~{if (max_del_length) then "--max_del_length" else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    reference_genome_used: ":reference genome used for analyzing RNAseq data (required)"
    gtf_gene_annotatino: ":gtf gene annotatino file used for analyzing RNAseq data (required)"
    splice_site_size: ":splice site half bin size,  default 20"
    mapq_cut_off: ":minimal MapQ in SAM for support SV event, default 60"
    max_del_length: ":maximum deletion length to be detected (10e6)"
    o: ""
    i: ""
  }
  output {
    File out_stdout = stdout()
    File out_o = "${in_o}"
  }
}