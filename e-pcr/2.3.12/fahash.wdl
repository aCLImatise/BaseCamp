version 1.0

task Fahash {
  input {
    File? print_word_usage
    File? build_tables_hashfile
    Int? set_word_size
    String? set_discontiguity_building
    Boolean? skip_repeats_building
    Int? max_set_watermarks
    Int? set_size_version
    Int? use_format_version
    File? write_output_file
    Boolean? hv
  }
  command <<<
    fahash \
      ~{if defined(print_word_usage) then ("-T " +  '"' + print_word_usage + '"') else ""} \
      ~{if defined(build_tables_hashfile) then ("-b " +  '"' + build_tables_hashfile + '"') else ""} \
      ~{if defined(set_word_size) then ("-w " +  '"' + set_word_size + '"') else ""} \
      ~{if defined(set_discontiguity_building) then ("-f " +  '"' + set_discontiguity_building + '"') else ""} \
      ~{if (skip_repeats_building) then "-k" else ""} \
      ~{if defined(max_set_watermarks) then ("-F " +  '"' + max_set_watermarks + '"') else ""} \
      ~{if defined(set_size_version) then ("-c " +  '"' + set_size_version + '"') else ""} \
      ~{if defined(use_format_version) then ("-v " +  '"' + use_format_version + '"') else ""} \
      ~{if defined(write_output_file) then ("-o " +  '"' + write_output_file + '"') else ""} \
      ~{if (hv) then "-hV" else ""}
  >>>
  parameter_meta {
    print_word_usage: "Print word usage statistics for hash-file"
    build_tables_hashfile: "Build hash tables (hash-file) from sequence files,"
    set_word_size: "Set word size when building hash tables"
    set_discontiguity_building: "Set discontiguity when building hash tables"
    skip_repeats_building: "Skip repeats when building hash-file"
    max_set_watermarks: ",max      Set watermarks for fragment size (in Mb) (version 1 only)"
    set_size_version: "Set cache size (version 2 only)"
    use_format_version: "Use format version (1|2, 2 is default)"
    write_output_file: "Write output to file `outfile'"
    hv: ""
  }
  output {
    File out_stdout = stdout()
    File out_write_output_file = "${in_write_output_file}"
  }
}