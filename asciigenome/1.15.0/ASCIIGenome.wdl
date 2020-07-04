version 1.0

task ASCIIGenome {
  input {
    String? batch_file
    String? region
    String? fast_a
    String? exec
    Boolean? no_format
    Boolean? noninteractive
    String? config
    Boolean? show_mem
    Boolean? showtime
    String? debug
    String input_files_displayed
  }
  command <<<
    ASCIIGenome \
      ~{input_files_displayed} \
      ~{if defined(batch_file) then ("--batchFile " +  '"' + batch_file + '"') else ""} \
      ~{if defined(region) then ("--region " +  '"' + region + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(exec) then ("--exec " +  '"' + exec + '"') else ""} \
      ~{true="--noFormat" false="" no_format} \
      ~{true="--nonInteractive" false="" noninteractive} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{true="--showMem" false="" show_mem} \
      ~{true="--showTime" false="" showtime} \
      ~{if defined(debug) then ("--debug " +  '"' + debug + '"') else ""}
  >>>
  parameter_meta {
    batch_file: ""
    region: ""
    fast_a: ""
    exec: ""
    no_format: ""
    noninteractive: ""
    config: ""
    show_mem: ""
    showtime: ""
    debug: ""
    input_files_displayed: "Input files to be displayed: bam, bed, gtf, bigwig, bedgraph, etc"
  }
}