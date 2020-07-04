version 1.0

task Samsplit {
  input {
    Boolean? write_output_files
    String? emit_only_records
    File? write_selected_records
    String? discard_reads_less
    String? compress_output_files
    String? option
  }
  command <<<
    samsplit \
      ~{option} \
      ~{true="-b" false="" write_output_files} \
      ~{if defined(emit_only_records) then ("-f " +  '"' + emit_only_records + '"') else ""} \
      ~{if defined(write_selected_records) then ("-o " +  '"' + write_selected_records + '"') else ""} \
      ~{if defined(discard_reads_less) then ("-q " +  '"' + discard_reads_less + '"') else ""} \
      ~{if defined(compress_output_files) then ("-z " +  '"' + compress_output_files + '"') else ""}
  >>>
  parameter_meta {
    write_output_files: "Write output files in BAM format"
    emit_only_records: "Emit only alignment records matching FLAGS"
    write_selected_records: "Write all selected records to FILE, in addition to splitting"
    discard_reads_less: "Discard reads with mapping quality less than NUM"
    compress_output_files: "Compress output files at level NUM (default for BAM; none for SAM)"
    option: ""
  }
}