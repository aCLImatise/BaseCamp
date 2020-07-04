version 1.0

task SortBed {
  input {
    Boolean? size_a
    Boolean? sized
    Boolean? chr_then_size_a
    Boolean? chr_then_sized
    Boolean? chr_then_score_a
    Boolean? chr_then_scored
    Boolean? g
    Boolean? fa_idx
    String? header
    String? i
    String bed_tools
    String sort
  }
  command <<<
    sortBed \
      ~{bed_tools} \
      ~{sort} \
      ~{true="-sizeA" false="" size_a} \
      ~{true="-sizeD" false="" sized} \
      ~{true="-chrThenSizeA" false="" chr_then_size_a} \
      ~{true="-chrThenSizeD" false="" chr_then_sized} \
      ~{true="-chrThenScoreA" false="" chr_then_score_a} \
      ~{true="-chrThenScoreD" false="" chr_then_scored} \
      ~{true="-g" false="" g} \
      ~{true="-faidx" false="" fa_idx} \
      ~{if defined(header) then ("-header " +  '"' + header + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    size_a: "Sort by feature size in ascending order."
    sized: "Sort by feature size in descending order."
    chr_then_size_a: "Sort by chrom (asc), then feature size (asc)."
    chr_then_sized: "Sort by chrom (asc), then feature size (desc)."
    chr_then_score_a: "Sort by chrom (asc), then score (asc)."
    chr_then_scored: "Sort by chrom (asc), then score (desc)."
    g: "(names.txt)  Sort according to the chromosomes declared in \"genome.txt\""
    fa_idx: "(names.txt)      Sort according to the chromosomes declared in \"names.txt\""
    header: "the header from the A file prior to results."
    i: ""
    bed_tools: ""
    sort: ""
  }
}