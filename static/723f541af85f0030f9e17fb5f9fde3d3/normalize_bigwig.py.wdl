version 1.0

task NormalizeBigwigpy {
  input {
    File? bw_file
    File? output_wig_file
    Int? wig_sum
    String? ref_gene
    Int? chunk
    String? format
  }
  command <<<
    normalize_bigwig_py \
      ~{if defined(bw_file) then ("--bwfile " +  '"' + bw_file + '"') else ""} \
      ~{if defined(output_wig_file) then ("--output " +  '"' + output_wig_file + '"') else ""} \
      ~{if defined(wig_sum) then ("--wigsum " +  '"' + wig_sum + '"') else ""} \
      ~{if defined(ref_gene) then ("--refgene " +  '"' + ref_gene + '"') else ""} \
      ~{if defined(chunk) then ("--chunk " +  '"' + chunk + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/rseqc:4.0.0--py38h0213d0e_0"
  }
  parameter_meta {
    bw_file: "Input BigWig file. [required]"
    output_wig_file: "Output wig file. [required]"
    wig_sum: "Specified wigsum. 100000000 equals to coverage of 1\\nmillion 100nt reads. default=100000000  [optional]"
    ref_gene: "Reference gene model in bed format. [optional]"
    chunk: "Chromosome chunk size. Each chomosome will be cut into\\nsamll chunks of this size. Decrease chunk size will\\nsave more RAM. default=500000 (bp) [optional]"
    format: "Output format. either \\\"wig\\\" or \\\"bgr\\\". \\\"bgr\\\" save disk\\nspace but make program slower. default=bgr\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_wig_file = "${in_output_wig_file}"
  }
}