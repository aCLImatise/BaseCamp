version 1.0

task Faidx {
  input {
    Boolean? no_rebuild
    String? bed
    String? out
    String? transform
    Boolean? complement
    Boolean? reverse
    Boolean? auto_strand
    Int? size_range
    Boolean? split_files
    Boolean? lazy
    String? default_seq
    Boolean? mask_with_default_seq
    Boolean? mask_by_case
    Boolean? no_output
    Boolean? no_names
    Boolean? long_names
    Boolean? no_coords
    String? delimiter
    String? header_function
    String? duplicates_action
    String? regex
    Boolean? invert_match
    String fast_a
    String regions
  }
  command <<<
    faidx \
      ~{fast_a} \
      ~{regions} \
      ~{true="--no-rebuild" false="" no_rebuild} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(transform) then ("--transform " +  '"' + transform + '"') else ""} \
      ~{true="--complement" false="" complement} \
      ~{true="--reverse" false="" reverse} \
      ~{true="--auto-strand" false="" auto_strand} \
      ~{if defined(size_range) then ("--size-range " +  '"' + size_range + '"') else ""} \
      ~{true="--split-files" false="" split_files} \
      ~{true="--lazy" false="" lazy} \
      ~{if defined(default_seq) then ("--default-seq " +  '"' + default_seq + '"') else ""} \
      ~{true="--mask-with-default-seq" false="" mask_with_default_seq} \
      ~{true="--mask-by-case" false="" mask_by_case} \
      ~{true="--no-output" false="" no_output} \
      ~{true="--no-names" false="" no_names} \
      ~{true="--long-names" false="" long_names} \
      ~{true="--no-coords" false="" no_coords} \
      ~{if defined(delimiter) then ("--delimiter " +  '"' + delimiter + '"') else ""} \
      ~{if defined(header_function) then ("--header-function " +  '"' + header_function + '"') else ""} \
      ~{if defined(duplicates_action) then ("--duplicates-action " +  '"' + duplicates_action + '"') else ""} \
      ~{if defined(regex) then ("--regex " +  '"' + regex + '"') else ""} \
      ~{true="--invert-match" false="" invert_match}
  >>>
  parameter_meta {
    no_rebuild: "do not rebuild the .fai index even if it is out of date. default: False"
    bed: "bed file of regions"
    out: "output file name (default: stdout)"
    transform: "transform the requested regions into another format. default: None"
    complement: "complement the sequence. default: False"
    reverse: "reverse the sequence. default: False"
    auto_strand: "reverse complement the sequence when start > end coordinate. default: False"
    size_range: "selected sequences are in the size range [low, high]. example: 1,1000 default: None"
    split_files: "write each region to a separate file (names are derived from regions)"
    lazy: "fill in --default-seq for missing ranges. default: False"
    default_seq: "default base for missing positions and masking. default: None"
    mask_with_default_seq: "mask the FASTA file using --default-seq default: False"
    mask_by_case: "mask the FASTA file by changing to lowercase. default: False"
    no_output: "do not output any sequence. default: False"
    no_names: "omit sequence names from output. default: False"
    long_names: "output full (long) names from the input fasta headers. default: headers are truncated after the first whitespace"
    no_coords: "omit coordinates (e.g. chr:start-end) from output headers. default: False"
    delimiter: "delimiter for splitting names to multiple values (duplicate names will be discarded). default: None"
    header_function: "python function to modify header lines e.g: \"lambda x: x.split(\"|\")[0]\". default: lambda x: x.split()[0]"
    duplicates_action: "entry to take when duplicate sequence names are encountered. default: stop"
    regex: "selected sequences are those matching regular expression. default: .*"
    invert_match: "selected sequences are those not matching 'regions' argument. default: False"
    fast_a: "FASTA file"
    regions: "space separated regions of sequence to fetch e.g. chr1:1-1000"
  }
}