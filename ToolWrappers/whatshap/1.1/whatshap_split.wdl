version 1.0

task WhatshapSplit {
  input {
    File? output_hone
    File? output_h_two
    File? output_untagged
    Boolean? add_untagged
    Boolean? discard_unknown_reads
    File? read_lengths_histogram
    String reads
    String list
    String streams_dot
  }
  command <<<
    whatshap split \
      ~{reads} \
      ~{list} \
      ~{streams_dot} \
      ~{if defined(output_hone) then ("--output-h1 " +  '"' + output_hone + '"') else ""} \
      ~{if defined(output_h_two) then ("--output-h2 " +  '"' + output_h_two + '"') else ""} \
      ~{if defined(output_untagged) then ("--output-untagged " +  '"' + output_untagged + '"') else ""} \
      ~{if (add_untagged) then "--add-untagged" else ""} \
      ~{if (discard_unknown_reads) then "--discard-unknown-reads" else ""} \
      ~{if defined(read_lengths_histogram) then ("--read-lengths-histogram " +  '"' + read_lengths_histogram + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/whatshap:1.1--py39h7cff6ad_0"
  }
  parameter_meta {
    output_hone: "Output file to write reads from Haplotype 1 to. Use\\nending .gz to create gzipped file."
    output_h_two: "Output file to write reads from Haplotype 2 to. Use\\nending .gz to create gzipped file."
    output_untagged: "Output file to write untagged reads to. Use ending .gz\\nto create gzipped file."
    add_untagged: "Add reads without tag to both H1 and H2 output"
    discard_unknown_reads: "Only check the haplotype of reads listed in the\\nhaplotag list file. Reads (read names) not contained\\nin this file will be discarded. In the default case (=\\nkeep unknown reads), those reads would be considered\\nuntagged and end up in the respective output file.\\nPlease be sure that the read names match between the\\ninput FASTQ/BAM and the haplotag list file."
    read_lengths_histogram: "Output file to write read lengths histogram to in tab\\nseparated format.\\n"
    reads: "Input FASTQ/BAM file with reads (FASTQ can be gzipped)"
    list: "Tab-separated list with (at least) two columns\\n<readname> and <haplotype> (can be gzipped).\\nCurrently, the two haplotypes have to be named H1 and\\nH2 (or none). Alternatively, the output of the\\n\\\"haplotag\\\" command can be used (4 columns), and this\\nis required for using the \\\"--only-largest-block\\\"\\noption (need phaseset and chromosome info)."
    streams_dot: "--only-largest-block  Only consider reads to be tagged if they belong to the"
  }
  output {
    File out_stdout = stdout()
    File out_output_hone = "${in_output_hone}"
    File out_output_h_two = "${in_output_h_two}"
    File out_output_untagged = "${in_output_untagged}"
    File out_read_lengths_histogram = "${in_read_lengths_histogram}"
  }
}