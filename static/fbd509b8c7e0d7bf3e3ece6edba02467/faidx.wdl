version 1.0

task Faidx {
  input {
    Boolean? no_rebuild
    File? bed
    File? out
    String? transform
    Boolean? complement
    Boolean? reverse
    Boolean? auto_strand
    Int? size_range
    Boolean? split_files
    Boolean? lazy
    Boolean? mask_with_default_seq
    Boolean? mask_by_case
    Boolean? no_names
    Boolean? long_names
    Boolean? no_coords
    String? delimiter
    Int? header_function
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
      ~{if (no_rebuild) then "--no-rebuild" else ""} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(transform) then ("--transform " +  '"' + transform + '"') else ""} \
      ~{if (complement) then "--complement" else ""} \
      ~{if (reverse) then "--reverse" else ""} \
      ~{if (auto_strand) then "--auto-strand" else ""} \
      ~{if defined(size_range) then ("--size-range " +  '"' + size_range + '"') else ""} \
      ~{if (split_files) then "--split-files" else ""} \
      ~{if (lazy) then "--lazy" else ""} \
      ~{if (mask_with_default_seq) then "--mask-with-default-seq" else ""} \
      ~{if (mask_by_case) then "--mask-by-case" else ""} \
      ~{if (no_names) then "--no-names" else ""} \
      ~{if (long_names) then "--long-names" else ""} \
      ~{if (no_coords) then "--no-coords" else ""} \
      ~{if defined(delimiter) then ("--delimiter " +  '"' + delimiter + '"') else ""} \
      ~{if defined(header_function) then ("--header-function " +  '"' + header_function + '"') else ""} \
      ~{if defined(duplicates_action) then ("--duplicates-action " +  '"' + duplicates_action + '"') else ""} \
      ~{if defined(regex) then ("--regex " +  '"' + regex + '"') else ""} \
      ~{if (invert_match) then "--invert-match" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    no_rebuild: "do not rebuild the .fai index even if it is out of\\ndate. default: False"
    bed: "bed file of regions"
    out: "output file name (default: stdout)"
    transform: "transform the requested regions into another format.\\ndefault: None"
    complement: "complement the sequence. default: False"
    reverse: "reverse the sequence. default: False"
    auto_strand: "reverse complement the sequence when start > end\\ncoordinate. default: False"
    size_range: "selected sequences are in the size range [low, high].\\nexample: 1,1000 default: None"
    split_files: "write each region to a separate file (names are\\nderived from regions)"
    lazy: "fill in --default-seq for missing ranges. default:"
    mask_with_default_seq: "mask the FASTA file using --default-seq default: False"
    mask_by_case: "mask the FASTA file by changing to lowercase. default:"
    no_names: "omit sequence names from output. default: False"
    long_names: "output full (long) names from the input fasta headers.\\ndefault: headers are truncated after the first\\nwhitespace"
    no_coords: "omit coordinates (e.g. chr:start-end) from output\\nheaders. default: False"
    delimiter: "delimiter for splitting names to multiple values\\n(duplicate names will be discarded). default: None"
    header_function: "python function to modify header lines e.g: \\\"lambda x:\\nx.split(\\\"|\\\")[0]\\\". default: lambda x: x.split()[0]"
    duplicates_action: "entry to take when duplicate sequence names are\\nencountered. default: stop"
    regex: "selected sequences are those matching regular\\nexpression. default: .*"
    invert_match: "selected sequences are those not matching 'regions'\\nargument. default: False"
    fast_a: "FASTA file"
    regions: "space separated regions of sequence to fetch e.g.\\nchr1:1-1000"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}