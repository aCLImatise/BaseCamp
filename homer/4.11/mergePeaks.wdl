version 1.0

task MergePeaks {
  input {
    Boolean? strand
    Boolean? given_maximum_distance
    File? file
    Boolean? g_size
    File? venn
    Boolean? code
    File? matrix
    String? filter
    String? coverage
    String primary_peak_file
    String? additional
    String? peak_slash_annotation
    File? files_dot_dot_dot
  }
  command <<<
    mergePeaks \
      ~{primary_peak_file} \
      ~{additional} \
      ~{peak_slash_annotation} \
      ~{files_dot_dot_dot} \
      ~{true="-strand" false="" strand} \
      ~{true="-d" false="" given_maximum_distance} \
      ~{if defined(file) then ("-file " +  '"' + file + '"') else ""} \
      ~{true="-gsize" false="" g_size} \
      ~{if defined(venn) then ("-venn " +  '"' + venn + '"') else ""} \
      ~{true="-code" false="" code} \
      ~{if defined(matrix) then ("-matrix " +  '"' + matrix + '"') else ""} \
      ~{if defined(filter) then ("-filter " +  '"' + filter + '"') else ""} \
      ~{if defined(coverage) then ("-coverage " +  '"' + coverage + '"') else ""}
  >>>
  parameter_meta {
    strand: "(Only merge/consider peaks on the same strand, default: either strand)"
    given_maximum_distance: "<#|given> (Maximum distance between peak centers to merge, default: given) Using \"-d given\" looks for literal overlaps in peak regions - DEFAULT since v4.4 Use \"-d given\" when features have vastly different sizes (i.e. peaks vs. introns)"
    file: "(file listing peak files to compare - for lots of peak files)"
    g_size: "<#> (Genome size for significance calculations, default: 2e9)"
    venn: "(output venn diagram numbers to file, default: to stderr)"
    code: "(report peak membership as binary instead of by file names)"
    matrix: "(generates similar files to above with pairwise overlap statistics)"
    filter: ":XXX-YYY (only analyze peaks within range)"
    coverage: "(returns the total bp covered by each peak file - use \"-d given\""
    primary_peak_file: ""
    additional: ""
    peak_slash_annotation: ""
    files_dot_dot_dot: ""
  }
}