version 1.0

task RNAFragmentSizepy {
  input {
    File? input_bam_file
    File? ref_gene
    Int? mapq
    Int? frag_num
  }
  command <<<
    RNA_fragment_size_py \
      ~{if defined(input_bam_file) then ("--input " +  '"' + input_bam_file + '"') else ""} \
      ~{if defined(ref_gene) then ("--refgene " +  '"' + ref_gene + '"') else ""} \
      ~{if defined(mapq) then ("--mapq " +  '"' + mapq + '"') else ""} \
      ~{if defined(frag_num) then ("--frag-num " +  '"' + frag_num + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/rseqc:4.0.0--py38h0213d0e_0"
  }
  parameter_meta {
    input_bam_file: "Input BAM file"
    ref_gene: "Reference gene model in BED format. Must be strandard\\n12-column BED file. [required]"
    mapq: "Minimum mapping quality (phred scaled) for an\\nalignment to be called \\\"uniquely mapped\\\". default=30"
    frag_num: "Minimum number of fragment. default=3\\n"
  }
  output {
    File out_stdout = stdout()
  }
}