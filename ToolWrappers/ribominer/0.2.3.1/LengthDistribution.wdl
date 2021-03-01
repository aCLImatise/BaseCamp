version 1.0

task LengthDistribution {
  input {
    File? sequence_fastq_file
    String? ot_put_prefix
    File? format
  }
  command <<<
    LengthDistribution \
      ~{if defined(sequence_fastq_file) then ("--input " +  '"' + sequence_fastq_file + '"') else ""} \
      ~{if defined(ot_put_prefix) then ("--otput_prefix " +  '"' + ot_put_prefix + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ribominer:0.2.3.1--pyh3252c3a_0"
  }
  parameter_meta {
    sequence_fastq_file: "Sequence fastq file or bam file.[required]"
    ot_put_prefix: "Prefix of output files.[required]"
    format: "Format of input file, fastq or bam.[required]\\n"
  }
  output {
    File out_stdout = stdout()
  }
}