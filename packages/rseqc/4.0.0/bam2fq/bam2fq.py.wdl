version 1.0

task Bam2fqpy {
  input {
    File? input_file
    String? out_prefix
    Boolean? single_end
    String sequencing_dot
  }
  command <<<
    bam2fq_py \
      ~{sequencing_dot} \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if defined(out_prefix) then ("--out-prefix " +  '"' + out_prefix + '"') else ""} \
      ~{if (single_end) then "--single-end" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/rseqc:4.0.0--py38h0213d0e_0"
  }
  parameter_meta {
    input_file: "Alignment file in BAM or SAM format."
    out_prefix: "Prefix of output fastq files(s)."
    single_end: "Specificy '-s' or '--single-end' for single-end"
    sequencing_dot: "-c, --compress        Specificy '-c' or '--compress' to compress output"
  }
  output {
    File out_stdout = stdout()
  }
}