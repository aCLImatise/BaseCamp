version 1.0

task MergePeaks {
  input {
    Boolean? strand
    Boolean? given_maximum_distance
    File? file_listing_files
    Boolean? g_size
    File? prefix
    File? matrix
    File? venn
    Boolean? code
    Boolean? co_bound
    String? filter
    File? coverage
    File primary_peak_file
  }
  command <<<
    mergePeaks \
      ~{primary_peak_file} \
      ~{if (strand) then "-strand" else ""} \
      ~{if (given_maximum_distance) then "-d" else ""} \
      ~{if defined(file_listing_files) then ("-file " +  '"' + file_listing_files + '"') else ""} \
      ~{if (g_size) then "-gsize" else ""} \
      ~{if defined(prefix) then ("-prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(matrix) then ("-matrix " +  '"' + matrix + '"') else ""} \
      ~{if defined(venn) then ("-venn " +  '"' + venn + '"') else ""} \
      ~{if (code) then "-code" else ""} \
      ~{if (co_bound) then "-cobound" else ""} \
      ~{if defined(filter) then ("-filter " +  '"' + filter + '"') else ""} \
      ~{if defined(coverage) then ("-coverage " +  '"' + coverage + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    strand: "(Only merge/consider peaks on the same strand, default: either strand)"
    given_maximum_distance: "<#|given> (Maximum distance between peak centers to merge, default: given)\\nUsing \\\"-d given\\\" looks for literal overlaps in peak regions - DEFAULT since v4.4\\nUse \\\"-d given\\\" when features have vastly different sizes (i.e. peaks vs. introns)"
    file_listing_files: "(file listing peak files to compare - for lots of peak files)"
    g_size: "<#> (Genome size for significance calculations, default: 2e9)"
    prefix: "(Generates separate files for overlapping and unique peaks)\\nBy default all peaks are sent to stdout"
    matrix: "(Generates files with pairwise comparison statistics)\\nfilename.logPvalue.matrix.txt - ln p-values for overlap, +values for divergence\\nfilename.logRatio.matrix.txt - ln ratio of observed/expected overlaps\\nfilename.count.matrix.txt - peak overlap counts"
    venn: "(output venn diagram numbers to file, default: to stderr)"
    code: "(report peak membership as binary instead of by file names)"
    co_bound: "<#> (Maximum number of co-bound peaks to consider)\\nWill output sets of peaks that are co-bound by various numbers of factors\\nto files coBoundBy0.txt, coBoundBy1.txt, coboundBy2.txt, ...\\nOr <prefix>.coBoundBy0.txt, <prefix>.coBoundBy1.txt, ..."
    filter: ":XXX-YYY (only analyze peaks within range)"
    coverage: "(returns the total bp covered by each peak file - use \\\"-d given\\\""
    primary_peak_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_venn = "${in_venn}"
    File out_coverage = "${in_coverage}"
  }
}