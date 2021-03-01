version 1.0

task DrdiscoClassify {
  input {
    Boolean? only_valid
    File? blacklist_regions
    String? blacklist_junctions
    Int? min_chim_overhang
    Boolean? ff_pe
    String table_input_file
    String table_output_file
  }
  command <<<
    dr_disco classify \
      ~{table_input_file} \
      ~{table_output_file} \
      ~{if (only_valid) then "--only-valid" else ""} \
      ~{if defined(blacklist_regions) then ("--blacklist-regions " +  '"' + blacklist_regions + '"') else ""} \
      ~{if defined(blacklist_junctions) then ("--blacklist-junctions " +  '"' + blacklist_junctions + '"') else ""} \
      ~{if defined(min_chim_overhang) then ("--min-chim-overhang " +  '"' + min_chim_overhang + '"') else ""} \
      ~{if (ff_pe) then "--ffpe" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    only_valid: "Only return results marked as 'valid'"
    blacklist_regions: "Blacklist these regions (BED file)"
    blacklist_junctions: "Blacklist these region-to-region junctions\\n(custom format, see files in ./share/)"
    min_chim_overhang: "Minimum alignment length on each side of the\\njunction. May need to be set to smaller values\\nfor read lengths smaller than 75bp. Larger\\nvalues are more stringent. [default=50]"
    ff_pe: "Lowers the threshold for the relative amount of\\nmismatches, as often found in FFPE material.\\nNote that enabling this option will\\nconsequently result in more false positives."
    table_input_file: ""
    table_output_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}