version 1.0

task BreakBlocks {
  input {
    File? region_file
    String? ref
    Boolean? exclude_off_target
    Boolean? include_variants
  }
  command <<<
    break_blocks \
      ~{if defined(region_file) then ("--region-file " +  '"' + region_file + '"') else ""} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if (exclude_off_target) then "--exclude-off-target" else ""} \
      ~{if (include_variants) then "--include-variants" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    region_file: "A bed file specifying regions where call blocks should\\nbe broken into individual positions (required)"
    ref: "samtools reference sequence (required)"
    exclude_off_target: "Don't output off-target vcf records. 'targeted' records\\ninclude all those intersecting the input region plus\\nany optionally included types specified below (default:\\noutput all records)"
    include_variants: "Add all variant calls to the targeted record set (only\\napplies when exclude-off-target is used)"
  }
  output {
    File out_stdout = stdout()
  }
}