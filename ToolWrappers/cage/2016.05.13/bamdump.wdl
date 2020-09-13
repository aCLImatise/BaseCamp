version 1.0

task Bamdump {
  input {
    String bam_dump
  }
  command <<<
    bamdump \
      ~{bam_dump}
  >>>
  parameter_meta {
    bam_dump: "[--] [--version] [-h] <bamfile> <contig> <start> <end>"
  }
  output {
    File out_stdout = stdout()
  }
}