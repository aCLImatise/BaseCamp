version 1.0

task StrlingPullRegion {
  input {
    File? fast_a
    File? output_bam
    String bam
  }
  command <<<
    strling pull_region \
      ~{bam} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(output_bam) then ("--output-bam " +  '"' + output_bam + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fast_a: "path to fasta file, only required for cram"
    output_bam: "path to output bam (default: extracted.bam)"
    bam: "region"
  }
  output {
    File out_stdout = stdout()
    File out_output_bam = "${in_output_bam}"
  }
}