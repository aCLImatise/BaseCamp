version 1.0

task BreakBlocks {
  input {
    String? region_file
    String? ref
    Boolean? exclude_off_target
    Boolean? include_variants
  }
  command <<<
    break_blocks \
      ~{if defined(region_file) then ("--region-file " +  '"' + region_file + '"') else ""} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{true="--exclude-off-target" false="" exclude_off_target} \
      ~{true="--include-variants" false="" include_variants}
  >>>
  parameter_meta {
    region_file: "A bed file specifying regions where call blocks should  be broken into individual positions (required)"
    ref: "samtools reference sequence (required)"
    exclude_off_target: "Don't output off-target vcf records. 'targeted' records include all those intersecting the input region plus  any optionally included types specified below (default: output all records)"
    include_variants: "Add all variant calls to the targeted record set (only  applies when exclude-off-target is used)"
  }
}