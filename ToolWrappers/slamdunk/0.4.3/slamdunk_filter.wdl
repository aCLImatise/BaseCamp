version 1.0

task SlamdunkFilter {
  input {
    Directory? output_dir
    File? bed
    Int? min_mq
    Int? min_identity
    Int? max_nm
    Int? threads
    String bam
  }
  command <<<
    slamdunk filter \
      ~{bam} \
      ~{if defined(output_dir) then ("--outputDir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(min_mq) then ("--min-mq " +  '"' + min_mq + '"') else ""} \
      ~{if defined(min_identity) then ("--min-identity " +  '"' + min_identity + '"') else ""} \
      ~{if defined(max_nm) then ("--max-nm " +  '"' + max_nm + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    output_dir: "Output directory for mapped BAM files."
    bed: "BED file, overrides MQ filter to 0"
    min_mq: "Minimum mapping quality (default: 2)"
    min_identity: "Minimum alignment identity (default: 0.95)"
    max_nm: "Maximum NM for alignments (default: -1)"
    threads: "Thread number (default: 1)\\n"
    bam: "Bam file(s)"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}