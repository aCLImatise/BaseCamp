version 1.0

task Blocksplit {
  input {
    String? input_file
    Boolean? arg_write_file
    Boolean? arg_use_regions
    Boolean? arg_use_targets
    Boolean? arg_location_subset
    Boolean? arg_maximum_number_records
    Boolean? arg_print_message
    Boolean? arg_overlap_window
    Boolean? arg_maximum_number_break
    Boolean? arg_minimum_number
    Boolean? arg_apply_filtering
    String? verbose
  }
  command <<<
    blocksplit \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{true="-o" false="" arg_write_file} \
      ~{true="-R" false="" arg_use_regions} \
      ~{true="-T" false="" arg_use_targets} \
      ~{true="-l" false="" arg_location_subset} \
      ~{true="-L" false="" arg_maximum_number_records} \
      ~{true="-m" false="" arg_print_message} \
      ~{true="-w" false="" arg_overlap_window} \
      ~{true="-b" false="" arg_maximum_number_break} \
      ~{true="-v" false="" arg_minimum_number} \
      ~{true="-f" false="" arg_apply_filtering} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""}
  >>>
  parameter_meta {
    input_file: "The input VCF/BCF file(s) (use file:sample to  specify a sample)"
    arg_write_file: "[ --output ] arg        Write a bed file giving the locations of  overlapping blocks (use - for stdout)."
    arg_use_regions: "[ --regions ] arg       Use a bed file for getting a subset of regions  (traversal via tabix)."
    arg_use_targets: "[ --targets ] arg       Use a bed file for getting a subset of targets  (streaming the whole file, ignoring things outside the bed regions)."
    arg_location_subset: "[ --location ] arg      The location / subset."
    arg_maximum_number_records: "[ --limit-records ] arg Maximum number of records to process"
    arg_print_message: "[ --message-every ] arg Print a message every N records."
    arg_overlap_window: "[ --window ] arg        Overlap window length."
    arg_maximum_number_break: "[ --nblocks ] arg       Maximum number of blocks to break into (32)."
    arg_minimum_number: "[ --nvars ] arg         Minimum number of variants per block (100)."
    arg_apply_filtering: "[ --apply-filters ] arg Apply filtering in VCF."
    verbose: "Verbose output."
  }
}