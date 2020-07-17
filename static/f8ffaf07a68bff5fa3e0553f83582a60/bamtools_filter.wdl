version 1.0

task BamtoolsFilter {
  input {
    String? in
    File? list
    String? out
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
      ~{true="-forceCompression" false="" force_compression} \
      ~{if defined(alignment_flag) then ("-alignmentFlag " +  '"' + alignment_flag + '"') else ""} \
      ~{if defined(insert_size) then ("-insertSize " +  '"' + insert_size + '"') else ""} \
      ~{if defined(length) then ("-length " +  '"' + length + '"') else ""} \
      ~{true="-mapQuality" false="" map_quality} \
      ~{if defined(name) then ("-name " +  '"' + name + '"') else ""} \
      ~{if defined(query_bases) then ("-queryBases " +  '"' + query_bases + '"') else ""} \
      ~{true="-tag" false="" tag} \
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
    list: "the input BAM file list, one line per file"
    out: "the output BAM file [stdout]"
    region: "only read data from this genomic region (see documentation for more details)"
    script: "the filter script file (see documentation for more details)"
    force_compression: "if results are sent to stdout (like when piping to another tool), default behavior is to leave output uncompressed. Use this flag to override and force compression"
    alignment_flag: "keep reads with this *exact* alignment flag (for more detailed queries, see below)"
    insert_size: "keep reads with insert size that matches pattern"
    length: "keep reads with length that matches pattern"
    map_quality: "<[0-255]>             keep reads with map quality that matches pattern"
    name: "keep reads with name that matches pattern"
    query_bases: "keep reads with motif that matches pattern"
    tag: "<TAG:VALUE>                  keep reads with this key=>value pair"
    is_duplicate: "keep only alignments that are marked as duplicate? [true]"
    is_failed_qc: "keep only alignments that failed QC? [true]"
    is_first_mate: "keep only alignments marked as first mate? [true]"
    is_mapped: "keep only alignments that were mapped? [true]"
    is_mate_mapped: "keep only alignments with mates that mapped [true]"
    is_mate_reverse_strand: "keep only alignments with mate on reverese strand? [true]"
    is_paired: "keep only alignments that were sequenced as paired? [true]"
    is_primary_alignment: "keep only alignments marked as primary? [true]"
    is_proper_pair: "keep only alignments that passed PE resolution? [true]"
    is_reverse_strand: "keep only alignments on reverse strand? [true]"
    is_second_mate: "keep only alignments marked as second mate? [true]"
    is_singleton: "keep only singletons [true]"
  }
}