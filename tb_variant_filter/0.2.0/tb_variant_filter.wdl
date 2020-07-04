version 1.0

task TbVariantFilter {
  input {
    Boolean? close_to_in_del_filter
    String? in_del_window_size
    Boolean? min_percentage_alt_filter
    Int? min_percentage_alt
    Boolean? min_depth_filter
    Int? min_depth
    Boolean? snv_only_filter
    String? region_filter
  }
  command <<<
    tb_variant_filter \
      ~{true="--close_to_indel_filter" false="" close_to_in_del_filter} \
      ~{if defined(in_del_window_size) then ("--indel_window_size " +  '"' + in_del_window_size + '"') else ""} \
      ~{true="--min_percentage_alt_filter" false="" min_percentage_alt_filter} \
      ~{if defined(min_percentage_alt) then ("--min_percentage_alt " +  '"' + min_percentage_alt + '"') else ""} \
      ~{true="--min_depth_filter" false="" min_depth_filter} \
      ~{if defined(min_depth) then ("--min_depth " +  '"' + min_depth + '"') else ""} \
      ~{true="--snv_only_filter" false="" snv_only_filter} \
      ~{if defined(region_filter) then ("--region_filter " +  '"' + region_filter + '"') else ""}
  >>>
  parameter_meta {
    close_to_in_del_filter: "Mask out single nucleotide variants that are too close to indels"
    in_del_window_size: "Window around indel to mask out (mask this number of bases upstream/downstream from the indel. Requires -I option to selected)"
    min_percentage_alt_filter: "Mask out variants with less than a given percentage variant allele at this site"
    min_percentage_alt: "Variants with less than this percentage variants at a site will be masked out"
    min_depth_filter: "Mask out variants with less than a given depth of reads"
    min_depth: "Variants at sites with less than this depth of reads will be masked out"
    snv_only_filter: "Mask out variants that are not SNVs"
    region_filter: ""
  }
}