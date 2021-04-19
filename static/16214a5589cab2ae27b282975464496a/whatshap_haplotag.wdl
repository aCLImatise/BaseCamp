version 1.0

task WhatshapHaplotag {
  input {
    File? output_file_omitted
    File? reference
    String? regions
    Boolean? ignore_linked_read
    Boolean? ignore_read_groups
    String? sample
    File? output_haplo_tag_list
    Boolean? tag_supplementary
    String vcf
    String alignments
    String haplotype
    String reads_dot
  }
  command <<<
    whatshap haplotag \
      ~{vcf} \
      ~{alignments} \
      ~{haplotype} \
      ~{reads_dot} \
      ~{if defined(output_file_omitted) then ("--output " +  '"' + output_file_omitted + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(regions) then ("--regions " +  '"' + regions + '"') else ""} \
      ~{if (ignore_linked_read) then "--ignore-linked-read" else ""} \
      ~{if (ignore_read_groups) then "--ignore-read-groups" else ""} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{if defined(output_haplo_tag_list) then ("--output-haplotag-list " +  '"' + output_haplo_tag_list + '"') else ""} \
      ~{if (tag_supplementary) then "--tag-supplementary" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/whatshap:1.1--py39h7cff6ad_0"
  }
  parameter_meta {
    output_file_omitted: "Output file. If omitted, use standard output."
    reference: "Reference file. Provide this to detect alleles through\\nre-alignment. If no index (.fai) exists, it will be\\ncreated"
    regions: "Specify region(s) of interest to limit the tagging to\\nreads/variants overlapping those regions. You can\\nspecify a space-separated list of regions in the form\\nof chrom:start-end, chrom (consider entire\\nchromosome), or chrom:start (consider region from this\\nstart to end of chromosome)."
    ignore_linked_read: "Ignore linkage information stored in BX tags of the"
    ignore_read_groups: "Ignore read groups in BAM/CRAM header and assume all\\nreads come from the same sample."
    sample: "Name of a sample to phase. If not given, all samples\\nin the input VCF are phased. Can be used multiple\\ntimes."
    output_haplo_tag_list: "Write assignments of read names to haplotypes (tab\\nseparated) to given output file. If filename ends in\\n.gz, then output is gzipped."
    tag_supplementary: "Also tag supplementary alignments. Supplementary\\nalignments are assigned to the same haplotype the\\nprimary alignment has been assigned to (default: only\\ntag primary alignments).\\n"
    vcf: "VCF file with phased variants (must be gzip-compressed\\nand indexed)"
    alignments: "File (BAM/CRAM) with read alignments to be tagged by"
    haplotype: "optional arguments:"
    reads_dot: "--linked-read-distance-cutoff LINKEDREADDISTANCE, -d LINKEDREADDISTANCE"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_omitted = "${in_output_file_omitted}"
    File out_output_haplo_tag_list = "${in_output_haplo_tag_list}"
  }
}