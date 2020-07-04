version 1.0

task VcfIsec {
  input {
    Boolean? apply_filters
    Boolean? complement
    Boolean? debug
    Boolean? force
    Boolean? one_file_only
    Boolean? n_files
    File? prefix
    String? regions
    Boolean? tab
    Int? win
  }
  command <<<
    vcf-isec \
      ~{true="--apply-filters" false="" apply_filters} \
      ~{true="--complement" false="" complement} \
      ~{true="--debug" false="" debug} \
      ~{true="--force" false="" force} \
      ~{true="--one-file-only" false="" one_file_only} \
      ~{true="--nfiles" false="" n_files} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(regions) then ("--regions " +  '"' + regions + '"') else ""} \
      ~{true="--tab" false="" tab} \
      ~{if defined(win) then ("--win " +  '"' + win + '"') else ""}
  >>>
  parameter_meta {
    apply_filters: "Ignore lines where FILTER column is anything else than PASS or '.'"
    complement: "Output positions present in the first file but missing from the other files."
    debug: "Debugging information"
    force: "Continue even if the script complains about differing columns, VCF versions, etc."
    one_file_only: "Print only entries from the left-most file. Without -o, all unique positions will be printed."
    n_files: "[+-=]<int>             Output positions present in this many (=), this many or more (+), or this many or fewer (-) files."
    prefix: "If present, multiple files will be created with all possible isec combinations. (Suitable for Venn Diagram analysis.)"
    regions: "Do only the given regions (comma-separated list or one region per line in a file)."
    tab: "<chr:pos:file>            Tab-delimited file with indexes of chromosome and position columns. (1-based indexes)"
    win: "In repetitive sequences, the same indel can be called at different positions. Consider records this far apart as matching (be it a SNP or an indel)."
  }
}