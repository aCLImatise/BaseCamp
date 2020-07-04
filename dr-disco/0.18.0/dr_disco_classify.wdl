version 1.0

task DrDiscoClassify {
  input {
    Boolean? only_valid
    String? blacklist_regions
    String? blacklist_junctions
    Int? min_chim_overhang
    Boolean? ff_pe
    String table_input_file
    String table_output_file
  }
  command <<<
    dr-disco classify \
      ~{table_input_file} \
      ~{table_output_file} \
      ~{true="--only-valid" false="" only_valid} \
      ~{if defined(blacklist_regions) then ("--blacklist-regions " +  '"' + blacklist_regions + '"') else ""} \
      ~{if defined(blacklist_junctions) then ("--blacklist-junctions " +  '"' + blacklist_junctions + '"') else ""} \
      ~{if defined(min_chim_overhang) then ("--min-chim-overhang " +  '"' + min_chim_overhang + '"') else ""} \
      ~{true="--ffpe" false="" ff_pe}
  >>>
  parameter_meta {
    only_valid: "Only return results marked as 'valid'"
    blacklist_regions: "Blacklist these regions (BED file)"
    blacklist_junctions: "Blacklist these region-to-region junctions (custom format, see files in ./share/)"
    min_chim_overhang: "Minimum alignment length on each side of the junction. May need to be set to smaller values for read lengths smaller than 75bp. Larger values are more stringent. [default=50]"
    ff_pe: "Lowers the threshold for the relative amount of mismatches, as often found in FFPE material. Note that enabling this option will consequently result in more false positives."
    table_input_file: ""
    table_output_file: ""
  }
}