version 1.0

task Samsplit {
  input {
    Boolean? write_output_files
    String? emit_only_alignment
    File? write_selected_records
    Int? discard_reads_less
    Int? compress_output_files
  }
  command <<<
    samsplit \
      ~{if (write_output_files) then "-b" else ""} \
      ~{if defined(emit_only_alignment) then ("-f " +  '"' + emit_only_alignment + '"') else ""} \
      ~{if defined(write_selected_records) then ("-o " +  '"' + write_selected_records + '"') else ""} \
      ~{if defined(discard_reads_less) then ("-q " +  '"' + discard_reads_less + '"') else ""} \
      ~{if defined(compress_output_files) then ("-z " +  '"' + compress_output_files + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    write_output_files: "Write output files in BAM format"
    emit_only_alignment: "Emit only alignment records matching FLAGS"
    write_selected_records: "Write all selected records to FILE, in addition to splitting"
    discard_reads_less: "Discard reads with mapping quality less than NUM"
    compress_output_files: "Compress output files at level NUM (default for BAM; none for SAM)"
  }
  output {
    File out_stdout = stdout()
  }
}