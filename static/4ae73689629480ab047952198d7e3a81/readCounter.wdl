version 1.0

task ReadCounter {
  input {
    Boolean? seg
    Int? window
    Int? quality
    Boolean? list
    String? chromosome
    Boolean? build
    File bam_file
  }
  command <<<
    readCounter \
      ~{bam_file} \
      ~{if (seg) then "--seg" else ""} \
      ~{if defined(window) then ("--window " +  '"' + window + '"') else ""} \
      ~{if defined(quality) then ("--quality " +  '"' + quality + '"') else ""} \
      ~{if (list) then "--list" else ""} \
      ~{if defined(chromosome) then ("--chromosome " +  '"' + chromosome + '"') else ""} \
      ~{if (build) then "--build" else ""}
  >>>
  parameter_meta {
    seg: "Outputs in SEG format"
    window: "Specify the size of non-overlapping windows [1000]"
    quality: "Specify the mapping quality value below which reads are ignored"
    list: "List all chromosomes in BAM reference file"
    chromosome: "Specify the entries and order of sequences to analyze [ALL],\\nthe <string> should be a comma-delimited list (NO spaces)"
    build: "Build BAM index for file (same index format as SAMtools)"
    bam_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}