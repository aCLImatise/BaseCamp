version 1.0

task Bam2fq.py {
  input {
    String? input_file
    String? out_prefix
    Boolean? single_end
    Boolean? compress
  }
  command <<<
    bam2fq.py \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if defined(out_prefix) then ("--out-prefix " +  '"' + out_prefix + '"') else ""} \
      ~{true="--single-end" false="" single_end} \
      ~{true="--compress" false="" compress}
  >>>
  parameter_meta {
    input_file: "Alignment file in BAM or SAM format."
    out_prefix: "Prefix of output fastq files(s)."
    single_end: "Specificy '-s' or '--single-end' for single-end sequencing."
    compress: "Specificy '-c' or '--compress' to compress output fastq file(s) using 'gzip' command."
  }
}