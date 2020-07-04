version 1.0

task HtsboxBgzip {
  input {
    Boolean? write_standard_output
    Boolean? decompress
    Boolean? overwrite_files_asking
    Int? decompress_virtual_file
    Int? decompress_int_bytes
    String b_gzip
    File? file
  }
  command <<<
    htsbox bgzip \
      ~{b_gzip} \
      ~{file} \
      ~{true="-c" false="" write_standard_output} \
      ~{true="-d" false="" decompress} \
      ~{true="-f" false="" overwrite_files_asking} \
      ~{if defined(decompress_virtual_file) then ("-b " +  '"' + decompress_virtual_file + '"') else ""} \
      ~{if defined(decompress_int_bytes) then ("-s " +  '"' + decompress_int_bytes + '"') else ""}
  >>>
  parameter_meta {
    write_standard_output: "write on standard output, keep original files unchanged"
    decompress: "decompress"
    overwrite_files_asking: "overwrite files without asking"
    decompress_virtual_file: "decompress at virtual file pointer INT"
    decompress_int_bytes: "decompress INT bytes in the uncompressed file"
    b_gzip: ""
    file: ""
  }
}