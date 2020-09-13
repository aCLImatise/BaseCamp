version 1.0

task BamtoolsFilter {
  input {
    File? in
    File? list
    File? out
    String? region
    File? script
    Boolean? force_compression
    Int? alignment_flag
    Int? insert_size
    Int? length
    Boolean? map_quality
    String? name
    String? query_bases
    Boolean? tag
    String? is_duplicate
    String? is_failed_qc
    String? is_first_mate
    String? is_mapped
    String? is_mate_mapped
    String? is_mate_reverse_strand
    String? is_paired
    String? is_primary_alignment
    String? is_proper_pair
    String? is_reverse_strand
    String? is_second_mate
    String? is_singleton
  }
  command <<<
    bamtools filter \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(list) then ("-list " +  '"' + list + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(region) then ("-region " +  '"' + region + '"') else ""} \
      ~{if defined(script) then ("-script " +  '"' + script + '"') else ""} \
      ~{if (force_compression) then "-forceCompression" else ""} \
      ~{if defined(alignment_flag) then ("-alignmentFlag " +  '"' + alignment_flag + '"') else ""} \
      ~{if defined(insert_size) then ("-insertSize " +  '"' + insert_size + '"') else ""} \
      ~{if defined(length) then ("-length " +  '"' + length + '"') else ""} \
      ~{if (map_quality) then "-mapQuality" else ""} \
      ~{if defined(name) then ("-name " +  '"' + name + '"') else ""} \
      ~{if defined(query_bases) then ("-queryBases " +  '"' + query_bases + '"') else ""} \
      ~{if (tag) then "-tag" else ""} \
      ~{if defined(is_duplicate) then ("-isDuplicate " +  '"' + is_duplicate + '"') else ""} \
      ~{if defined(is_failed_qc) then ("-isFailedQC " +  '"' + is_failed_qc + '"') else ""} \
      ~{if defined(is_first_mate) then ("-isFirstMate " +  '"' + is_first_mate + '"') else ""} \
      ~{if defined(is_mapped) then ("-isMapped " +  '"' + is_mapped + '"') else ""} \
      ~{if defined(is_mate_mapped) then ("-isMateMapped " +  '"' + is_mate_mapped + '"') else ""} \
      ~{if defined(is_mate_reverse_strand) then ("-isMateReverseStrand " +  '"' + is_mate_reverse_strand + '"') else ""} \
      ~{if defined(is_paired) then ("-isPaired " +  '"' + is_paired + '"') else ""} \
      ~{if defined(is_primary_alignment) then ("-isPrimaryAlignment " +  '"' + is_primary_alignment + '"') else ""} \
      ~{if defined(is_proper_pair) then ("-isProperPair " +  '"' + is_proper_pair + '"') else ""} \
      ~{if defined(is_reverse_strand) then ("-isReverseStrand " +  '"' + is_reverse_strand + '"') else ""} \
      ~{if defined(is_second_mate) then ("-isSecondMate " +  '"' + is_second_mate + '"') else ""} \
      ~{if defined(is_singleton) then ("-isSingleton " +  '"' + is_singleton + '"') else ""}
  >>>
  parameter_meta {
    in: "the input BAM file(s) [stdin]"
    list: "the input BAM file list, one\\nline per file"
    out: "the output BAM file [stdout]"
    region: "only read data from this\\ngenomic region (see documentation for more\\ndetails)"
    script: "the filter script file (see\\ndocumentation for more details)"
    force_compression: "if results are sent to stdout\\n(like when piping to another tool),\\ndefault behavior is to leave output\\nuncompressed. Use this flag to override\\nand force compression"
    alignment_flag: "keep reads with this *exact*\\nalignment flag (for more detailed queries,\\nsee below)"
    insert_size: "keep reads with insert size\\nthat matches pattern"
    length: "keep reads with length that\\nmatches pattern"
    map_quality: "<[0-255]>             keep reads with map quality\\nthat matches pattern"
    name: "keep reads with name that\\nmatches pattern"
    query_bases: "keep reads with motif that\\nmatches pattern"
    tag: "<TAG:VALUE>                  keep reads with this\\nkey=>value pair"
    is_duplicate: "keep only alignments that are\\nmarked as duplicate? [true]"
    is_failed_qc: "keep only alignments that\\nfailed QC? [true]"
    is_first_mate: "keep only alignments marked as\\nfirst mate? [true]"
    is_mapped: "keep only alignments that were\\nmapped? [true]"
    is_mate_mapped: "keep only alignments with\\nmates that mapped [true]"
    is_mate_reverse_strand: "keep only alignments with mate\\non reverese strand? [true]"
    is_paired: "keep only alignments that were\\nsequenced as paired? [true]"
    is_primary_alignment: "keep only alignments marked as\\nprimary? [true]"
    is_proper_pair: "keep only alignments that\\npassed PE resolution? [true]"
    is_reverse_strand: "keep only alignments on\\nreverse strand? [true]"
    is_second_mate: "keep only alignments marked as\\nsecond mate? [true]"
    is_singleton: "keep only singletons [true]"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}