version 1.0

task CombpPeaks {
  input {
    Int? dist
    String? seed
    Int? threshold
    Boolean? invert
    Int? column_number_containing
    String find
    String peaks
    String or
    String troughs
    String in
    String sorted
    String bed
    String files
  }
  command <<<
    comb_p peaks \
      ~{find} \
      ~{peaks} \
      ~{or} \
      ~{troughs} \
      ~{in} \
      ~{sorted} \
      ~{bed} \
      ~{files} \
      ~{if defined(dist) then ("--dist " +  '"' + dist + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if (invert) then "--invert" else ""} \
      ~{if defined(column_number_containing) then ("-c " +  '"' + column_number_containing + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    dist: "Maximum dist to skip before finding a seed/thresh\\nvalue. If this number is exceeded, the region is\\nended."
    seed: "A value must be at least this large/small in order to\\nseed a region."
    threshold: "After seeding, a value of at least this number can\\nextend a region."
    invert: "by default, the test is for a value less-than seed or\\nthresh--e.g. for p-values. If this flag is specified,\\nthe test is for greater-than--e.g. for scores or\\n-log10(p-values)"
    column_number_containing: "column number containing the value for which to find\\npeaks.\\n"
    find: ""
    peaks: ""
    or: ""
    troughs: ""
    in: ""
    sorted: ""
    bed: ""
    files: ""
  }
  output {
    File out_stdout = stdout()
  }
}