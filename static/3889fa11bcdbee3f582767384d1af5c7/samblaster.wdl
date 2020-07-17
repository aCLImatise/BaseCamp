version 1.0

task Samblaster {
  input {
    Boolean? add_mate_tags
    Boolean? ignore_un_mated
    Boolean? max_read_length
    Boolean? max_split_count
    Int? max_unmapped_bases
    Boolean? min_in_del_size
    Boolean? min_non_overlap
    Boolean? min_clip_size
    String for
    String use
    String var_as
    String a
    String post
    String process
    String on
    String an
    String aligner
  }
  command <<<
    samblaster \
      ~{for} \
      ~{use} \
      ~{var_as} \
      ~{a} \
      ~{post} \
      ~{process} \
      ~{on} \
      ~{an} \
      ~{aligner} \
      ~{true="--addMateTags" false="" add_mate_tags} \
      ~{true="--ignoreUnmated" false="" ignore_un_mated} \
      ~{true="--maxReadLength" false="" max_read_length} \
      ~{true="--maxSplitCount" false="" max_split_count} \
      ~{if defined(max_unmapped_bases) then ("--maxUnmappedBases " +  '"' + max_unmapped_bases + '"') else ""} \
      ~{true="--minIndelSize" false="" min_in_del_size} \
      ~{true="--minNonOverlap" false="" min_non_overlap} \
      ~{true="--minClipSize" false="" min_clip_size}
  >>>
  parameter_meta {
    add_mate_tags: "Add MC and MQ tags to all output paired-end SAM lines."
    ignore_un_mated: "Suppress abort on unmated alignments. Use only when sure input is read-id grouped, and either paired-end alignments have been filtered or the input file contains singleton reads."
    max_read_length: "INT Maximum allowed length of the SEQ/QUAL string in the input file. [500] Primarily useful for marking duplicates in files containing singleton long reads."
    max_split_count: "INT Maximum number of split alignments for a read to be included in splitter file. [2]"
    max_unmapped_bases: "Maximum number of un-aligned bases between two alignments to be included in splitter file. [50]"
    min_in_del_size: "INT Minimum structural variant feature size for split alignments to be included in splitter file. [50]"
    min_non_overlap: "INT Minimum non-overlaping base pairs between two alignments for a read to be included in splitter file. [20]"
    min_clip_size: "INT Minumum number of bases a mapped read must be clipped to be included in unmapped file. [20]"
    for: ""
    use: ""
    var_as: ""
    a: ""
    post: ""
    process: ""
    on: ""
    an: ""
    aligner: ""
  }
}