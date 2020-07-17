version 1.0

task ReadCounter {
  input {
    Boolean? seg
    Int? window
    Int? quality
    Boolean? list
    String? chromosome
    Boolean? build
    String bam_file
  }
  command <<<
    readCounter \
      ~{bam_file} \
      ~{true="--seg" false="" seg} \
      ~{if defined(window) then ("--window " +  '"' + window + '"') else ""} \
      ~{if defined(quality) then ("--quality " +  '"' + quality + '"') else ""} \
      ~{true="--list" false="" list} \
      ~{if defined(chromosome) then ("--chromosome " +  '"' + chromosome + '"') else ""} \
      ~{true="--build" false="" build}
  >>>
  parameter_meta {
    seg: "Outputs in SEG format"
    window: "Specify the size of non-overlapping windows [1000]"
    quality: "Specify the mapping quality value below which reads are ignored"
    list: "List all chromosomes in BAM reference file"
    chromosome: "Specify the entries and order of sequences to analyze [ALL], the <string> should be a comma-delimited list (NO spaces)"
    build: "Build BAM index for file (same index format as SAMtools)"
    bam_file: ""
  }
}