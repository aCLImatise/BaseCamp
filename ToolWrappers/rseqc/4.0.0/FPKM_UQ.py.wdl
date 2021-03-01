version 1.0

task FPKMUQpy {
  input {
    File? bam
    File? gtf
    File? info
    File? prefix_output_file
    Boolean? log_two
  }
  command <<<
    FPKM_UQ_py \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(gtf) then ("--gtf " +  '"' + gtf + '"') else ""} \
      ~{if defined(info) then ("--info " +  '"' + info + '"') else ""} \
      ~{if defined(prefix_output_file) then ("--output " +  '"' + prefix_output_file + '"') else ""} \
      ~{if (log_two) then "--log2" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/rseqc:4.0.0--py38h0213d0e_0"
  }
  parameter_meta {
    bam: "Alignment file in BAM format. BAM file shoul be sorted\\nand indexed. Ideally, the BAM file should generaet\\nfrom the TCGA RNA-seq analysis workflow described here\\nhttps://docs.gdc.cancer.gov/Data/Bioinformatics_Pipeli\\nnes/Expression_mRNA_Pipeline/."
    gtf: "Gene model in GTF format."
    info: "Gene model information file."
    prefix_output_file: "The prefix of the output file."
    log_two: "Convert FPKM and FPKM-UQ values into log2 (x+1) scale.\\nA pseudo count 1 will be added to each\\ngene/transcript.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_prefix_output_file = "${in_prefix_output_file}"
  }
}