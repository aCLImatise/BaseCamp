version 1.0

task TbVariantFilter {
  input {
    String? region_filter
    Boolean? close_to_in_del_filter
    Int? in_del_window_size
    Boolean? min_percentage_alt_filter
    Int? min_percentage_alt
    Boolean? min_depth_filter
    Int? min_depth
    Boolean? snv_only_filter
  }
  command <<<
    tb_variant_filter \
      ~{if defined(region_filter) then ("--region_filter " +  '"' + region_filter + '"') else ""} \
      ~{if (close_to_in_del_filter) then "--close_to_indel_filter" else ""} \
      ~{if defined(in_del_window_size) then ("--indel_window_size " +  '"' + in_del_window_size + '"') else ""} \
      ~{if (min_percentage_alt_filter) then "--min_percentage_alt_filter" else ""} \
      ~{if defined(min_percentage_alt) then ("--min_percentage_alt " +  '"' + min_percentage_alt + '"') else ""} \
      ~{if (min_depth_filter) then "--min_depth_filter" else ""} \
      ~{if defined(min_depth) then ("--min_depth " +  '"' + min_depth + '"') else ""} \
      ~{if (snv_only_filter) then "--snv_only_filter" else ""}
  >>>
  parameter_meta {
    region_filter: ""
    close_to_in_del_filter: "Mask out single nucleotide variants that are too close\\nto indels"
    in_del_window_size: "Window around indel to mask out (mask this number of\\nbases upstream/downstream from the indel. Requires -I\\noption to selected)"
    min_percentage_alt_filter: "Mask out variants with less than a given percentage\\nvariant allele at this site"
    min_percentage_alt: "Variants with less than this percentage variants at a\\nsite will be masked out"
    min_depth_filter: "Mask out variants with less than a given depth of\\nreads"
    min_depth: "Variants at sites with less than this depth of reads\\nwill be masked out"
    snv_only_filter: "Mask out variants that are not SNVs"
  }
  output {
    File out_stdout = stdout()
  }
}