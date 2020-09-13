version 1.0

task AlleyoopUtrrates {
  input {
    Directory? output_dir
    File? reference
    Int? min_base_quality
    Boolean? multi_tc_stringency
    Int? threads
    File? bed
    Int? max_read_length
    String bam
  }
  command <<<
    alleyoop utrrates \
      ~{bam} \
      ~{if defined(output_dir) then ("--outputDir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(min_base_quality) then ("--min-basequality " +  '"' + min_base_quality + '"') else ""} \
      ~{if (multi_tc_stringency) then "--multiTCStringency" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(max_read_length) then ("--max-read-length " +  '"' + max_read_length + '"') else ""}
  >>>
  parameter_meta {
    output_dir: "Output directory for mapped BAM files."
    reference: "Reference fasta file"
    min_base_quality: "Minimal base quality for SNPs (default: 27)"
    multi_tc_stringency: ""
    threads: "Thread number (default: 1)"
    bed: "BED file"
    max_read_length: "Max read length in BAM file (default: None)\\n"
    bam: "Bam file(s)"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}