version 1.0

task Blocksplit {
  input {
    File? input_file
    File? arg_write_file
    Boolean? arg_use_regionstraversal
    Boolean? targetsstreaming_whole_file
    Boolean? arg_location_subset
    Boolean? arg_maximum_number_records
    Boolean? arg_print_message
    Boolean? arg_overlap_window
    Boolean? arg_maximum_number_blocks
    Boolean? arg_minimum_number
    Boolean? arg_apply_filtering
    String? verbose
  }
  command <<<
    blocksplit \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if (arg_write_file) then "-o" else ""} \
      ~{if (arg_use_regionstraversal) then "-R" else ""} \
      ~{if (targetsstreaming_whole_file) then "-T" else ""} \
      ~{if (arg_location_subset) then "-l" else ""} \
      ~{if (arg_maximum_number_records) then "-L" else ""} \
      ~{if (arg_print_message) then "-m" else ""} \
      ~{if (arg_overlap_window) then "-w" else ""} \
      ~{if (arg_maximum_number_blocks) then "-b" else ""} \
      ~{if (arg_minimum_number) then "-v" else ""} \
      ~{if (arg_apply_filtering) then "-f" else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_file: "The input VCF/BCF file(s) (use file:sample to\\nspecify a sample)"
    arg_write_file: "[ --output ] arg        Write a bed file giving the locations of\\noverlapping blocks (use - for stdout)."
    arg_use_regionstraversal: "[ --regions ] arg       Use a bed file for getting a subset of regions\\n(traversal via tabix)."
    targetsstreaming_whole_file: "[ --targets ] arg       Use a bed file for getting a subset of targets\\n(streaming the whole file, ignoring things outside\\nthe bed regions)."
    arg_location_subset: "[ --location ] arg      The location / subset."
    arg_maximum_number_records: "[ --limit-records ] arg Maximum number of records to process"
    arg_print_message: "[ --message-every ] arg Print a message every N records."
    arg_overlap_window: "[ --window ] arg        Overlap window length."
    arg_maximum_number_blocks: "[ --nblocks ] arg       Maximum number of blocks to break into (32)."
    arg_minimum_number: "[ --nvars ] arg         Minimum number of variants per block (100)."
    arg_apply_filtering: "[ --apply-filters ] arg Apply filtering in VCF."
    verbose: "Verbose output."
  }
  output {
    File out_stdout = stdout()
    File out_arg_write_file = "${in_arg_write_file}"
  }
}