version 1.0

task RNAFragmentSize.py {
  input {
    String? input_bam_file
    String? ref_gene
    String? mapq
    String? frag_num
  }
  command <<<
    RNA_fragment_size.py \
      ~{if defined(input_bam_file) then ("--input " +  '"' + input_bam_file + '"') else ""} \
      ~{if defined(ref_gene) then ("--refgene " +  '"' + ref_gene + '"') else ""} \
      ~{if defined(mapq) then ("--mapq " +  '"' + mapq + '"') else ""} \
      ~{if defined(frag_num) then ("--frag-num " +  '"' + frag_num + '"') else ""}
  >>>
  parameter_meta {
    input_bam_file: "Input BAM file"
    ref_gene: "Reference gene model in BED format. Must be strandard 12-column BED file. [required]"
    mapq: "Minimum mapping quality (phred scaled) for an alignment to be called \"uniquely mapped\". default=30"
    frag_num: "Minimum number of fragment. default=3"
  }
}