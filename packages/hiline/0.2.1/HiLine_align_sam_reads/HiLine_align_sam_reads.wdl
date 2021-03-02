version 1.0

task HiLineAlignsamreads {
  input {
    Boolean? no_rmd_ups
    String? tag
    Boolean? no_trim
    Boolean? bwa_one
    Boolean? bwa_two
    Boolean? minimap_two
    String reads
  }
  command <<<
    HiLine align_sam_reads \
      ~{reads} \
      ~{if (no_rmd_ups) then "--no-rmdups" else ""} \
      ~{if defined(tag) then ("--tag " +  '"' + tag + '"') else ""} \
      ~{if (no_trim) then "--no-trim" else ""} \
      ~{if (bwa_one) then "--bwa1" else ""} \
      ~{if (bwa_two) then "--bwa2" else ""} \
      ~{if (minimap_two) then "--minimap2" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hiline:0.2.1--py38hc9558a2_0"
  }
  parameter_meta {
    no_rmd_ups: "Run samtools mark_dup pipeline on alignment.\\nDefault=rmdups"
    tag: "SAM tag(s) to append to reads."
    no_trim: "Run HiC read trimming, trim sections of reads that\\nalign past restriction sites. Default=trim"
    bwa_one: "Use bwa mem. Default=False"
    bwa_two: "Use bwa-mem2. Default=True"
    minimap_two: "Use minimap2. Default=False"
    reads: ""
  }
  output {
    File out_stdout = stdout()
  }
}