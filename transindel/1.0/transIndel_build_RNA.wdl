version 1.0

task TransIndelBuildRNA.py {
  input {
    Boolean? reference_genome_used
    Boolean? gtf_gene_annotatino
    Boolean? splice_site_default
    Boolean? mapq_cut_off
    Boolean? max_del_length
    String? i
    String? o
    String? opts
  }
  command <<<
    transIndel_build_RNA.py \
      ~{opts} \
      ~{true="-r" false="" reference_genome_used} \
      ~{true="-g" false="" gtf_gene_annotatino} \
      ~{true="-s" false="" splice_site_default} \
      ~{true="--mapq_cutoff" false="" mapq_cut_off} \
      ~{true="--max_del_length" false="" max_del_length} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    reference_genome_used: ":reference genome used for analyzing RNAseq data (required)"
    gtf_gene_annotatino: ":gtf gene annotatino file used for analyzing RNAseq data (required)"
    splice_site_default: ":splice site half bin size,  default 20"
    mapq_cut_off: ":minimal MapQ in SAM for support SV event, default 60"
    max_del_length: ":maximum deletion length to be detected (10e6)"
    i: ""
    o: ""
    opts: ""
  }
}