version 1.0

task Bgzip {
  input {
    Boolean? write_keep_files
    Boolean? decompress
    Boolean? overwrite_files_asking
    Int? decompress_virtual_file
    Int? decompress_int_bytes
    File? file
  }
  command <<<
    bgzip \
      ~{file} \
      ~{if (write_keep_files) then "-c" else ""} \
      ~{if (decompress) then "-d" else ""} \
      ~{if (overwrite_files_asking) then "-f" else ""} \
      ~{if defined(decompress_virtual_file) then ("-b " +  '"' + decompress_virtual_file + '"') else ""} \
      ~{if defined(decompress_int_bytes) then ("-s " +  '"' + decompress_int_bytes + '"') else ""}
  >>>
  parameter_meta {
    write_keep_files: "write on standard output, keep original files unchanged"
    decompress: "decompress"
    overwrite_files_asking: "overwrite files without asking"
    decompress_virtual_file: "decompress at virtual file pointer INT"
    decompress_int_bytes: "decompress INT bytes in the uncompressed file"
    file: ""
  }
  output {
    File out_stdout = stdout()
  }
}