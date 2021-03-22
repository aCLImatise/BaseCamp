version 1.0

task HiLineIndexonly {
  input {
    Boolean? no_trim
    Boolean? bwa_one
    Boolean? bwa_two
    Boolean? minimap_two
  }
  command <<<
    HiLine index_only \
      ~{if (no_trim) then "--no-trim" else ""} \
      ~{if (bwa_one) then "--bwa1" else ""} \
      ~{if (bwa_two) then "--bwa2" else ""} \
      ~{if (minimap_two) then "--minimap2" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hiline:0.2.2--py38hc9558a2_1"
  }
  parameter_meta {
    no_trim: "Run HiC read trimming, trim sections of reads that align\\npast restriction sites. Default=trim"
    bwa_one: "Use bwa mem. Default=False"
    bwa_two: "Use bwa-mem2. Default=True"
    minimap_two: "Use minimap2. Default=False"
  }
  output {
    File out_stdout = stdout()
  }
}