version 1.0

task JgiSummarizeBamContigDepths {
  input {
    Boolean? output_depth
    Boolean? percent_identity
    File? paired_contigs
    File? unmapped_fast_q
    Boolean? no_intra_depth_variance
    File? show_depth
    Boolean? min_map_qual
    Boolean? weight_map_qual
    Boolean? include_edge_bases
    Boolean? max_edge_bases
    Boolean? reference_fast_a
    Boolean? output_gc
    Boolean? gc_window
    Boolean? output_read_stats
    Boolean? output_km_ers
    Boolean? shred_length
    Boolean? shred_depth
    Boolean? min_contig_length
    Boolean? min_contig_depth
    String options
    Int sorted_bam_one
    Int? sorted_bam_two
  }
  command <<<
    jgi_summarize_bam_contig_depths \
      ~{options} \
      ~{sorted_bam_one} \
      ~{sorted_bam_two} \
      ~{if (output_depth) then "--outputDepth" else ""} \
      ~{if (percent_identity) then "--percentIdentity" else ""} \
      ~{if (paired_contigs) then "--pairedContigs" else ""} \
      ~{if (unmapped_fast_q) then "--unmappedFastq" else ""} \
      ~{if (no_intra_depth_variance) then "--noIntraDepthVariance" else ""} \
      ~{if (show_depth) then "--showDepth" else ""} \
      ~{if (min_map_qual) then "--minMapQual" else ""} \
      ~{if (weight_map_qual) then "--weightMapQual" else ""} \
      ~{if (include_edge_bases) then "--includeEdgeBases" else ""} \
      ~{if (max_edge_bases) then "--maxEdgeBases" else ""} \
      ~{if (reference_fast_a) then "--referenceFasta" else ""} \
      ~{if (output_gc) then "--outputGC" else ""} \
      ~{if (gc_window) then "--gcWindow" else ""} \
      ~{if (output_read_stats) then "--outputReadStats" else ""} \
      ~{if (output_km_ers) then "--outputKmers" else ""} \
      ~{if (shred_length) then "--shredLength" else ""} \
      ~{if (shred_depth) then "--shredDepth" else ""} \
      ~{if (min_contig_length) then "--minContigLength" else ""} \
      ~{if (min_contig_depth) then "--minContigDepth" else ""}
  >>>
  parameter_meta {
    output_depth: "arg  The file to put the contig by bam depth matrix (default: STDOUT)"
    percent_identity: "arg  The minimum end-to-end % identity of qualifying reads (default: 97)"
    paired_contigs: "arg  The file to output the sparse matrix of contigs which paired reads span (default: none)"
    unmapped_fast_q: "arg  The prefix to output unmapped reads from each bam file suffixed by 'bamfile.bam.fastq.gz'"
    no_intra_depth_variance: "Do not include variance from mean depth along the contig"
    show_depth: "Output a .depth file per bam for each contig base"
    min_map_qual: "arg  The minimum mapping quality necessary to count the read as mapped (default: 0)"
    weight_map_qual: "arg  Weight per-base depth based on the MQ of the read (i.e uniqueness) (default: 0.0 (disabled))"
    include_edge_bases: "When calculating depth & variance, include the 1-readlength edges (off by default)"
    max_edge_bases: "When calculating depth & variance, and not --includeEdgeBases, the maximum length (default:75)"
    reference_fast_a: "arg  The reference file.  (It must be the same fasta that bams used)"
    output_gc: "arg  The file to print the gc coverage histogram"
    gc_window: "arg  The sliding window size for GC calculations"
    output_read_stats: "arg  The file to print the per read statistics"
    output_km_ers: "arg  The file to print the perfect kmer counts"
    shred_length: "arg  The maximum length of the shreds"
    shred_depth: "arg  The depth to generate overlapping shreds"
    min_contig_length: "arg  The mimimum length of contig to include for mapping and shredding"
    min_contig_depth: "arg  The minimum depth along contig at which to break the contig"
    options: ""
    sorted_bam_one: ""
    sorted_bam_two: ""
  }
  output {
    File out_stdout = stdout()
    File out_paired_contigs = "${in_paired_contigs}"
    File out_unmapped_fast_q = "${in_unmapped_fast_q}"
    File out_show_depth = "${in_show_depth}"
  }
}