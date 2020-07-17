version 1.0

task ExtractSplitReadsBwaMem {
  input {
    File? in_file
    Int? num_splits
    Boolean? included_ups
    Int? min_non_overlap
  }
  command <<<
    extractSplitReads_BwaMem \
      ~{if defined(in_file) then ("--inFile " +  '"' + in_file + '"') else ""} \
      ~{if defined(num_splits) then ("--numSplits " +  '"' + num_splits + '"') else ""} \
      ~{true="--includeDups" false="" included_ups} \
      ~{if defined(min_non_overlap) then ("--minNonOverlap " +  '"' + min_non_overlap + '"') else ""}
  >>>
  parameter_meta {
    in_file: "A SAM file or standard input (-i stdin)."
    num_splits: "The maximum number of split-read mappings to allow per read. Reads with more are excluded. Default=2"
    included_ups: "Include alignments marked as duplicates. Default=False"
    min_non_overlap: "minimum non-overlap between split alignments on the query (default=20)"
  }
}